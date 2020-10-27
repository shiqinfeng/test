
#获取一段音频

import requests

r=requests.get('https://m801.music.126.net/20200901133528/3410ebcd200ea8a5ae115b0f8d75b041/jdyyaac/060f/055f/035e/1e9c9ba54d25cbee2d9c4462119eb5b0.m4a')

with open('走天涯-腾格尔.mp3','wb') as f:

    f.write(r.content)
