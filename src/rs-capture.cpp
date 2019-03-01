// librealsense
#include "librealsense2/rs.hpp"
#include "librealsense2/hpp/rs_internal.hpp"
// OpenCV
#include <opencv2/opencv.hpp>

using namespace cv;
int main(int argc, char * argv[]) try
{
    rs2::log_to_console(RS2_LOG_SEVERITY_ERROR);
    // Depth colorizer for pretty visualization of depth data
    rs2::colorizer color_map;
    
    // RealSense pipeline, encapsulating the actual device and sensors
	// At every timestep, the pipeline returns stereo, depth, IR and IMU data.
    rs2::pipeline pipe;
	rs2::config cfg;
	
	// Use only depth to save computation time on RealSense. 
	// Small time make Big time. Big time make success.
	cfg.enable_stream(RS2_STREAM_DEPTH, 1280, 720, RS2_FORMAT_Z16, 30);
	
	// Start the pipeline
    pipe.start(cfg);

	const auto window_name = "Depth Stream";
	namedWindow(window_name, WINDOW_AUTOSIZE);

	while (waitKey(1) < 0 && getWindowProperty(window_name, WND_PROP_AUTOSIZE) >= 0)
    {
		rs2::frameset data = pipe.wait_for_frames(); // Wait for next set of frames from the camera
		rs2::frame depth = data.get_depth_frame().apply_filter(color_map);
        
		// Query frame size (width and height)
		const int w = depth.as<rs2::video_frame>().get_width();
		const int h = depth.as<rs2::video_frame>().get_height();

		// Create OpenCV matrix of size (w,h) from the colorized depth data
		Mat image(Size(w, h), CV_8UC3, (void*)depth.get_data(), Mat::AUTO_STEP);
		
		// Update the window with new data
		imshow(window_name, image);
    }

    return EXIT_SUCCESS;
}
catch (const rs2::error & e)
{
    std::cerr << "RealSense error calling " << e.get_failed_function() << "(" << e.get_failed_args() << "):\n    " << e.what() << std::endl;
    return EXIT_FAILURE;
}
catch (const std::exception& e)
{
    std::cerr << e.what() << std::endl;
    return EXIT_FAILURE;
}