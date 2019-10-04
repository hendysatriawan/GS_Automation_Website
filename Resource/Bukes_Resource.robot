*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
Resource    ../Resource/Login_Resource.robot
*** Variables ***


*** Keywords ***
Buka List Buku Kesehatan
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Buku Kesehatan']    ${timeout}
  Mouse Over    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Buku Kesehatan']
  # cek menu yang muncul
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[6]/div/ul[@class='submenu-list']//a[@title='Hitung kalori & IMT']   ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[6]/div/ul[@class='submenu-list']//a[@title='Siklus Haid']    ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[6]/div/ul[@class='submenu-list']//a[@title='Kehamilan']     ${timeout}
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul/li[6]/div/ul[@class='submenu-list']//a[@title='Tumbuh Kembang & Imunisasi']     ${timeout}

Masuk Ke Semua Buku Kesehatan
  Wait Until Page Contains Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Buku Kesehatan']     ${timeout}
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Buku Kesehatan']
  # cek halaman Buku Kesehatan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Buku Kesehatan')]    ${timeout}
  # buka bukes kehamilan
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/kehamilan/duedate']
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/kehamilan/duedate']
  # cek halaman kehamilan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kehamilan')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner pdd']//form[@action='https://www.guesehat.com/buku-kesehatan/kehamilan/duedate']/button[@name='form_submit']    ${timeout}
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Masukkan hari pertama siklus haid terakhir Mums')]   ${timeout}
  Go Back
  # buka bukes IMT
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/form']
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/form']
  # cek halaman IMT
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Indeks Massa Tubuh')]      ${timeout}
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Isi data berikut')]    ${timeout}

  Go Back
  # buka bukes siklus Haid
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/siklus-haid/duedate']
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/siklus-haid/duedate']
  # cek halaman siklus Haid
  # handle popup
  Sleep    2s
  Wait Until Element Is Visible    Xpath=//h3[contains(text(),'Apakah Kamu sedang haid?')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='modal-question']//div[.='Ya']   ${timeout}
  Click Element    //div[@id='modal-question']//div[.='Ya']
  # masuk halaman siklus haid
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Siklus Haid')]   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner mco']//form[@action='https://www.guesehat.com/buku-kesehatan/siklus-haid/duedate']/button[@name='form_submit']    ${timeout}
  Go Back
  Sleep    1s
  Go Back
  Sleep    1s
  # buka halaman hitung kalori
  # Login Akun Guesehat
  # Buka List Buku Kesehatan
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@title='Buku Kesehatan']
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/hitung-kalori']
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/hitung-kalori']
  # cek halaman hitung kalori
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Hitung Kalori')]     ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/result']     ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/form']     ${timeout}
  Go Back
  # buka halaman Tumbuh kembang anak
  Scroll Element Into View    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/tumbuh-kembang-anak']
  Click Element    //div[@id='content']/section[2]/div[@class='container']//a[@href='https://www.guesehat.com/buku-kesehatan/tumbuh-kembang-anak']
  # cek halaman tumbuh kembang anak
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Tumbuh Kembang Anak')]     ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner mco']/div//ul[@class='tkv-home-pick-contlist']//a[.='Tambah Anak']    ${timeout}
  Go Back

Buka Hitung Kalori IMT
  Buka List Buku Kesehatan
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[6]/div/ul[@class='submenu-list']//a[@title='Hitung kalori & IMT']
  # cek halaman hitung kalori IMT
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Indeks Massa Tubuh')]    ${timeout}
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Indeks Massa Tubuh')]    ${timeout}
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Hitung Kalori')]     ${timeout}
  # masuk ke halaman index masa tubuh
  Sleep    2s
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/form']     ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/form']
  # cek halaman IMT
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Indeks Massa Tubuh')]      ${timeout}
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Isi data berikut')]    ${timeout}
  Go Back
  # masuk ke hitung kalori
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Hitung Kalori')]     ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/hitung-kalori']    ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/hitung-kalori']
  # cek halaman hitung kalori
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Hitung Kalori')]   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/form']     ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/buku-kesehatan/indeks-massa-tubuh/result']   ${timeout}
  Go Back
  # lihat riwayat
  # lihat riwayat IMT
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=indeks-massa-tubuh']    ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=indeks-massa-tubuh']
  # cek halaman riwayat IMT
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/tulisartikel/create']      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section/div//a[@href='https://www.guesehat.com/forum/tanya']
  Scroll Element Into View    //a[@id='indeks-massa-tubuh']
  Go Back
  # lihat riwayat hitung kalori
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Hitung Kalori')]     ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=hitung-kalori']     ${timeout}
  Click Element    //div[@id='content']/section//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=hitung-kalori']
  # cek halaman riwayat hitung kalori
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/tulisartikel/create']      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section/div//a[@href='https://www.guesehat.com/forum/tanya']
  Scroll Element Into View    //a[@id='hitung-kalori']
  Go Back

