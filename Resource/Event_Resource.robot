*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
*** Variables ***
${judul_event}    Dampak Gadget Pada Kesehatan Anak
# Penuhi Kebutuhan Nutrisi Saat Hamil
*** Keywords ***
Masuk Ke Event
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Event']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Event']
  # masuk ke halaman Event
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Event Guesehat')]    ${timeout}

Buka Event
  Scroll Element Into View    //div[@id='content']/section[2]//a[@title='${judul_event}']//div[@class='events-landing-title']
  Wait Until Element Is Visible    //div[@id='content']/section[2]//a[@title='${judul_event}']//div[@class='events-landing-title']   ${timeout}
  Click Element    //div[@id='content']/section[2]//a[@title='${judul_event}']//div[@class='events-landing-title']
  # cek halaman detail event
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'${judul_event}')]    ${timeout}
  Scroll Element Into View    Xpath=//h2[contains(text(),'Detail Location')]
  Sleep    2s
  # buka tab galery
  Scroll Element Into View    //button[contains(text(),"Gallery")]
  Wait Until Element Is Visible    //button[contains(text(),"Gallery")]   ${timeout}
  Click Element    //button[contains(text(),"Gallery")]
