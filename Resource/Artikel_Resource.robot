*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
*** Variables ***
${cari_artikel}   Kesehatan Anak
${artikel_populer}    Cetirizine Obat Apa? Kenali Perbedaan Obat untuk Alergi!

*** Keywords ***
Buka List Menu Artikel
  Mouse Over    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Artikel']
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Medis']   ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Wanita']    ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Sex & Love']    ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Lifestyle']     ${timeout}

Masuk Ke Semua Artikel
  Buka List Menu Artikel
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Artikel']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Artikel']
  # cek halaman artikel semua
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Semua Artikel')]   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Semua Artikel Kesehatan di Guesehat.com')]
  Sleep    3s

Masuk Ke Artikel Medis
  Buka List Menu Artikel
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Medis']    ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Medis']
  # cek halaman artikel medis
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Medis')]   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Kumpulan Artikel Medis Terbaru di Guesehat.com')]
  Sleep    3s

Masuk Ke Artikel Wanita
  Buka List Menu Artikel
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Wanita']    ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Wanita']
  # cek halaman artikel wanita
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Wanita')]   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Artikel Kesehatan Wanita Terbaru')]
  Sleep    3s

Masuk Ke Artikel Sex & Love
  Buka List Menu Artikel
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Sex & Love']    ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Sex & Love']
  # cek halaman artikel sex & love
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Sex & Love')]   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Kumpulan Artikel Cinta dan Kesehatan Seksual')]
  Sleep    3s

Masuk Ke Artikel Lifestyle
  Buka List Menu Artikel
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Lifestyle']    ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[1]/div/ul[@class='submenu-list']//a[@title='Lifestyle']
  # cek halaman artikel Lifestyle
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Lifestyle')]   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Buka Semua Kategori Artikel
  Scroll Element Into View    Xpath=//h1[contains(text(),'Kumpulan Artikel Gaya Hidup Sehat')]
  Sleep    3s

Buka Semua Kategori Artikel
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  # pilih option semua
  Click Element    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']
  Select From List By Label    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    Semua
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Semua Artikel')]   ${timeout}
  Sleep    2s
  # pilih option medis
  Click Element    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']
  Select From List By Label    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    Medis
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Medis')]   ${timeout}
  Sleep    2s
  # pilih option wanita
  Click Element    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']
  Select From List By Label    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    Wanita
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Wanita')]   ${timeout}
  Sleep    2s
  # pilih option sex & love
  Click Element    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']
  Select From List By Label    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    Sex & Love
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Sex & Love')]   ${timeout}
  Sleep    2s
  # pilih option Lifestyle
  Click Element    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']
  Select From List By Label    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    Lifestyle
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Lifestyle')]   ${timeout}
  Sleep    2s
