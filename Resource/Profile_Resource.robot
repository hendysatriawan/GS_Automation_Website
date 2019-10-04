*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
Resource    ../Resource/Login_Resource.robot
*** Variables ***


*** Keywords ***
Buka List Profile
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[8]/a[@href='javascript:;']//img[@alt='hendy GS']    ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[8]/a[@href='javascript:;']//img[@alt='hendy GS']
  # cek list menu profile
  Wait Until Element Is Visible    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/hendy-gs']     ${timeout}
  Wait Until Element Is Visible    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/hadiah-poin']    ${timeout}
  Wait Until Element Is Visible    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/account/setting']    ${timeout}
  Wait Until Element Is Visible    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/account/notification']     ${timeout}
  Wait Until Element Is Visible    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/logout']       ${timeout}

Masuk Ke Profile Saya
  Buka List Profile
  Wait Until Element Is Visible    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/hendy-gs']     ${timeout}
  Click Element    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/hendy-gs']
  # masuk halaman profile saya
  Wait Until Element Is Visible    //div[@id='content']/section//p[.='User']    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/tulisartikel/create']      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section/div//a[@href='https://www.guesehat.com/forum/tanya']      ${timeout}

Masuk Ke Poin
  Buka List Profile
  Wait Until Element Is Visible    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/hadiah-poin']      ${timeout}
  Click Element    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/hadiah-poin']
  # cek halaman Poin
  Wait Until Element Is Visible    //div[@id='navbar9']/ul[@class='nav navbar-nav navbar-right']//button[@type='button']      ${timeout}
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Hadiah Poin GueSehat')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='navbar9']/ul[@class='nav navbar-nav navbar-right']//a[@role='button']     ${timeout}

Masuk Ke Pengaturan
  Buka List Profile
  Wait Until Element Is Visible    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/account/setting']      ${timeout}
  Click Element    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/account/setting']
  # masuk ke halaman Pengaturan
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Profil')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-profile']/form[1]//button[@name='form_cover']      ${timeout}
  # masuk ke tulis artikel
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/tulisartikel']      ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/tulisartikel']
  # cek halaman tulis artikel
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Artikel')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-email']//a[@href='https://www.guesehat.com/tulisartikel/create']     ${timeout}
  Wait Until Element Is Visible    //form[@id='filterugcform']//a[@href='javascript:void(0)']   ${timeout}
  # masuk notifikasi
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/notification']     ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/notification']
  # cek halaman notifikasi
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Notifikasi')]    ${timeout}
  # masuk ke media sosial link
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/sosmed']     ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/sosmed']
  # cek halaman sosial media link
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Media Sosial Link')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-social']/form[@action='https://www.guesehat.com/account/sosmed']//button[@name='form_submit']      ${timeout}
  # masuk ke akun URL
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/username']     ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/username']
  # cek halaman akun URL
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Akun URL')]     ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-url']/form[@action='https://www.guesehat.com/account/username']/div[2]//input[@name='slug']      ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-url']/form[@action='https://www.guesehat.com/account/username']//button[@name='form_submit']     ${timeout}
  # masuk ke halaman Email
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/email']      ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/email']
  # cek halaman Email
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Email')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-email']/form[@action='https://www.guesehat.com/account/email']//input[@name='email_confirmation']      ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-email']/form[@action='https://www.guesehat.com/account/email']//input[@name='email']     ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-email']/form[@action='https://www.guesehat.com/account/email']//button[@name='form_submit']      ${timeout}
  # masuk ke Kata Sandi
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/password']     ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/account/password']
  # cek halaman kata sandi
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Kata Sandi')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-password']/form[@action='https://www.guesehat.com/account/password']//input[@name='password_confirmation']     ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-password']/form[@action='https://www.guesehat.com/account/password']//input[@name='password']      ${timeout}

Kembali Ke Homepage Dari Profile
  Wait Until Element Is Visible    //div[@id='wrapper-grey']//a[@href='https://www.guesehat.com/']/img[@alt='www.guesehat.com']     ${timeout}
  Click Element    //div[@id='wrapper-grey']//a[@href='https://www.guesehat.com/']/img[@alt='www.guesehat.com']

Masuk Ke Notifikasi
  Buka List Profile
  Click Element    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/account/notification']
  # cek halaman notifikasi
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Notifikasi')]    ${timeout}

Logout
  Buka List Profile
  Click Element    //div[@id='modal-login-member']/ul[@class='submenu-member-list']//a[@href='https://www.guesehat.com/logout']
  # cek berahsil logout
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='https://www.guesehat.com/member']    ${timeout}
