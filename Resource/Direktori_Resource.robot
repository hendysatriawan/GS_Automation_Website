*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
*** Variables ***
${cari_dokter}    Mira Irmawati
${cari_rs}    Aulia Hospital
${cari_klinik}    Balai Kesehatan Mata Masyarakat Kabupaten Banyumas
${cari_club}    20FIT Alam Sutera
${cari_spa}   Bersih Sehat Bandung
${cari_food}    Akar Drink Pluit
${cari_beauty}    Blow and Glow Lafayette
${cari_lab}   Laboratorium Klinik Biotest Menteng
${cari_praktisi}    Dian Ibung
*** Keywords ***
Buka List Menu Direktori
  Mouse Over    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Direktori']
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Dokter']   ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Rumah Sakit']    ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Klinik']    ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Gym & Health Club']     ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Spa & Massage']    ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Healthy Food & Beverage']    ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Beauty']     ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Lab']    ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Praktisi']     ${timeout}

Masuk Ke Semua Direktori
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Direktori']   ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Direktori']
  # cek halaman direktori semua
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Temukan Direktori Layanan')]   ${timeout}

Buka Semua Direktori Detail Via Halaman Direktori
  #buka direktori dokter
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/dokter']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/dokter']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/dokter']
  # cek halaman direktori dokter
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Dokter')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Data Dokter dan Jadwal Prakteknya')]
  Go Back
  # buka direktori rumah sakit
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/rumah-sakit']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/rumah-sakit']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/rumah-sakit']
  # cek halaman direktori rumah sakit
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Rumah Sakit')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Daftar Rumah Sakit Terdekat dengan Lokasimu')]
  Go Back
  # buka direktori klinik
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/klinik']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/klinik']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/klinik']
  # cek halaman direktori klinik
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Klinik')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Daftar Klinik BPJS Terdekat dengan Lokasimu')]
  Go Back
  # buka direktori Gym & Health Club
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/gym-health-club']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/gym-health-club']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/gym-health-club']
  # cek halaman direktori Gym & Health Club
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Gym & Health Club')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Daftar Tempat Gym Terdekat dengan Lokasimu')]
  Go Back
  # buka direktori spa & message
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/spa-massage']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/spa-massage']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/spa-massage']
  # cek halaman direktori Spa & Message
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Spa & Massage')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Rekomendasi Tempat Spa dan Pijat Terdekat')]
  Go Back
  # buka direktori Healthy & beverage
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/makanan-minuman-sehat']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/makanan-minuman-sehat']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/makanan-minuman-sehat']
  # cek halaman direktori Healthy & beverage
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Healthy Food & Beverage')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Rekomendasi Tempat Jual Makanan Sehat')]
  Go Back
  # buka direktori beauty
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/perawatan-kecantikan']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/perawatan-kecantikan']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/perawatan-kecantikan']
  # cek halaman direktori Beauty
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Beauty')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Klinik Perawatan Kecantikan Terdekat')]
  Go Back
  # buka direktori lab
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/lab']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/lab']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/lab']
  # cek halaman direktori Beauty
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Lab')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Daftar Laboratorium Klinik Terdekat')]
  Go Back
  # buka direktori Praktisi
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/praktisi']
  Wait Until Element Is Visible    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/praktisi']    ${timeout}
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/direktori/praktisi']
  # cek halaman direktori Beauty
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Praktisi')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  Scroll Element Into View    Xpath=//h1[contains(text(),'Daftar Praktisi Kesehatan Terbaik di Indonesia')]
  Go Back

Buka Direktori Dokter Via Menu
  Buka List Menu Direktori
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Dokter']
  # masuk halaman direktori dokter
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Dokter')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  # cari dokter
  Scroll Element Into View    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # pilih Jadwal
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']
  # pilih jenis kelamin
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[5]//div[@class='row']/div[2]/div/div[@class='rcb-cont']/label[@class='cbdummy']    ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[5]//div[@class='row']/div[2]/div/div[@class='rcb-cont']/label[@class='cbdummy']
  # klik tombol cari
  Click Element    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # pilih dokter / masuk ke detail dokter
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_dokter}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_dokter}')]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_dokter}')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//div[@class='dirdetail-head-rec']/a[@href='javascript:;']
  Scroll Element Into View    Xpath=//a[contains(text(),'Hubungi Kami')]

