*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
*** Variables ***
${cari_artikel}   Kesehatan Anak
${artikel_populer}    Cetirizine Obat Apa? Kenali Perbedaan Obat untuk Alergi!

*** Keywords ***
Cari Via Home
  Wait Until Page Contains Element    //input[@id='h_keyword']    ${timeout}
  Input Text    //input[@id='h_keyword']    ${cari_artikel}
  Click Element    //div[@id='content']//input[@value='Search']
  Sleep    4s

Pusat Kesehatan Home
  # buka pusat kesehatan bayi dan balita
  Scroll Element Into View    Xpath=//p[contains(text(),'Lihat lainnya >>')]
  Wait Until Page Contains Element    Xpath=//p[contains(text(),'Lihat lainnya >>')]   ${timeout}
  Sleep    4s
  Click Element    Xpath=//p[contains(text(),'Lihat lainnya >>')]
  # cek berhasil masuk ke pusat kesehatan
  Wait Until Element Is Visible    //div[@id='content']/section[2]//form[@action='https://www.guesehat.com/pusat-kesehatan']//h3[.='Pusat Kesehatan']    ${timeout}
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Pusat Kesehatan')]   ${timeout}
  Wait Until Element Is Visible    Xpath=//html//input[@id='keyword']

Buku Kesehatan Home Kehamilan
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Kehamilan']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Kehamilan']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Element Is Visible    //div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Kehamilan']
  Click Element    //div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Kehamilan']
  # cek halaman bukes Kehamilan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kehamilan')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner pdd']//a[@href='https://www.guesehat.com/buku-kesehatan/kehamilan/duedate']   ${timeout}
  Sleep    5s

Buku Kesehatan Home Hitung Kalori IMT
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Hitung Kalori & IMT']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Hitung Kalori & IMT']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Element Is Visible    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Hitung Kalori & IMT']   ${timeout}
  Click Element    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Hitung Kalori & IMT']
  # cek halaman bukes kalori IMT
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Indeks Massa Tubuh')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/form']   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/member?destination=buku-kesehatan/hitung-kalori']    ${timeout}
  Sleep    5s

Buku Kesehatan Home Siklus Haid
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Siklus Haid']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='SIklus Haid']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Element Is Visible    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Siklus Haid']   ${timeout}
  Click Element    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Siklus Haid']
  # cek halaman bukes siklus Haid
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Siklus Haid')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner mco']//a[@href='https://www.guesehat.com/buku-kesehatan/siklus-haid/duedate']   ${timeout}
  Sleep    5s

Buku Kesehatan Home Tumbuh Kembang & Imunisasi
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Tumbuh Kembang & Imunisasi']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Tumbuh Kembang & Imunisasi']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Element Is Visible    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Tumbuh Kembang & Imunisasi']   ${timeout}
  Click Element    //html//div[@id='content']/section[@class='phealth-block']/div[@class='phealth-slider-cont']/div[@class='container']//a[@title='Tumbuh Kembang & Imunisasi']
  # cek halaman tumbuh kembang & Imunisasi
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Tumbuh Kembang Anak')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner mco']/div//ul[@class='tkv-home-pick-contlist']//a[@href='https://www.guesehat.com/member?destination=buku-kesehatan/tumbuh-kembang-anak']   ${timeout}
  Sleep    5s

Buka Artikel Tag Medis
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Medis']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Medis']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Medis']    ${timeout}
  Click Element    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Medis']
  # masuk artikel tag medis
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Medis')]   ${timeout}
  Wait Until Element Is Visible    //html//div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Kumpulan Artikel Medis Terbaru di Guesehat.com')]

Buka Artikel Tag Wanita
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Wanita']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Wanita']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Wanita']    ${timeout}
  Click Element    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Wanita']
  # masuk artikel tag medis
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Wanita')]   ${timeout}
  Wait Until Element Is Visible    //html//div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Artikel Kesehatan Wanita Terbaru')]

Buka Artikel Tag Sex & Love
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Sex & Love']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Sex & Love']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Sex & Love']    ${timeout}
  Click Element    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Sex & Love']
  # masuk artikel tag medis
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Sex & Love')]   ${timeout}
  Wait Until Element Is Visible    //html//div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Kumpulan Artikel Cinta dan Kesehatan Seksual')]

