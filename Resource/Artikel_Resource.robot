*** Setting ***
Library    SeleniumLibrary
Library    String

Resource    ../Resource/Capability_Resource.robot
*** Variables ***
${cari_artikel}   Kesehatan Anak
${artikel_populer}    Cetirizine Obat Apa? Kenali Perbedaan Obat untuk Alergi!
${judul_single}   Kecanduan Gadget Tingkatkan Risiko Stroke!
${judul_single_sexlove}   Jangan Terbuai Kata Cinta yang Manipulatif Ini!
${judul_pagination}   Manfaat Bercinta dengan Pria yang Lebih Tua
${judul_slideshow}    Cara Mudah Menjaga Kesehatan Penis
${judul_counting}   Apakah Kamu Dehidrasi?
${judul_survey}   Survei: Apakah Kamu Meredakan Stres dengan Melakukan Kegiatan Seni?
${judul_trivia}   Kuis: Seberapa Baik Cara Kamu Mengendalikan Emosi?

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

Cari Artikel Single
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # masuk ke halaman search
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${judul_single}
  # pilih selengkapnya di artikel
  Wait Until Element Is Visible    //a[@id='query_one_href']   ${timeout}
  Click Element    //a[@id='query_one_href']
  # masuk ke halaman artikel
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${judul_single}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${judul_single}')]
  # masuk ke detil artikel
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${judul_single}')]     ${timeout}
  Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]

Cari Artikel Single Sex & Love
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # masuk ke halaman search
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${judul_single_sexlove}
  # pilih selengkapnya di artikel
  Wait Until Element Is Visible    //a[@id='query_one_href']   ${timeout}
  Click Element    //a[@id='query_one_href']
  # masuk ke halaman artikel
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${judul_single_sexlove}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${judul_single_sexlove}')]
  # masuk ke detil artikel
  # ${cek17}    Run Keyword And Return Status    name    *args
  Wait Until Element Is Visible    //div[@id='modalpop']//p[.='Setuju']     ${timeout}
  Click Element    //div[@id='modalpop']//p[.='Setuju']
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${judul_single_sexlove}')]     ${timeout}
  Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]

Cari Artikel Pagination
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # masuk ke halaman search
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${judul_pagination}
  # pilih selengkapnya di artikel
  Wait Until Element Is Visible    //a[@id='query_one_href']   ${timeout}
  Click Element    //a[@id='query_one_href']
  # masuk ke halaman artikel
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${judul_pagination}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${judul_pagination}')]
  # masuk ke detil artikel
  Wait Until Element Is Visible    //div[@id='modalpop']//p[.='Setuju']     ${timeout}
  Click Element    //div[@id='modalpop']//p[.='Setuju']
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${judul_pagination}')]     ${timeout}
  # hide video
  Wait Until Element Is Visible    //div[@id='slideOutId']    ${timeout}
  Click Element    //div[@id='slideOutId']
  # pilih halaman selanjutnya
  Scroll Element Into View    //div[@id='content']/article[@class='article']//ul[@class='article-pager']/li[@class='next']/a[@href='https://www.guesehat.com/manfaat-bercinta-dengan-pasangan-pria-yang-lebih-tua/page/2']
  Wait Until Element Is Visible    //div[@id='content']/article[@class='article']//ul[@class='article-pager']/li[@class='next']/a[@href='https://www.guesehat.com/manfaat-bercinta-dengan-pasangan-pria-yang-lebih-tua/page/2']
  Click Element    //div[@id='content']/article[@class='article']//ul[@class='article-pager']/li[@class='next']/a[@href='https://www.guesehat.com/manfaat-bercinta-dengan-pasangan-pria-yang-lebih-tua/page/2']
  Scroll Element Into View    Xpath=//h3[contains(text(),'4. Pria lebih tua lebih merasakan sensasi')]
  Sleep    2s
  Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]

