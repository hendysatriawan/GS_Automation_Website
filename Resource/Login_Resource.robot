*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${email_login}    hendy.gs@yopmail.com
${pass_login}   1234567

*** Keywords ***
Login Akun Guesehat
  Wait Until Page Contains Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']
  Wait Until Page Contains Element    //button[contains(text(),"Login")]
  # input email
  Wait Until Page Contains Element    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//input[@name='email']   ${timeout}
  Input Text    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//input[@name='email']    ${email_login}
  # input password
  Wait Until Page Contains Element    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//input[@name='password']    ${timeout}
  Input Text    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//input[@name='password']    ${pass_login}
  # klik login
  Click Element    //button[contains(text(),"Login")]
  Sleep    3s

Forgot Password
  Wait Until Page Contains Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']
  # masuk ke halaman register
  Wait Until Page Contains Element    //button[@name='form_submit']   ${timeout}
  Wait Until Page Contains Element    //div[@id='content']/section[@class='formpage']/div[@class='formpage-split']//a[@href='https://www.guesehat.com/member?mode=daftar&destination=member']
  Click Element    //div[@id='content']/section[@class='formpage']/div[@class='formpage-split']//a[@href='https://www.guesehat.com/member?mode=daftar&destination=member']
  # lupa password
  Wait Until Page Contains Element    //div[@id='content']/section[@class='formpage']/div[@class='formpage-split']//a[@href='https://www.guesehat.com/member?mode=lupa&destination=member']    ${timeout}
  Click Element    //div[@id='content']/section[@class='formpage']/div[@class='formpage-split']//a[@href='https://www.guesehat.com/member?mode=lupa&destination=member']
  Wait Until Page Contains Element    //button[contains(text(),"Send")]   ${timeout}
  # input email
  Wait Until Page Contains Element    //div[@id='forgot-password']/form[@action='https://www.guesehat.com/member/forgot']/ul[@class='form-list']//input[@name='email']    ${timeout}
  Input Text    //div[@id='forgot-password']/form[@action='https://www.guesehat.com/member/forgot']/ul[@class='form-list']//input[@name='email']    ${email_login}
  Click Element    //button[contains(text(),"Send")]
  # cek berhasil forgot
  Sleep    10s
  # buka new tab
  # Execute Javascript   window.open('http://www.yopmail.com/en/');

Login Google
  Wait Until Page Contains Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']
  # masuk ke halaman login
  Scroll Element Into View    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//div[@class='row']/div[2]/a[@href='javascript:;']
  Wait Until Page Contains Element    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//div[@class='row']/div[2]/a[@href='javascript:;']   ${timeout}
  Click Element    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//div[@class='row']/div[2]/a[@href='javascript:;']
  # cek berhasil diklik
  Sleep    4s

Login Facebook
  Wait Until Page Contains Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']
  # masuk ke halaman login
  Scroll Element Into View    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//div[@class='row']/div[1]/a[@href='javascript:;']
  Wait Until Page Contains Element    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//div[@class='row']/div[1]/a[@href='javascript:;']   ${timeout}
  Click Element    //div[@id='login']/form[@action='https://www.guesehat.com/member/login']/ul[@class='form-list']//div[@class='row']/div[1]/a[@href='javascript:;']
  # cek berhasil diklik
  Sleep    4s
