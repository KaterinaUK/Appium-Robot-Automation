# Instagram_Appium_Automation
# Mobile testing 
## Python, Selenium, Robot Framework and Appium (Instagram Example)

This is example how to run appium on local machine to setup Instagram application for Android.
Example is based on BDD Test Scenarios

#### How to prepare the environment:
1. Install and configure Android studio
2. Install python   
3. Install Node JS
4. Install Appium by typing in console: npm install -g appium
5. Install doctor, verify that your system is ok for appium: npm install -g appium-doctor
6. Check your system is ok by running: appium-doctor
7. Install robotframework via: "pip install robotframework"
8. Install robotframework library for appium: pip install robotframework-appiumlibrary
9. To see all libraries that we have: pip list 
10. In console type: adb devices
11. Install Vysor to see your device on the screen and debug it

Create a virtual device with android studio
Uiautomatorviewer or Appium inspector will be used to inspect the elements in the Instagram interface


#### How to run:
To run the robot test you need to go to the project directory called instagram and type: robot -d Output Tests
