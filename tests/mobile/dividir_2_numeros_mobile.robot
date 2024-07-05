# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command

*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Variables ***
${SAUCE_USERNAME}    oauth-d38460244-4a06b    
${REMOTE_URL}    https://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub

*** Test Cases ***
Dividir 2 numeros
    Open Application    ${REMOTE_URL}   
	...    platformName=Android    
	...    appium:platformVersion=9.0    
	...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    
	...    appium:deviceOrientation=portrait    
	...    appium:app=storage:filename=Calculator_8.4 (503542421)_APKPure.apk    
	...    appium:appPackage=com.google.android.calculator    
	...    appium:appActivity=com.android.calculator2.Calculator    
	...    browserName=    
	...    appium:ensureWebviewsHavePages=${True}    
	...    appium:nativeWebScreenshot=${True}    
	# ...    sauce:options=[object Object]    
	...    appium:newCommandTimeout=${3600}    
	...    appium:connectHardwareKeyboard=${True}
    ${btn_numero_8} =    Set Variable     accessibility_id=8
    Click Element    ${btn_numero_8}
    ${btn_dividir} =    Set Variable     accessibility_id=divide
    Click Element    ${btn_dividir}
    ${btn_numero_2} =    Set Variable     accessibility_id=2
    Click Element    ${btn_numero_2}
    ${btn_igual} =    Set Variable     accessibility_id=equals
    Click Element    ${btn_igual}
    ${resultado_dividir} =    Set Variable     id=com.google.android.calculator:id/result_final
    Click Element    ${resultado_dividir}
    ${btn_limpar} =    Set Variable     accessibility_id=clear
    Click Element    ${btn_limpar}