*** Setting ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
*** Variables ***
${pass_register}  1234567


*** Keywords ***
Register Akun
  Wait Until Page Contains Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']
  # masuk ke halaman register
  Wait Until Page Contains Element    //button[@name='form_submit']   ${timeout}
  Wait Until Page Contains Element    //div[@id='content']/section[@class='formpage']/div[@class='formpage-split']//a[@href='https://www.guesehat.com/member?mode=daftar&destination=member']
  Click Element    //div[@id='content']/section[@class='formpage']/div[@class='formpage-split']//a[@href='https://www.guesehat.com/member?mode=daftar&destination=member']
  # create data dummy
  # create first name
  ${firstname}=    First Name Female
  ${firstname}=   Set Variable    test ${firstname}
  Log    ${firstname}
  # create last name
  ${lastname}=  Last Name Female
  Log    ${lastname}
  # create email yang belum ada agar muncul tombol daftar
  ${count}=  Numerify   text=###
  ${emailnew}=  Set Variable    ${lastname}test${count}@yopmail.com
  Convert To Lowercase    ${emailnew}
  Log    ${emailnew}
  Set Global Variable    ${emailnew}
  # input nama depan
  Wait Until Page Contains Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='first_name']    ${timeout}
  Input Text    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='first_name']    ${firstname}
  # input nama belakang
  Wait Until Page Contains Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='last_name']   ${timeout}
  Input Text    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='last_name']    ${lastname}
  # alamat email
  Wait Until Page Contains Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='email']   ${timeout}
  Input Text    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='email']    ${emailnew}
  # input password
  Wait Until Page Contains Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='password']    ${timeout}
  Input Text    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='password']    ${pass_register}
  # click newsletter
  Wait Until Page Contains Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']/li[4]/div[@class='rcbgroup']/div/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']/li[4]/div[@class='rcbgroup']/div/div[@class='rcb-cont']/label[@class='cbdummy']
  # click saya setuju
  Wait Until Page Contains Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']/li[5]/div[@class='rcbgroup']/div/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']/li[5]/div[@class='rcbgroup']/div/div[@class='rcb-cont']/label[@class='cbdummy']
  # click syarat ketentuan
  Wait Until Page Contains Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//a[@href='https://www.guesehat.com/syarat-dan-ketentuan']   ${timeout}
  Click Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//a[@href='https://www.guesehat.com/syarat-dan-ketentuan']
  Wait Until Page Contains Element    //div[@id='content']/article[@class='article']//h1[@class='footerpage-head-title']    ${timeout}
  Go Back
  # input password lagi
  Wait Until Page Contains Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='password']    ${timeout}
  Input Text    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']/ul[@class='form-list']//input[@name='password']    ${pass_register}
  # klik tombol register
  Wait Until Page Contains Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']//button[@name='form_submit']   ${timeout}
  Click Element    //div[@id='register']/form[@action='https://www.guesehat.com/member/register']//button[@name='form_submit']
  # cek berhasil register
  Wait Until Page Contains Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[8]/a[@href='javascript:;']//img[@alt='${firstname} ${lastname}']   ${timeout}
  Wait Until Page Does Not Contain Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']