Buka Direktori Rumah Sakit Via Menu
  Buka List Menu Direktori
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Rumah Sakit']
  # masuk halaman direktori Rumah Sakit
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Rumah Sakit')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  # cari Rumah sakit
  Scroll Element Into View    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # pilih layanan bpjs
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[5]//div[@class='row']/div[1]/div/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[5]//div[@class='row']/div[1]/div/div[@class='rcb-cont']/label[@class='cbdummy']
  # klik tombol cari
  Click Element    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # sort to A-Z
  Wait Until Element Is Visible    //div[@id='content']/section/div//select[@name='sort']   ${timeout}
  Click Element    //div[@id='content']/section/div//select[@name='sort']
  Select From List By Label    //div[@id='content']/section/div//select[@name='sort']    A-Z
  # pilih rumah sakit / masuk ke detail rumah sakit
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_rs}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_rs}')]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_rs}')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//div[@class='dirdetail-head-rec']/a[@href='javascript:;']
  Scroll Element Into View    Xpath=//a[contains(text(),'Hubungi Kami')]

Buka Direktori Klinik Via Menu
  Buka List Menu Direktori
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Klinik']
  # masuk halaman direktori Klinik
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Klinik')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  # cari Klinik
  Scroll Element Into View    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # pilih layanan bpjs
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[7]//div[@class='row']/div[1]/div/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[7]//div[@class='row']/div[1]/div/div[@class='rcb-cont']/label[@class='cbdummy']
  # klik tombol cari
  Click Element    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # sort to A-Z
  Wait Until Element Is Visible    //div[@id='content']/section/div//select[@name='sort']   ${timeout}
  Click Element    //div[@id='content']/section/div//select[@name='sort']
  Select From List By Label    //div[@id='content']/section/div//select[@name='sort']    A-Z
  # pilih rumah sakit / masuk ke detail rumah sakit
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_klinik}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_klinik}')]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_klinik}')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//div[@class='dirdetail-head-rec']/a[@href='javascript:;']
  Scroll Element Into View    Xpath=//a[contains(text(),'Hubungi Kami')]

Buka Direktori Gym & health club Via Menu
  Buka List Menu Direktori
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Gym & Health Club']
  # masuk halaman direktori gym club
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Gym & Health Club')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  # cari gym club
  Scroll Element Into View    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # pilih Jadwal
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']
  # klik tombol cari
  Click Element    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # sort to A-Z
  Wait Until Element Is Visible    //div[@id='content']/section/div//select[@name='sort']   ${timeout}
  Click Element    //div[@id='content']/section/div//select[@name='sort']
  Select From List By Label    //div[@id='content']/section/div//select[@name='sort']    A-Z
  # pilih rumah gym club
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_club}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_club}')]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_club}')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//div[@class='dirdetail-head-rec']/a[@href='javascript:;']
  Scroll Element Into View    Xpath=//a[contains(text(),'Hubungi Kami')]

Buka Direktori Spa & Massage club Via Menu
  Buka List Menu Direktori
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Spa & Massage']
  # masuk halaman direktori Spa & Massage
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Spa & Massage')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  # cari Spa & Massage
  Scroll Element Into View    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # pilih Jadwal
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']
  # klik tombol cari
  Click Element    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # sort to A-Z
  Wait Until Element Is Visible    //div[@id='content']/section/div//select[@name='sort']   ${timeout}
  Click Element    //div[@id='content']/section/div//select[@name='sort']
  Select From List By Label    //div[@id='content']/section/div//select[@name='sort']    A-Z
  # pilih rumah spa & massage
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_spa}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_spa}')]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_spa}')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//div[@class='dirdetail-head-rec']/a[@href='javascript:;']
  Scroll Element Into View    Xpath=//a[contains(text(),'Hubungi Kami')]