Buka Artikel Tag Lifestyle
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Lifestyle']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Lifestyle']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Lifestyle']    ${timeout}
  Click Element    //html//div[@id='content']/section[3]//ul[@class='boxstory-contlist row']//a[@title='Lifestyle']
  # masuk artikel tag medis
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Lifestyle')]   ${timeout}
  Wait Until Element Is Visible    //html//div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Kumpulan Artikel Gaya Hidup Sehat')]

Buka Artikel Terpopuler
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    Xpath=//a[contains(text(),'${artikel_populer}')]
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    Xpath=//a[contains(text(),'${artikel_populer}')]
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Wait Until Page Contains Element    Xpath=//a[contains(text(),'${artikel_populer}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${artikel_populer}')]
  # masuk ke artikel terpopuler
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${artikel_populer}')]    ${timeout}
  Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]

Buka Direktori Home
  Sleep    2s
  : FOR    ${loopCount}    IN RANGE    0    4
  \    ${el}    Run Keyword And Return Status    Wait Until Element Is Visible    //div[@id='content']/section[@class='dir-block']//a[@class='dir-slider-next slick-arrow']
  \    Run Keyword If    ${el}    Exit For Loop
  \    Scroll Element Into View    //div[@id='content']/section[@class='dir-block']//a[@class='dir-slider-next slick-arrow']
  \    ${loopCount}    Set Variable    ${loopCount}+1
  Click Element    //div[@id='content']/section[@class='dir-block']//a[@class='dir-slider-next slick-arrow']
  Wait Until Page Contains Element    //html//div[@id='content']/section[@class='dir-block']//a[@href='https://www.guesehat.com/direktori']    ${timeout}
  Click Element    //html//div[@id='content']/section[@class='dir-block']//a[@href='https://www.guesehat.com/direktori']
  # masuk ke halaman direktori
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Temukan Direktori Layanan')]   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Direktori Kesehatan Guesehat: Dokter, Rumah Sakit, Gym, dll')]

Buku Kesehatan Side Kehamilan
  Sleep    4s
  Scroll Element Into View    Xpath=//h1[contains(text(),'PLATFORM KESEHATAN DENGAN FITUR TERLENGKAP')]
  Wait Until Element Is Visible    //html//div[@id='sticky-content']/div[1]//ul[@class='tools-contlist']/li[1]/div/h3[@class='tools-title']/a[@href='https://www.guesehat.com/buku-kesehatan/kehamilan']    ${timeout}
  Click Element    //html//div[@id='sticky-content']/div[1]//ul[@class='tools-contlist']/li[1]/div/h3[@class='tools-title']/a[@href='https://www.guesehat.com/buku-kesehatan/kehamilan']
  # masuk ke bukes kehamilan
  # cek halaman bukes Kehamilan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kehamilan')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner pdd']//a[@href='https://www.guesehat.com/buku-kesehatan/kehamilan/duedate']   ${timeout}
  Sleep    5s

Buku Kesehatan Side Hitung Kalori IMT
  Sleep    4s
  Scroll Element Into View    Xpath=//h1[contains(text(),'PLATFORM KESEHATAN DENGAN FITUR TERLENGKAP')]
  Wait Until Element Is Visible    //html//div[@id='sticky-content']/div[1]//ul[@class='tools-contlist']/li[2]/div/h3[@class='tools-title']/a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh']   ${timeout}
  Click Element    //html//div[@id='sticky-content']/div[1]//ul[@class='tools-contlist']/li[2]/div/h3[@class='tools-title']/a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh']
  # masuk ke bukes hitung kalori IMT
  # cek halaman bukes hitung kalori IMT
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Indeks Massa Tubuh')]      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/form']   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/member?destination=buku-kesehatan/hitung-kalori']    ${timeout}
  Sleep    5s

Buku Kesehatan Side Siklus Haid
  Sleep    4s
  Scroll Element Into View    Xpath=//h1[contains(text(),'PLATFORM KESEHATAN DENGAN FITUR TERLENGKAP')]
  Wait Until Element Is Visible    //html//div[@id='sticky-content']/div[1]//ul[@class='tools-contlist']/li[3]/div/h3[@class='tools-title']/a[@href='https://www.guesehat.com/buku-kesehatan/siklus-haid']    ${timeout}
  Click Element    //html//div[@id='sticky-content']/div[1]//ul[@class='tools-contlist']/li[3]/div/h3[@class='tools-title']/a[@href='https://www.guesehat.com/buku-kesehatan/siklus-haid']
  # masuk ke bukes siklus haid
  # cek halaman bukes siklus haid
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Siklus Haid')]      ${timeout}
  Wait Until Element Is Visible    //html//div[@id='content']/section[@class='inner mco']//a[@href='https://www.guesehat.com/buku-kesehatan/siklus-haid/duedate']   ${timeout}
  Sleep    5s