Cari Artikel Slideshow
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # masuk ke halaman search
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${judul_slideshow}
  # pilih selengkapnya di artikel
  Wait Until Element Is Visible    //a[@id='query_one_href']   ${timeout}
  Click Element    //a[@id='query_one_href']
  # masuk ke halaman artikel
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${judul_slideshow}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${judul_slideshow}')]
  # masuk ke detil artikel
  Wait Until Element Is Visible    //div[@id='modalpop']//p[.='Setuju']     ${timeout}
  Click Element    //div[@id='modalpop']//p[.='Setuju']
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${judul_slideshow}')]     ${timeout}
  # hide video
  Wait Until Element Is Visible    //div[@id='slideOutId']    ${timeout}
  Click Element    //div[@id='slideOutId']
  # pilih halaman selanjutnya - 2/4
  Scroll Element Into View    Xpath=//h4[contains(text(),'Cuci bersih dengan sabun')]
  Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Cuci bersih dengan sabun')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/article[@class='article']/div[@class='container']//a[@href='https://www.guesehat.com/cara-mudah-menjaga-kesehatan-penis/slideshow/potong-rambut-kemaluan-secara-periodik']
  Click Element    //div[@id='content']/article[@class='article']/div[@class='container']//a[@href='https://www.guesehat.com/cara-mudah-menjaga-kesehatan-penis/slideshow/potong-rambut-kemaluan-secara-periodik']
  # pilih halaman selanjutnya - 3/4
  Scroll Element Into View    Xpath=//h4[contains(text(),'Potong rambut kemaluan secara periodik')]
  Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Potong rambut kemaluan secara periodik')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/article[@class='article']/div[@class='container']//a[@href='https://www.guesehat.com/cara-mudah-menjaga-kesehatan-penis/slideshow/gunakan-celana-dalam-yang-tidak-terlalu-ketat']
  Click Element    //div[@id='content']/article[@class='article']/div[@class='container']//a[@href='https://www.guesehat.com/cara-mudah-menjaga-kesehatan-penis/slideshow/gunakan-celana-dalam-yang-tidak-terlalu-ketat']
  # pilih halaman selanjutnya - 4/4
  Scroll Element Into View    Xpath=//h4[contains(text(),'Gunakan celana dalam yang tidak terlalu ketat')]
  Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Gunakan celana dalam yang tidak terlalu ketat')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/article[@class='article']/div[@class='container']//a[@href='https://www.guesehat.com/cara-mudah-menjaga-kesehatan-penis/slideshow/membersihkan-kotoran-di-sekitar-kepala-penis']
  Click Element    //div[@id='content']/article[@class='article']/div[@class='container']//a[@href='https://www.guesehat.com/cara-mudah-menjaga-kesehatan-penis/slideshow/membersihkan-kotoran-di-sekitar-kepala-penis']
  # pilih halaman sebelumnya
  Scroll Element Into View    Xpath=//h4[contains(text(),'Membersihkan kotoran di sekitar kepala penis')]
  Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Membersihkan kotoran di sekitar kepala penis')]    ${timeout}
  Wait Until Element Is Visible    //div[@id='content']/article[@class='article']/div[@class='container']//a[@href='https://www.guesehat.com/cara-mudah-menjaga-kesehatan-penis/slideshow/gunakan-celana-dalam-yang-tidak-terlalu-ketat']
  Click Element    //div[@id='content']/article[@class='article']/div[@class='container']//a[@href='https://www.guesehat.com/cara-mudah-menjaga-kesehatan-penis/slideshow/gunakan-celana-dalam-yang-tidak-terlalu-ketat']
  Scroll Element Into View    Xpath=//h4[contains(text(),'Gunakan celana dalam yang tidak terlalu ketat')]
  Wait Until Element Is Visible    Xpath=//h4[contains(text(),'Gunakan celana dalam yang tidak terlalu ketat')]    ${timeout}
  Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]

Cari Artikel Counting
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # masuk ke halaman search
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${judul_counting}
  # pilih selengkapnya di artikel
  Wait Until Element Is Visible    //a[@id='query_one_href']   ${timeout}
  Click Element    //a[@id='query_one_href']
  # masuk ke halaman artikel
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${judul_counting}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${judul_counting}')]
  # masuk ke detil artikel
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${judul_counting}')]     ${timeout}
  # lakukan counting / checklist
  # pilih merasa haus
  Scroll Element Into View    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[1]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  Click Element    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[1]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  # pilih mulut kering atau lengket
  Scroll Element Into View    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[2]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  Click Element    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[2]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  # piih jarang buang air kecil
  Scroll Element Into View    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[3]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  Click Element    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[3]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  # pilih urine berwarna kuning gelap'
  Scroll Element Into View    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[4]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  Click Element    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[4]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  # pilih kulit kering
  Scroll Element Into View    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[5]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  Click Element    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[5]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  # pilih sakit kepala
  Scroll Element Into View    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[6]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  Click Element    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[6]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  # pilih nyeri otot
  Scroll Element Into View    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[7]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  Click Element    //form[@id='form_id_counting']/ul[@class='article-quiz2-choice-contlist']/li[7]/div[@class='article-quiz2-choice']/div[@class='article-quiz2-choice-body']/div[@class='article-quiz2-choice-cb-cont']/label[@class='article-quiz2-choice-cb-dummy']
  # pilih submit
  Scroll Element Into View    //button[@id='form_submit_counting']
  Click Element    //button[@id='form_submit_counting']
  Wait Until Element Is Visible    //div[@id='counting_result']//a[@title='Ulangi Kembali']   ${timeout}
  # scroll sampai bawah
  Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]

