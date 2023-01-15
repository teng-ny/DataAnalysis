## 🔍 주간 활성 유저 감소 원인 분석
- MODE 원본 링크 : https://mode.com/sql-tutorial/a-drop-in-user-engagement/
- 분석요약 : https://docs.google.com/spreadsheets/d/1Ju4e-RfsEl1awf7EyO0MpWQAtX_ZDhIBcz2Xm6rwJJM/edit?usp=sharing
<br>

<새롭게 알게된 것>
- engagement(참여) : engagement를 정의하는 범위는 회사마다 다름
- DAU/WAU/MAU : Day/Weekly/Monthly active user
- 데이터를 보기전 원인파악을 위한 가설을 우선 작성
- growth rate(증가율) : 파악하기 쉬운 지표
- cohort users(코호트 유저) : 유저를 쪼개본다는 것으로 이 프로젝트에서는 가입 시기별로 유저를 쪼개봄
- retention chart(리텐션 차트) : 사용자들이 얼마나 유지되고 있는지를 보여주는 차트
- 범위가 다른 것을 한차트에서 볼때는 따로 보는 것이 더 자세히 볼 수 있음
- digest email
<br>

<SQL을 통한 데이터 추출>
|No |SQL작성 |추출 파일 |추가작성 |
|:---:|:-------------------:|:-------------------:|:-------------------:|
|1 |[WAU(Weekly Active User)](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/WAU.sql) |[WAU.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/WAU_weekly_active_user.csv) | |
|2 |[활성 유저](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/active_user.sql) |[active_user.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/active_user.csv) | |
|3 |[email 건수 집계](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/email_count.sql) |[email_count.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/email_count.csv) | |
|4 |[email 클릭 집계](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/email_ctr.sql) |[email_ctr.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project1/email_ctr.csv) |[피벗테이블](https://docs.google.com/spreadsheets/d/1MNVUREBgL5kaQXaRzhQg4B-07wPhTzpalIgCv1S0Y7s/edit?usp=sharing) |
<br>

- [join 참고](https://xod22.tistory.com/149)
