## ๐ ์ฃผ๊ฐ ํ์ฑ ์ ์  ๊ฐ์ ์์ธ ๋ถ์
- MODE ์๋ณธ ๋งํฌ : https://mode.com/sql-tutorial/a-drop-in-user-engagement/
- ๋ถ์์์ฝ : https://docs.google.com/spreadsheets/d/1Ju4e-RfsEl1awf7EyO0MpWQAtX_ZDhIBcz2Xm6rwJJM/edit?usp=sharing
<br>

<SQL์ ํตํ ๋ฐ์ดํฐ ์ถ์ถ>
|No |SQL์์ฑ |์ถ์ถ ํ์ผ |์ถ๊ฐ์์ฑ |
|:---:|:-------------------:|:-------------------:|:-------------------:|
|1 |[WAU(Weekly Active User)](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/WAU.sql) |[WAU.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/WAU_weekly_active_user.csv) | |
|2 |[ํ์ฑ ์ ์ ](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/active_user.sql) |[active_user.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/active_user.csv) | |
|3 |[email ๊ฑด์ ์ง๊ณ](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/email_count.sql) |[email_count.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/email_count.csv) | |
|4 |[email ํด๋ฆญ ์ง๊ณ](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/email_ctr.sql) |[email_ctr.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/email_ctr.csv) |[ํผ๋ฒํ์ด๋ธ](https://docs.google.com/spreadsheets/d/1MNVUREBgL5kaQXaRzhQg4B-07wPhTzpalIgCv1S0Y7s/edit?usp=sharing) |
<br>

- [join ์ฐธ๊ณ ](https://xod22.tistory.com/149)
<br>

<์๋กญ๊ฒ ์๊ฒ๋ ๊ฒ>
- engagement(์ฐธ์ฌ) : engagement๋ฅผ ์ ์ํ๋ ๋ฒ์๋ ํ์ฌ๋ง๋ค ๋ค๋ฆ
- DAU/WAU/MAU : Daily/Weekly/Monthly active user
- ๋ฐ์ดํฐ๋ฅผ ๋ณด๊ธฐ์  ์์ธํ์์ ์ํ ๊ฐ์ค์ ์ฐ์  ์์ฑ
- growth rate(์ฆ๊ฐ์จ) : ํ์ํ๊ธฐ ์ฌ์ด ์งํ
- cohort users(์ฝํธํธ ์ ์ ) : ์ ์ ๋ฅผ ์ชผ๊ฐ๋ณธ๋ค๋ ๊ฒ์ผ๋ก ์ด ํ๋ก์ ํธ์์๋ ๊ฐ์ ์๊ธฐ๋ณ๋ก ์ ์ ๋ฅผ ์ชผ๊ฐ๋ด
- retention chart(๋ฆฌํ์ ์ฐจํธ) : ์ฌ์ฉ์๋ค์ด ์ผ๋ง๋ ์ ์ง๋๊ณ  ์๋์ง๋ฅผ ๋ณด์ฌ์ฃผ๋ ์ฐจํธ
- ๋ฒ์๊ฐ ๋ค๋ฅธ ๊ฒ์ ํ์ฐจํธ์์ ๋ณผ๋๋ ๋ฐ๋ก ๋ณด๋ ๊ฒ์ด ๋ ์์ธํ ๋ณผ ์ ์์
- digest email
<br>

<ํ๊ธฐ>  
  
๋ชฐ๋๋ ๊ฒ์ ์๋กญ๊ฒ ์๊ฒ๋ ๊ฒ๋ค์ด ๋ง๊ณ  SQL, python์ ๋ค๋ฃฐ์ค๋ง ์์์ง ์ค์  ๊ธฐ์์์๋ ์ด๋ ํ ๋ฐฉ์์ผ๋ก ๋ฐ์ดํฐ๋ถ์์ ์งํํ๋์ง ๋ชฐ๋๋๋ฐ  
๋ถ์์ ์ผ๋ก ์ฌ๊ณ ํ๊ณ  ์ค์  ๋น์ฆ๋์ค ๋ฌธ์ ์ ์ ์ฉํ๋ ๋ฐฉ๋ฒ์ ๋ํด ๋ฐฐ์ธ ์ ์์ด์ ์ฌ๋ฐ๊ฒ ์ฝ์๋ ๊ฒ ๊ฐ๋ค.
<br><br>  

<์ถ๊ฐ์  ์๋ฃ> โ or โ
* [x] ํฌ์คํ์ ํ ๋ธ๋ก๊ทธ: [๊ธฐํ์์ ๋ง์ผํฐ๋ฅผ ์ํ ํ์ฑ์ฌ์ฉ์ ์ด์ ๋ฆฌ](https://team.postype.com/post/9405656)
* [x] ๋น๊ทผ๋ง์ผ ํ ๋ธ๋ก๊ทธ: [ํ์ ์ ์  ์ปค๋ธ (์ค๋ง์ผ ์ปค๋ธ)](https://medium.com/daangn/%ED%8C%8C%EC%9B%8C%EC%9C%A0%EC%A0%80-%EC%BB%A4%EB%B8%8C-%EC%8A%A4%EB%A7%88%EC%9D%BC-%EC%BB%A4%EB%B8%8C-5762ae5854e7)
* [x] ๋ฐ์ดํฐ๋ฆฌ์ ๋ธ๋ก๊ทธ : [ํผ๋ ๋ถ์](https://datarian.io/blog/funnel-analysis)
* [x] ๋ฐ์ดํฐ๋ฆฌ์ ๋ธ๋ก๊ทธ : [๋ฆฌํ์ ๊ฐ์  ์ฌ๋ก-๋ฆฌํ์์ด ์๋ค๋](http://bit.ly/3keSUut)  
-> ๋ฒ์์ ๋ฐ๋ผ ํ์ฑ์ ์ ๋ฅผ ์ ์ค์ ํด์ผ ์ถํ ๋ถ์ ์์ ์๋ฏธ์๋ ๋ถ์์ด ์งํ๋  ์ ์์.