Cari Artikel Survey
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # masuk ke halaman search
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${judul_survey}
  # pilih selengkapnya di artikel
  Wait Until Element Is Visible    //a[@id='query_one_href']   ${timeout}
  Click Element    //a[@id='query_one_href']
  # masuk ke halaman artikel
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${judul_survey}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${judul_survey}')]
  # masuk ke detil artikel
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${judul_survey}')]     ${timeout}
  # hide video
  Wait Until Element Is Visible    //div[@id='slideOutId']    ${timeout}
  Click Element    //div[@id='slideOutId']
  # lakukan pilih survey 1
  Scroll Element Into View    //div[@id='button_submit_checkbox']/button[@class='article-survey-button button']
  Wait Until Element Is Visible    //ul[@id='graph_surveyid6']/li[2]/div[@class='article-survey-choice']//label[@class='article-survey-choice-cb-dummy']    ${timeout}
  Click Element    //ul[@id='graph_surveyid6']/li[2]/div[@class='article-survey-choice']//label[@class='article-survey-choice-cb-dummy']
  Sleep    1s
  Click Element    //div[@id='button_submit_checkbox']/button[@class='article-survey-button button']
  # lakukan pilih survey 2
  Sleep    1s
  Scroll Element Into View    //div[@id='button_submit_checkbox']/button[@class='article-survey-button button']
  Wait Until Element Is Visible    //div[@id='form_id_survey']/div[2]/ul[@class='article-survey-choice-contlist']/li[1]/div[@class='article-survey-choice']/div[@class='article-survey-choice-body']/div[@class='article-survey-choice-rb-cont']/label[@class='article-survey-choice-cb-dummy']    ${timeout}
  Click Element    //div[@id='form_id_survey']/div[2]/ul[@class='article-survey-choice-contlist']/li[1]/div[@class='article-survey-choice']/div[@class='article-survey-choice-body']/div[@class='article-survey-choice-rb-cont']/label[@class='article-survey-choice-cb-dummy']
  Sleep    1s
  Click Element    //div[@id='button_submit_checkbox']/button[@class='article-survey-button button']
  # lakukan pilih survey 3
  Sleep    1s
  Scroll Element Into View    //div[@id='button_submit_checkbox']/button[@class='article-survey-button button']
  Wait Until Element Is Visible    //div[@id='form_id_survey']/div[3]/ul[@class='article-survey-choice-contlist']/li[2]/div[@class='article-survey-choice']/div[@class='article-survey-choice-body']/div[@class='article-survey-choice-rb-cont']/label[@class='article-survey-choice-cb-dummy']    ${timeout}
  Click Element    //div[@id='form_id_survey']/div[3]/ul[@class='article-survey-choice-contlist']/li[2]/div[@class='article-survey-choice']/div[@class='article-survey-choice-body']/div[@class='article-survey-choice-rb-cont']/label[@class='article-survey-choice-cb-dummy']
  Sleep    1s
  Click Element    //div[@id='button_submit_checkbox']/button[@class='article-survey-button button']
  # lakukan pilih survey 4
  Sleep    1s
  Scroll Element Into View    //div[@id='button_submit_checkbox']/button[@class='article-survey-button button']
  Wait Until Element Is Visible    //div[@id='form_id_survey']/div[4]/ul[@class='article-survey-choice-contlist']/li[3]/div[@class='article-survey-choice']/div[@class='article-survey-choice-body']/div[@class='article-survey-choice-rb-cont']/label[@class='article-survey-choice-cb-dummy']    ${timeout}
  Click Element    //div[@id='form_id_survey']/div[4]/ul[@class='article-survey-choice-contlist']/li[3]/div[@class='article-survey-choice']/div[@class='article-survey-choice-body']/div[@class='article-survey-choice-rb-cont']/label[@class='article-survey-choice-cb-dummy']
  Sleep    1s
  Click Element    //div[@id='button_submit_checkbox']/button[@class='article-survey-button button']
  # lihat result
  Wait Until Element Is Visible    //div[@id='article_survey_thanks']     ${timeout}
  # scroll sampai bawah
  Scroll Element Into View    Xpath=//h2[contains(text(),'Rekomendasi Artikel')]