Buka Siklus Haid
  Buka List Buku Kesehatan
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[6]/div/ul[@class='submenu-list']//a[@title='Siklus Haid']
  # cek halaman siklus haid
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Siklus Haid')]   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner mco']//a[@href='https://www.guesehat.com/buku-kesehatan/siklus-haid/duedate']    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner mco']//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=siklus-haid']     ${timeout}
  # mulai siklus haid
  Click Element    //div[@id='content']/section[@class='inner mco']//a[@href='https://www.guesehat.com/buku-kesehatan/siklus-haid/duedate']
  # handle popup
  Sleep    2s
  Wait Until Element Is Visible    Xpath=//h3[contains(text(),'Apakah Kamu sedang haid?')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='modal-question']//div[.='Ya']   ${timeout}
  Click Element    //div[@id='modal-question']//div[.='Ya']
  # masuk halaman siklus haid
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Siklus Haid')]   ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner mco']//form[@action='https://www.guesehat.com/buku-kesehatan/siklus-haid/duedate']/button[@name='form_submit']    ${timeout}
  Go Back
  Sleep    2s
  # lihat riwayat siklus haid
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner mco']//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=siklus-haid']     ${timeout}
  Click Element    //div[@id='content']/section[@class='inner mco']//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=siklus-haid']
  # cek halaman riwayat siklus haid
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/tulisartikel/create']      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section/div//a[@href='https://www.guesehat.com/forum/tanya']
  Scroll Element Into View    //a[@id='siklus-haid']
  Go Back

Buka Kehamilan
  Buka List Buku Kesehatan
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[6]/div/ul[@class='submenu-list']//a[@title='Kehamilan']
  # cek halaman kehamilan
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kehamilan')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner pdd']//a[@href='https://www.guesehat.com/buku-kesehatan/kehamilan/duedate']     ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner pdd']//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=kehamilan']     ${timeout}
  # mulai kehamilan
  Click Element    //div[@id='content']/section[@class='inner pdd']//a[@href='https://www.guesehat.com/buku-kesehatan/kehamilan/duedate']
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Kehamilan')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner pdd']//form[@action='https://www.guesehat.com/buku-kesehatan/kehamilan/duedate']/button[@name='form_submit']    ${timeout}
  Wait Until Element Is Visible    Xpath=//h2[contains(text(),'Masukkan hari pertama siklus haid terakhir Mums')]   ${timeout}
  Go Back
  # pilih riwayat
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner pdd']//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=kehamilan']     ${timeout}
  Click Element    //div[@id='content']/section[@class='inner pdd']//a[@href='https://www.guesehat.com/hendy-gs?tab=buku-kesehatan&subtab=kehamilan']
  # cek halaman riwayat kehamilan
  Wait Until Element Is Visible    //div[@id='content']/section//a[@href='https://www.guesehat.com/tulisartikel/create']      ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section/div//a[@href='https://www.guesehat.com/forum/tanya']
  Scroll Element Into View    //a[@id='kehamilan']
  Go Back

Buka Tumbuh Kembang
  Buka List Buku Kesehatan
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul/li[6]/div/ul[@class='submenu-list']//a[@title='Tumbuh Kembang & Imunisasi']
  # masuk halaman Tumbuh Kembang
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Tumbuh Kembang Anak')]     ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/section[@class='inner mco']/div//ul[@class='tkv-home-pick-contlist']//a[.='Tambah Anak']    ${timeout}
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'Grafik Tumbuh Kembang Anak Online')]     ${timeout}
