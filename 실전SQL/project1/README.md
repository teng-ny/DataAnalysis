## 🔍 주간 활성 유저 감소 원인 분석
- MODE 원본 링크 : https://mode.com/sql-tutorial/a-drop-in-user-engagement/
- 분석요약 : https://docs.google.com/spreadsheets/d/1Ju4e-RfsEl1awf7EyO0MpWQAtX_ZDhIBcz2Xm6rwJJM/edit?usp=sharing
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

<후기>  
  
몰랐던 것을 새롭게 알게된 것들이 많고 SQL, python을 다룰줄만 알았지 실제 기업에서는 어떠한 방식으로 데이터분석을 진행하는지 몰랐는데  
분석적으로 사고하고 실제 비즈니스 문제에 적용하는 방법에 대해 배울 수 있어서 재밌게 읽었던 것 같다.
  
<추가적 자료>   
- ☑ 포스타입 팀 블로그: [기획자와 마케터를 위한 활성사용자 총정리](https://team.postype.com/post/9405656)
- ☐ 당근마켓 팀 블로그: [파워 유저 커브 (스마일 커브)](https://medium.com/daangn/%ED%8C%8C%EC%9B%8C%EC%9C%A0%EC%A0%80-%EC%BB%A4%EB%B8%8C-%EC%8A%A4%EB%A7%88%EC%9D%BC-%EC%BB%A4%EB%B8%8C-5762ae5854e7)
- ☐ 데이터리안 블로그 : [퍼널 분석](https://datarian.io/blog/funnel-analysis)
- ☐ 데이터리안 블로그 : [리텐션 개선-리텐션이 웃다니](http://bit.ly/3keSUut)
