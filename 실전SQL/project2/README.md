## 🔍 검색 기능 분석
- MODE 원본 링크 : https://mode.com/sql-tutorial/understanding-search-functionality/
- 분석요약 : [자동완성검색(autocomplete)과 일반검색(full search)](https://docs.google.com/spreadsheets/d/1LDergteTn5GMszi77UfpWVWJYBD4u5mTiWAdpjG4eZc/edit?usp=sharing)
<br>

<SQL을 통한 데이터 추출>
|No |SQL작성 |추출 파일 |추가작성 |
|:---:|:-------------------:|:-------------------:|:-------------------:|
|1 |[세션 서브쿼리 이해](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project2/1_session_sub.sql) |[session_sub.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project2/1_session_sub.csv) |[세션 서브쿼리 추출](https://docs.google.com/spreadsheets/d/1slhUySs4rR9Z8wK6vQSQdPk4947LbCLfb52zIEFPtQc/edit?usp=sharing) |
|2 |[세션의 시작과 끝](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project2/2_session_where_case.sql) |[session_where_case.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project2/2_session_where_case.csv) | |
|3 |[세션별 시간 min, max 추출](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project2/3_session_select.sql) |[session_select.csv](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%8B%A4%EC%A0%84SQL/project2/3_session_select.csv) | |
<br>
<br>  

<새롭게 알게된 것>  
- autocomplete(자동완성검색)
- full search(일반검색)
- 로그가 남는 시점에 대해 정확히 파악하고 있어야 분석시 오해가 생기지 않음(사전조사 후 분석진행)
- quantitatively(정량적) : 분석가는 문제를 정량적으로 수치화할 수 있어야함.
- 네이버/구글/인스타그램/페이스북과 같은 플랫폼에서 검색경험이 만족스러웠는지, 내가 검색기능을 얼마나 사용하는지, 경험에 대한 만족을 어떻게하면 정량화할 수 있을지 생각해보기
- 데이터분석을 통해 도출한 개선안을 어떻게 측정할 것인지? 효과측정에 대한 고민이 선행되어야함.
- full search 시, 검색결과를 한건도 클릭하지 않은 세션이 54.29%로 절반이상임. 하지만 이것이 안좋은 수치라고 할 수 없음.  
예를들어 구글은 70%가 이에 해당함. 이렇게 분석가의 주관적인 판단보다는 항상 **비교군**이 있는 것이 분석 결과를 해석하는데 좋음.  
비교군을 만들기 어려우니 [업계 research] or [다른 product는 어떤식으로 하고있는지] 정확한 수치는 아니더라도 귀동냥으로라도 많이 들어놓는 것이 중요!
- 다른사람의 분석을 볼 때 있는 그대로 수용할 것이 아니라 관점을 덧붙여서 비판적으로 바라보는 것도 중요  
(ex, 이 그룹에 대해 데이터가 충분히 있는지? 앞 분석결과와 뒤에 분석결과를 엮어서 봤을 때도 이러한 결과를 낼 수 있는지?)
<br>  

<후기>   
  
검색엔진도 고객의 검색 목적에 맞게 뜯어서 분석을 할 수 있다는 것을 알게됨. 새로운 시각에서 바라볼 수 있게됨.  
분석해놓은 자료를 비판해보면서 데이터를 이렇게 봐야하는구나 하는 관점을 기르는 기회였던 것 같다.
<br><br>    

<추가적 자료> ☐ or ☑    
* [x] <린 분석> 266 페이지의 '기능을 구현하기 전에 자신에게 물어봐야 할 7가지 질문(Seven Questions to Ask Yourself Before Building a Feature)'
* [ ] <린분석>
<br>  

<SQL 키보드 단축키>
|단축키 |설명 |
|:---:|:-------------------:|
|한줄 주석 |-- |
|여러줄 주석 |셀 선택 후 ctrl+/ |
|들여쓰기 |Tab |
|내어쓰기 |Shift+Tab |
