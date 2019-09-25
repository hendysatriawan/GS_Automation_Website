*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
*** Variables ***
${judul_forum}    Test Buat Forum
${detail_pertanyaan}    baiknya saya tanya apa ya.?
${cari_forum}   mata merah

*** Keywords ***
Masuk Ke Forum
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Forum']   ${timeout}
  Sleep    2s
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Forum']
  # masuk ke halaman forum
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Forum')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[1]//a[@title='Mulai Diskusi']   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[1]//input[@name='keyword']    ${timeout}

Buat Forum
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='content']/section[1]//a[@title='Mulai Diskusi']   ${timeout}
  Click Element    //div[@id='content']/section[1]//a[@title='Mulai Diskusi']
  # masuk halaman create Forum
  #pilih topik
  Wait Until Element Is Visible    //span[@id='select2-data_tag-container']   ${timeout}
  Scroll Element Into View    //div[@id='content']/section//form[@action='https://www.guesehat.com/forum/tanya']/div[4]/label[@class='label']
  Wait Until Element Is Visible    //span[@id='select2-data_tag-container']     ${timeout}
  Click Element    //span[@id='select2-data_tag-container']
  Wait Until Element Is Visible    //ul[@id='select2-data_tag-results']/li[3]   ${timeout}
  Click Element    //ul[@id='select2-data_tag-results']/li[3]
  # input judul
  Wait Until Element Is Visible    //div[@id='content']/section//form[@action='https://www.guesehat.com/forum/tanya']//input[@name='title']   ${timeout}
  Input Text    //div[@id='content']/section//form[@action='https://www.guesehat.com/forum/tanya']//input[@name='title']    ${judul_forum}
  # input Detail Pertanyaan
  Scroll Element Into View    //textarea[@id='write-content']
  Wait Until Element Is Visible    //textarea[@id='write-content']    ${timeout}
  Input Text    //textarea[@id='write-content']    ${detail_pertanyaan}
  # kirim Pertanyaan ke
  Scroll Element Into View    //div[@id='content']/section//form[@action='https://www.guesehat.com/forum/tanya']//div[@class='dirpage-control-field-cont forumsbt-select-cont']/span//span[@role='combobox']/ul[@class='select2-selection__rendered']//input[@role='textbox']
  Wait Until Element Is Visible    //div[@id='content']/section//form[@action='https://www.guesehat.com/forum/tanya']//div[@class='dirpage-control-field-cont forumsbt-select-cont']/span//span[@role='combobox']/ul[@class='select2-selection__rendered']//input[@role='textbox']     ${timeout}
  Click Element    //div[@id='content']/section//form[@action='https://www.guesehat.com/forum/tanya']//div[@class='dirpage-control-field-cont forumsbt-select-cont']/span//span[@role='combobox']/ul[@class='select2-selection__rendered']//input[@role='textbox']
  Wait Until Element Is Visible    //ul[@id='select2-specialist_tag-results']/li[3]   ${timeout}
  Click Element    //ul[@id='select2-specialist_tag-results']/li[3]
  # pilih batal
  Scroll Element Into View    //div[@id='content']/section//form[@action='https://www.guesehat.com/forum/tanya']//a[@href='https://www.guesehat.com/forum']
  Click Element    //div[@id='content']/section//form[@action='https://www.guesehat.com/forum/tanya']//a[@href='https://www.guesehat.com/forum']
  # cek halaman forum
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Forum')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[1]//a[@title='Mulai Diskusi']   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[1]//input[@name='keyword']    ${timeout}

Cari Forum
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='content']/section[1]//input[@name='keyword']    ${timeout}
  Input Text    //div[@id='content']/section[1]//input[@name='keyword']    ${cari_forum}
  # masuk forum yang dicari
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/forum']    ${timeout}
  Scroll Element Into View    //ul[@id='questionlist']//a[@title='${cari_forum}']
  Wait Until Element Is Visible    //ul[@id='questionlist']//a[@title='${cari_forum}']    ${timeout}
  Click Element    //ul[@id='questionlist']//a[@title='${cari_forum}']
  # cek detail forum
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Forum')]    ${timeout}
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'mata merah')]    ${timeout}
  Go Back
  # hapus filter
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/forum']    ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/forum']

Pilih Topik
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='topiclist']/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //div[@id='topiclist']/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']
  # cek berhasil pilih topik
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/forum']    ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/forum']

Buka View All
  Sleep    2s
  Scroll Element Into View    //div[@id='content']/section[1]//a[@href='https://www.guesehat.com/forum/filter?sort=popular&keyword=&topid=']
  Wait Until Element Is Visible    //div[@id='content']/section[1]//a[@href='https://www.guesehat.com/forum/filter?sort=popular&keyword=&topid=']   ${timeout}
  Click Element    //div[@id='content']/section[1]//a[@href='https://www.guesehat.com/forum/filter?sort=popular&keyword=&topid=']
  # cek halaman setelah klik view all
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Forum')]   ${timeout}
  Scroll Element Into View    //div[@id='content']/section//a[@href='javascript:;']
  Click Element    //div[@id='content']/section//a[@href='javascript:;']
  Scroll Element Into View    //div[@id='content']/section//a[@href='javascript:;']
