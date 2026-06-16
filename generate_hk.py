import os

images = [
'gen-h-z7941383856413_8401b6b83a1eaab0657de8bc6c0d61be.jpg',
'gen-h-z7941383872694_a4c6c0c68ef8aa32c34686bf6dfd0c95.jpg',
'gen-h-z7941383876888_f730eea74c3cae18429e7725adb1968b.jpg',
'gen-h-z7941383886841_4cacd9ec6100788a9793c8fcd53a9caa.jpg',
'gen-h-z7941383892509_626954fe8d7f8b6b74393c84aa6d1041.jpg',
'gen-h-z7941383903353_64e6cbb34f3a65d597cee8839fe762b4.jpg',
'gen-h-z7941383967392_5b31b817fbf291eb7235ce121baf5f6e.jpg',
'gen-h-z7941383978524_816cae8efff67859c9aee52d45bf68a1.jpg',
'gen-h-z7941383981984_244960b787ce5007158cc01c096d1756.jpg',
'gen-h-z7941383995656_c4048498caa53be5dfb6ee09e2984914.jpg',
'gen-h-z7941384007264_4f17942965a6bea2cb06cd47c534c724.jpg',
'gen-h-z7941384013666_0ef705f740f36cb68401be910e40f342.jpg',
'gen-h-z7941384015228_c6e1fb2a55ae6d6b1791407dfc952b81.jpg',
'gen-h-z7941384025882_dbbe15960ef3e20a193e304a4cc05a0c.jpg',
'gen-h-z7941384034338_bce23313af6e9103e6d83770567f876a.jpg',
'gen-h-z7941384044899_287978fb3395d2d0e4771d002034da37.jpg',
'gen-h-z7941384055369_a612507d39178e8170c29bbfa6a0b6de.jpg',
'gen-h-z7941384059328_51c3f9b4660d0983732c15642f608b49.jpg',
'gen-h-z7941384071521_dad6f17d450a79b0a53335835185b617.jpg',
'gen-h-z7941384085862_e6a91113580c7c2c6a43fcbd415b920b.jpg',
'gen-h-z7941384116991_4df22e148e307f897ed44d9fad65a60d.jpg',
'gen-h-z7941384129875_e2583d0f4ec5d80f287df35a52a4654b.jpg',
'gen-h-z7941384138850_67ca2f9810656b02e276ad56ce701464.jpg',
'gen-n-z7941383908862_d366ec23013397b7ee3c9ca73b62bde2.jpg',
'gen-n-z7941383914898_874d16d250e07eb5f7f3fbdda21668a1.jpg',
'gen-n-z7941383928624_139ba1b28f316536e693faa980ae315c.jpg',
'gen-n-z7941383942262_ad97bd884fa54aefecc67280d5b525db.jpg',
'gen-n-z7941383948487_56b4daeed6839fb5f62f0ab0cec186b2.jpg',
'gen-n-z7941383950028_c955d9326f70f57de1bacee82e329401.jpg',
'gen-n-z7941383960978_8f9790bab1f84701f29729fad7dd0b31.jpg',
'gen-n-z7941384094694_d71df528eb3b8d515f27e5081d89db39.jpg',
'gen-n-z7941384095821_b649cd03f6eae54c4d4c276304cc0e3c.jpg',
'gen-n-z7941384109030_bb82bb52caccaacb63f0e6f4f269999d.jpg'
]

html = []
html.append('            <!-- Card HK Moments -->')
html.append('            <div class=\"col-md-4 mb-4\">')
html.append('              <div class=\"card h-100 bg-transparent border-light\">')
html.append('                <div id=\"carouselHK\" class=\"carousel slide\" data-ride=\"carousel\" data-interval=\"false\">')
html.append('                  <ol class=\"carousel-indicators\">')
for i in range(len(images)):
    active = ' class=\"active\"' if i == 0 else ''
    html.append(f'                    <li data-target=\"#carouselHK\" data-slide-to=\"{i}\"{active}></li>')
html.append('                  </ol>')
html.append('                  <div class=\"carousel-inner\">')

for i, img in enumerate(images):
    active = ' active' if i == 0 else ''
    html.append(f'                    <div class=\"carousel-item{active}\">')
    html.append(f'                      <a href=\"./images/{img}\" data-fancybox=\"gallery-hk\">')
    html.append(f'                        <img src=\"./images/{img}\" class=\"card-img-top rounded\" alt=\"Hong Kong Moments\">')
    html.append(f'                      </a>')
    html.append(f'                    </div>')

html.append('                  </div>')
html.append('                  <a class=\"carousel-control-prev\" href=\"#carouselHK\" role=\"button\" data-slide=\"prev\">')
html.append('                    <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>')
html.append('                    <span class=\"sr-only\">Previous</span>')
html.append('                  </a>')
html.append('                  <a class=\"carousel-control-next\" href=\"#carouselHK\" role=\"button\" data-slide=\"next\">')
html.append('                    <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>')
html.append('                    <span class=\"sr-only\">Next</span>')
html.append('                  </a>')
html.append('                </div>')
html.append('                <div class=\"card-body\">')
html.append('                  <p class=\"card-text small\">Some moments at <strong>Hong Kong</strong>.</p>')
html.append('                </div>')
html.append('              </div>')
html.append('            </div>\n')

with open('temp_hk_carousel.txt', 'w') as f:
    f.write('\n'.join(html))
