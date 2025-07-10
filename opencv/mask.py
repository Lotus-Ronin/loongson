import cv2
import numpy as np
import argparse

def nothing(x):
    """Callback function for trackbar changes"""
    pass

def main():
    # Create command line argument parser
    parser = argparse.ArgumentParser(description='HSV Color Segmentation Tuner')
    parser.add_argument('--camera', type=int, default=0, help='Camera device ID (default: 0)')
    args = parser.parse_args()

    # Open the camera
    # cap = cv2.VideoCapture(args.camera)
    cap = cv2.VideoCapture(0)
    
    # Check if camera opened successfully
    if not cap.isOpened():
        print(f"Cannot open camera {args.camera}")
        exit()

    # Create windows
    cv2.namedWindow('Original')
    cv2.namedWindow('HSV Mask')
    cv2.namedWindow('Result')

    # Create trackbars
    cv2.createTrackbar('H_MIN', 'HSV Mask', 0, 179, nothing)
    cv2.createTrackbar('H_MAX', 'HSV Mask', 179, 179, nothing)
    cv2.createTrackbar('S_MIN', 'HSV Mask', 0, 255, nothing)
    cv2.createTrackbar('S_MAX', 'HSV Mask', 255, 255, nothing)
    cv2.createTrackbar('V_MIN', 'HSV Mask', 0, 255, nothing)
    cv2.createTrackbar('V_MAX', 'HSV Mask', 255, 255, nothing)
    
    # Morphological operation trackbars
    cv2.createTrackbar('Erode Size', 'HSV Mask', 0, 10, nothing)
    cv2.createTrackbar('Dilate Size', 'HSV Mask', 0, 10, nothing)

    # Set default values - Blue
    cv2.setTrackbarPos('H_MIN', 'HSV Mask', 90)
    cv2.setTrackbarPos('H_MAX', 'HSV Mask', 130)
    cv2.setTrackbarPos('S_MIN', 'HSV Mask', 100)
    cv2.setTrackbarPos('S_MAX', 'HSV Mask', 255)
    cv2.setTrackbarPos('V_MIN', 'HSV Mask', 100)
    cv2.setTrackbarPos('V_MAX', 'HSV Mask', 255)

    print("Controls:")
    print("  - Adjust HSV range using trackbars in HSV Mask window")
    print("  - Press 's' to save current parameters")
    print("  - Press 'q' to exit the program")
    
    # Predefined color presets
    color_presets = {
        'red': ([0, 100, 100], [15, 255, 255]),
        'green': ([40, 100, 100], [80, 255, 255]),
        'blue': ([90, 100, 100], [130, 255, 255]),
        'yellow': ([20, 100, 100], [40, 255, 255]),
    }

    while True:
        # Capture frame-by-frame
        ret, frame = cap.read()
        if not ret:
            print("Can't receive frame (stream end?). Exiting...")
            break

        # Resize frame for better display
        frame = cv2.resize(frame, (640, 480))
        
        # Make a copy of the original frame
        original = frame.copy()
        
        # Convert BGR to HSV
        hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

        # Get current positions of all trackbars
        h_min = cv2.getTrackbarPos('H_MIN', 'HSV Mask')
        h_max = cv2.getTrackbarPos('H_MAX', 'HSV Mask')
        s_min = cv2.getTrackbarPos('S_MIN', 'HSV Mask')
        s_max = cv2.getTrackbarPos('S_MAX', 'HSV Mask')
        v_min = cv2.getTrackbarPos('V_MIN', 'HSV Mask')
        v_max = cv2.getTrackbarPos('V_MAX', 'HSV Mask')
        
        erode_size = cv2.getTrackbarPos('Erode Size', 'HSV Mask')
        dilate_size = cv2.getTrackbarPos('Dilate Size', 'HSV Mask')

        # Create HSV range arrays
        lower = np.array([h_min, s_min, v_min])
        upper = np.array([h_max, s_max, v_max])

        # Create a mask
        mask = cv2.inRange(hsv, lower, upper)

        # Morphological operations
        if erode_size > 0:
            kernel = np.ones((erode_size, erode_size), np.uint8)
            mask = cv2.erode(mask, kernel, iterations=1)
            
        if dilate_size > 0:
            kernel = np.ones((dilate_size, dilate_size), np.uint8)
            mask = cv2.dilate(mask, kernel, iterations=1)

        # Apply the mask
        result = cv2.bitwise_and(frame, frame, mask=mask)

        # Display the resulting frame
        cv2.imshow('Original', original)
        cv2.imshow('HSV Mask', mask)
        cv2.imshow('Result', result)

        # Display current HSV values
        hsv_text = f'H: {h_min}-{h_max}, S: {s_min}-{s_max}, V: {v_min}-{v_max}'
        cv2.putText(original, hsv_text, (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 0), 2)
        
        # Handle keyboard events
        key = cv2.waitKey(1) & 0xFF
        
        # Press 'q' to quit
        if key == ord('q'):
            break
            
        # Press 's' to save current parameters
        elif key == ord('s'):
            print(f"Parameters saved: HSV = [{h_min}, {s_min}, {v_min}] - [{h_max}, {s_max}, {v_max}]")
            print(f"         Erode Size = {erode_size}, Dilate Size = {dilate_size}")
            
        # Color preset hotkeys
        elif key == ord('1'):  # Red
            cv2.setTrackbarPos('H_MIN', 'HSV Mask', color_presets['red'][0][0])
            cv2.setTrackbarPos('H_MAX', 'HSV Mask', color_presets['red'][1][0])
            cv2.setTrackbarPos('S_MIN', 'HSV Mask', color_presets['red'][0][1])
            cv2.setTrackbarPos('S_MAX', 'HSV Mask', color_presets['red'][1][1])
            cv2.setTrackbarPos('V_MIN', 'HSV Mask', color_presets['red'][0][2])
            cv2.setTrackbarPos('V_MAX', 'HSV Mask', color_presets['red'][1][2])
            print("Red preset loaded")
            
        elif key == ord('2'):  # Green
            cv2.setTrackbarPos('H_MIN', 'HSV Mask', color_presets['green'][0][0])
            cv2.setTrackbarPos('H_MAX', 'HSV Mask', color_presets['green'][1][0])
            cv2.setTrackbarPos('S_MIN', 'HSV Mask', color_presets['green'][0][1])
            cv2.setTrackbarPos('S_MAX', 'HSV Mask', color_presets['green'][1][1])
            cv2.setTrackbarPos('V_MIN', 'HSV Mask', color_presets['green'][0][2])
            cv2.setTrackbarPos('V_MAX', 'HSV Mask', color_presets['green'][1][2])
            print("Green preset loaded")
            
        elif key == ord('3'):  # Blue
            cv2.setTrackbarPos('H_MIN', 'HSV Mask', color_presets['blue'][0][0])
            cv2.setTrackbarPos('H_MAX', 'HSV Mask', color_presets['blue'][1][0])
            cv2.setTrackbarPos('S_MIN', 'HSV Mask', color_presets['blue'][0][1])
            cv2.setTrackbarPos('S_MAX', 'HSV Mask', color_presets['blue'][1][1])
            cv2.setTrackbarPos('V_MIN', 'HSV Mask', color_presets['blue'][0][2])
            cv2.setTrackbarPos('V_MAX', 'HSV Mask', color_presets['blue'][1][2])
            print("Blue preset loaded")
            
        elif key == ord('4'):  # Yellow
            cv2.setTrackbarPos('H_MIN', 'HSV Mask', color_presets['yellow'][0][0])
            cv2.setTrackbarPos('H_MAX', 'HSV Mask', color_presets['yellow'][1][0])
            cv2.setTrackbarPos('S_MIN', 'HSV Mask', color_presets['yellow'][0][1])
            cv2.setTrackbarPos('S_MAX', 'HSV Mask', color_presets['yellow'][1][1])
            cv2.setTrackbarPos('V_MIN', 'HSV Mask', color_presets['yellow'][0][2])
            cv2.setTrackbarPos('V_MAX', 'HSV Mask', color_presets['yellow'][1][2])
            print("Yellow preset loaded")

    # When everything done, release the capture
    cap.release()
    cv2.destroyAllWindows()

if __name__ == "__main__":
    main()    