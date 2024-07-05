# This sample code supports Appium Python client >=2.3.0
# pip install Appium-Python-Client
# Then you can paste this into a file and simply run with Python

from appium import webdriver
from appium.options.common.base import AppiumOptions
from appium.webdriver.common.appiumby import AppiumBy

# For W3C actions
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.actions import interaction
from selenium.webdriver.common.actions.action_builder import ActionBuilder
from selenium.webdriver.common.actions.pointer_input import PointerInput

options = AppiumOptions()
options.load_capabilities({
	"platformName": "Android",
	"appium:platformVersion": "9.0",
	"appium:deviceName": "Samsung Galaxy S9 FHD GoogleAPI Emulator",
	"appium:deviceOrientation": "portrait",
	"appium:app": "storage:filename=Calculator_8.4 (503542421)_APKPure.apk",
	"appium:appPackage": "com.google.android.calculator",
	"appium:appActivity": "com.android.calculator2.Calculator",
	"browserName": "",
	"appium:ensureWebviewsHavePages": True,
	"appium:nativeWebScreenshot": True,
	"sauce:options": {"name": "Appium Desktop Session -- Jul 4, 2024 6:33 PM"},
	"appium:newCommandTimeout": 3600,
	"appium:connectHardwareKeyboard": True
})

driver = webdriver.Remote("http://ondemand.us-west-1.saucelabs.com:80/wd/hub", options=options)

el1 = driver.find_element(by=AppiumBy.XPATH, value="//android.widget.ImageButton[@content-desc=\"1\"]")
el1.click()
el2 = driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value="plus")
el2.click()
el3 = driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value="3")
el3.click()
el4 = driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value="equals")
el4.click()
el5 = driver.find_element(by=AppiumBy.ID, value="com.google.android.calculator:id/result_final")
el5.click()

driver.quit()