*** Setting ***
Library    SeleniumLibrary


*** Variables ***
${link}    https://www.guesehat.com/
${browser}    Chrome
${implicit_wait}    Set Browser Implicit Wait    10s
${timeout}    30s

*** Keywords ***
Buka Browser Guesehat
  ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
  Call Method     ${options}    add_argument    --disable-notifications
  ${driver}=    Create Webdriver    Chrome    options=${options}
  Go To    ${link}
  Maximize Browser Window
  Wait Until Page Contains Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']
  Wait Until Page Contains Element    //input[@id='h_keyword']