Cari Artikel Trivia
  Wait Until Element Is Visible    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  Click Element    //div[@id='wrapper']//nav[@class='menu']/ul//a[@href='javascript:;']
  # masuk ke halaman search
  Wait Until Element Is Visible    //input[@id='q_keyword']   ${timeout}
  Input Text    //input[@id='q_keyword']    ${judul_trivia}
  # pilih selengkapnya di artikel
  Wait Until Element Is Visible    //a[@id='query_one_href']   ${timeout}
  Click Element    //a[@id='query_one_href']
  # masuk ke halaman artikel
  Wait Until Element Is Visible    Xpath=//a[contains(text(),'${judul_trivia}')]    ${timeout}
  Click Element    Xpath=//a[contains(text(),'${judul_trivia}')]
  # masuk ke detil artikel
  Wait Until Element Is Visible    Xpath=//h1[contains(text(),'${judul_trivia}')]     ${timeout}
  # hide video
  Wait Until Element Is Visible    //div[@id='slideOutId']    ${timeout}
  Click Element    //div[@id='slideOutId']
  # jawab kuis 1
  Scroll Element Into View    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]//label[.='Kamu tidak berhenti makan']
  Wait Until Element Is Visible    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]//label[.='Kamu tidak berhenti makan']    ${timeout}
  Click Element    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]//label[.='Kamu tidak berhenti makan']
  Sleep    1s
  Wait Until Element Is Visible    //div[@id='trivia_result']//a[@title='Berikutnya']     ${timeout}
  Click Element    //div[@id='trivia_result']//a[@title='Berikutnya']
  # jawab kuis 2
  Sleep    1s
  Scroll Element Into View    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[3]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Wait Until Element Is Visible    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[3]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']    ${timeout}
  Click Element    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[3]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Sleep    1s
  Wait Until Element Is Visible    //div[@id='trivia_result']//a[@title='Berikutnya']     ${timeout}
  Click Element    //div[@id='trivia_result']//a[@title='Berikutnya']
  # jawab kuis 3
  Sleep    1s
  Scroll Element Into View    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[1]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Wait Until Element Is Visible    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[1]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']    ${timeout}
  Click Element    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[1]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Sleep    1s
  Wait Until Element Is Visible    //div[@id='trivia_result']//a[@title='Berikutnya']     ${timeout}
  Click Element    //div[@id='trivia_result']//a[@title='Berikutnya']
  # jawab kuis 4
  Sleep    1s
  Scroll Element Into View    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[1]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Wait Until Element Is Visible    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[1]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']    ${timeout}
  Click Element    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[1]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Sleep    1s
  Wait Until Element Is Visible    //div[@id='trivia_result']//a[@title='Berikutnya']     ${timeout}
  Click Element    //div[@id='trivia_result']//a[@title='Berikutnya']
  # jawab kuis 5
  Sleep    1s
  Scroll Element Into View    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Wait Until Element Is Visible    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']    ${timeout}
  Click Element    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Sleep    1s
  Wait Until Element Is Visible    //div[@id='trivia_result']//a[@title='Berikutnya']     ${timeout}
  Click Element    //div[@id='trivia_result']//a[@title='Berikutnya']
  # jawab kuis 6
  Sleep    1s
  Scroll Element Into View    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Wait Until Element Is Visible    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']    ${timeout}
  Click Element    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Sleep    1s
  Wait Until Element Is Visible    //div[@id='trivia_result']//a[@title='Berikutnya']     ${timeout}
  Click Element    //div[@id='trivia_result']//a[@title='Berikutnya']
  # jawab kuis 7
  Sleep    1s
  Scroll Element Into View    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Wait Until Element Is Visible    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']    ${timeout}
  Click Element    //form[@id='form_id_trivia']/div[@class='article-quiz3-choice-cont']/div[2]/div[@class='article-quiz3-choice-body']/div[@class='article-quiz3-choice-rb-cont']/label[@class='article-quiz3-choice-rb-dummy form_submit_trivia']
  Sleep    1s
  # lihat hasil
  Wait Until Element Is Visible    //div[@id='trivia_result']//a[@title='Lihat hasil']     ${timeout}
  Click Element    //div[@id='trivia_result']//a[@title='Lihat hasil']
  Sleep    1s
  Scroll Element Into View    //div[@id='trivia_result']//a[@title='Ulangi Kembali']
  Wait Until Element Is Visible    //div[@id='trivia_result']//a[@title='Ulangi Kembali']     ${timeout}
  Click Element    //div[@id='trivia_result']//a[@title='Ulangi Kembali']