Buku Kesehatan Side Tumbuh Kembang Imunisasi
  Sleep    4s
  Scroll Element Into View    Xpath=//h1[contains(text(),'PLATFORM KESEHATAN DENGAN FITUR TERLENGKAP')]
  Wait Until Element Is Visible    //html//div[@id='sticky-content']/div[1]//ul[@class='tools-contlist']/li[4]/div/h3[@class='tools-title']/a[@href='https://www.guesehat.com/buku-kesehatan/tumbuh-kembang-anak']    ${timeout}
  Click Element    //html//div[@id='sticky-content']/div[1]//ul[@class='tools-contlist']/li[4]/div/h3[@class='tools-title']/a[@href='https://www.guesehat.com/buku-kesehatan/tumbuh-kembang-anak']
  # masuk ke bukes tumbuh kembang
  # cek halaman bukes tumbuh kembang
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Tumbuh Kembang Anak')]      ${timeout}
  Wait Until Element Is Visible    //html//div[@id='content']/section[@class='inner mco']/div//ul[@class='tkv-home-pick-contlist']//a[@href='https://www.guesehat.com/member?destination=buku-kesehatan/tumbuh-kembang-anak']   ${timeout}
  Sleep    5s

Artikel Lainnya
  Sleep    4s
  : FOR    ${loopCount}    IN RANGE    0    4
  \   Scroll Element Into View    Xpath=//h1[contains(text(),'PLATFORM KESEHATAN DENGAN FITUR TERLENGKAP')]
  \   Wait Until Element Is Visible    Xpath=//a[contains(text(),'Lainnya')]    ${timeout}
  \   Sleep    3s
  \   Click Element    Xpath=//a[contains(text(),'Lainnya')]
  \   ${loopCount}    Set Variable    ${loopCount}+1
  Sleep    5s

Cari Artikel via search icon
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # input yang dicari
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${cari_artikel}
  # pilih selengkapnya artikel
  Wait Until Element Is Visible    Xpath=//a[@id="query_one_href"]    ${timeout}
  Click Element    Xpath=//a[@id="query_one_href"]
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner']//select[@class='listpage-head-control-select']    ${timeout}
  Sleep    2s
  # pilih icon cari lagi
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # input yang dicari
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${cari_artikel}
  # pilih selengkapnya forum
  Wait Until Element Is Visible    Xpath=//a[@id="query_two_href"]    ${timeout}
  Click Element    Xpath=//a[@id="query_two_href"]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Forum')]    ${timeout}
  Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Topik')]     ${timeout}
  Sleep    2s
  # pilih icon cari lagi
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # input yang dicari
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${cari_artikel}
  # pilih selengkapnya dokter
  Wait Until Element Is Visible    Xpath=//a[@id="query_three_href"]    ${timeout}
  Click Element    Xpath=//a[@id="query_three_href"]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Dokter')]    ${timeout}
  Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Jadwal')]     ${timeout}
  Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Jenis Kelamin')]     ${timeout}
  Sleep    2s
  # pilih icon cari lagi
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # input yang dicari
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${cari_artikel}
  # pilih selengkapnya penyakit
  Wait Until Element Is Visible    Xpath=//a[@id="query_five_href"]    ${timeout}
  Click Element    Xpath=//a[@id="query_five_href"]
  # Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Dokter')]    ${timeout}
  # Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Jadwal')]     ${timeout}
  # Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Jenis Kelamin')]     ${timeout}
  Sleep    2s
  # pilih icon cari lagi
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # input yang dicari
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${cari_artikel}
  # pilih selengkapnya penyakit
  Wait Until Element Is Visible    Xpath=//a[@id="query_seven_href"]    ${timeout}
  Click Element    Xpath=//a[@id="query_seven_href"]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Pusat Kesehatan')]    ${timeout}
  Wait Until Element Is Visible    //input[@id='keyword']     ${timeout}
  Sleep    2s

Kembali ke Homepage
  Wait Until Element Is Visible    //div[@id='wrapper']//a[@href='https://www.guesehat.com/']/img[@alt='www.guesehat.com']    ${timeout}
  Click Element    //div[@id='wrapper']//a[@href='https://www.guesehat.com/']/img[@alt='www.guesehat.com']
