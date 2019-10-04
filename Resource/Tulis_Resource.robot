*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
Resource    ../Resource/Login_Resource.robot
*** Variables ***
${judul_artikel}    Ini Hanya Untuk Test Saja - Judul
${sumber_foto}    Individu


*** Keywords ***
Lakukan Tulis Artikel
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Tulis Artikel']/span[@class='header-write-text']      ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Tulis Artikel']/span[@class='header-write-text']
  # cek halaman tulis artikel
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Artikel')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='edit-email']//a[@href='https://www.guesehat.com/tulisartikel/create']     ${timeout}
  Wait Until Element Is Visible    //form[@id='filterugcform']//a[@href='javascript:void(0)']   ${timeout}
  # tulis artikel
  Wait Until Element Is Visible    //div[@id='edit-email']//a[@href='https://www.guesehat.com/tulisartikel/create']     ${timeout}
  Click Element    //div[@id='edit-email']//a[@href='https://www.guesehat.com/tulisartikel/create']
  # tulis artikel
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Tulis Artikel')]     ${timeout}
  Wait Until Element Is Visible    //form[@id='ugcform']/div[1]/div[@class='submitpage-body-head-button-cont']/button[1]    ${timeout}
  Wait Until Element Is Visible    //form[@id='ugcform']/div[1]/div[@class='submitpage-body-head-button-cont']/button[2]    ${timeout}
  Wait Until Element Is Visible    //form[@id='ugcform']/div[1]/div[@class='submitpage-body-head-button-cont']/button[3]    ${timeout}
  # pilih kategori
  Wait Until Element Is Visible    //span[@id='select2-data_category-container']    ${timeout}
  Click Element    //span[@id='select2-data_category-container']
  Sleep    2s
  Wait Until Element Is Visible    //ul[@id='select2-data_category-results']/li[1]    ${timeout}
  Click Element    //ul[@id='select2-data_category-results']/li[1]
  # input judul artikel
  Wait Until Element Is Visible    //form[@id='ugcform']//input[@name='title']      ${timeout}
  Input Text    //form[@id='ugcform']//input[@name='title']    ${judul_artikel}
  # upload foto
  # Scroll Element Into View    Xpath=//input[@id='upload']
  # # Wait Until Element Is Visible    Xpath=//input[@id='upload']    ${timeout}
  # Click Element    //input[@id='upload']
  # # upload gambar
  # Choose File    //input[@id='upload']    ../Resource/idea.png
  # sumber foto
  Scroll Element Into View    //form[@id='ugcform']//input[@name='cover_copyright']
  Wait Until Element Is Visible    //form[@id='ugcform']//input[@name='cover_copyright']
  Input Text    //form[@id='ugcform']//input[@name='cover_copyright']    ${sumber_foto}
  # pilih tag
  Scroll Element Into View    //form[@id='ugcform']/div[7]/div[@class='dirpage-control-field-cont forumsbt-select-cont']/span//span[@role='combobox']/ul[@class='select2-selection__rendered']//input[@role='textbox']
