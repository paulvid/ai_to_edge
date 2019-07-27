from picamera import PiCamera
from time import sleep

camera = PiCamera()

camera.start_preview()
sleep(0)
camera.capture('/home/pi/image.jpg')
camera.stop_preview()