Buka Direktori Healthy Food & Beverage Via Menu
  Buka List Menu Direktori
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Healthy Food & Beverage']
  # masuk halaman direktori Healthy Food & Beverage
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Healthy Food & Beverage')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  # cari Healthy Food & Beverage
  Scroll Element Into View    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # pilih Jadwal
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']
  # klik tombol cari
  Click Element    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # sort to A-Z
  Wait Until Element Is Visible    //div[@id='content']/section/div//select[@name='sort']   ${timeout}
  Click Element    //div[@id='content']/section/div//select[@name='sort']
  Select From List By Label    //div[@id='content']/section/div//select[@name='sort']    A-Z
  # pilih Healthy Food & Beverage
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_food}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_food}')]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_food}')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//div[@class='dirdetail-head-rec']/a[@href='javascript:;']
  Scroll Element Into View    Xpath=//a[contains(text(),'Hubungi Kami')]

Buka Direktori Beauty Via Menu
  Buka List Menu Direktori
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Beauty']
  # masuk halaman direktori Beauty
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Beauty')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  # cari Beauty
  Scroll Element Into View    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # pilih Jadwal
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']
  # klik tombol cari
  Click Element    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # sort to A-Z
  Wait Until Element Is Visible    //div[@id='content']/section/div//select[@name='sort']   ${timeout}
  Click Element    //div[@id='content']/section/div//select[@name='sort']
  Select From List By Label    //div[@id='content']/section/div//select[@name='sort']    A-Z
  # pilih beauty
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_beauty}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_beauty}')]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_beauty}')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//div[@class='dirdetail-head-rec']/a[@href='javascript:;']
  Scroll Element Into View    Xpath=//a[contains(text(),'Hubungi Kami')]

Buka Direktori Lab Via Menu
  Buka List Menu Direktori
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Lab']
  # masuk halaman direktori Lab
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Lab')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  # cari Lab
  # pilih Jadwal
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']   ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[4]//div[@class='row']/div[1]/div[1]/div[@class='rcb-cont']/label[@class='cbdummy']
  # klik tombol cari
  Scroll Element Into View    //form[@id='qsearch']//button[@class='dirpage-control-button']
  Click Element    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # sort to A-Z
  Wait Until Element Is Visible    //div[@id='content']/section/div//select[@name='sort']   ${timeout}
  Click Element    //div[@id='content']/section/div//select[@name='sort']
  Select From List By Label    //div[@id='content']/section/div//select[@name='sort']    A-Z
  # pilih Lab
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_lab}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_lab}')]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_lab}')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//div[@class='dirdetail-head-rec']/a[@href='javascript:;']
  Scroll Element Into View    Xpath=//a[contains(text(),'Hubungi Kami')]

Buka Direktori Praktisi Via Menu
  Buka List Menu Direktori
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[2]/div/ul[@class='submenu-list']//a[@title='Praktisi']
  # masuk halaman direktori Praktisi
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Praktisi')]    ${timeout}
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']//select[@name='group']   ${timeout}
  # cari Praktisi
  Scroll Element Into View    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # pilih Jenis kelamin
  Wait Until Element Is Visible    //form[@id='qsearch']/div[@class='dirpage-control']/div[5]//div[@class='row']/div[2]/div/div[@class='rcb-cont']/label   ${timeout}
  Click Element    //form[@id='qsearch']/div[@class='dirpage-control']/div[5]//div[@class='row']/div[2]/div/div[@class='rcb-cont']/label
  # klik tombol cari
  Click Element    //form[@id='qsearch']//button[@class='dirpage-control-button']
  # sort to A-Z
  Wait Until Element Is Visible    //div[@id='content']/section/div//select[@name='sort']   ${timeout}
  Click Element    //div[@id='content']/section/div//select[@name='sort']
  Select From List By Label    //div[@id='content']/section/div//select[@name='sort']    A-Z
  # pilih Praktisi
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${cari_praktisi}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${cari_praktisi}')]
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${cari_praktisi}')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//div[@class='dirdetail-head-rec']/a[@href='javascript:;']
  Scroll Element Into View    Xpath=//a[contains(text(),'Hubungi Kami')]
