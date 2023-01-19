## 🔍 A/B Test 결과 검증
- MODE 원본 링크 : https://mode.com/sql-tutorial/validating-ab-test-results/
- 분석요약 : https://docs.google.com/spreadsheets/d/1rP0XgqHBm3lXxNHFT1nBU20-DuOOCxLd5EiIJGoYxuM/edit?usp=sharing
<br>

<SQL을 통한 데이터 추출>
|No |SQL작성 |추출 파일 |추가작성 |
|:---:|:-------------------:|:-------------------:|:-------------------:|
|1 |[]( ) | |
|2 |[]( ) | |
|3 |[]( ) | |
<br>
<br>

<새롭게 알게된 것>
- control group(대조군) vs treatment group(실험군)
- A/B테스트 결과만 가지고 진행하던 프로젝트를 갈아엎을 것인지? 생각했을 때, 다각도로 살펴봐야하고(metrics 외에도 매출..등등)  
이러한 것을 고려했을 때 현업에서 A/B테스트는 통계검정을 하고 끝이 아니라 이외에도 많은 사람들의 이해관계가 얽혀있는 프로젝트임을 명심해야함.
- a user should not be in both the test and control groups in a given experiment.  
: 실험이 UI관련 테스트이다보니 실험내에서 사용자가 일관된 화면을 봐야함. (예외, 유튜브 추천 알고리즘 : 일관성x)
<br>

<후기>  
  
몰랐던
<br><br>  

<추가적 자료> ☐ or ☑
* [ ] Box and Whisker 기술 블로그(2015/05 자료): [A/B 테스팅이란](https://boxnwhis.kr/2015/01/29/a_b_testing.html)
* [ ] slideshare(권정민-2019/05 자료) : [실무에서 활용하는 A/B테스트](https://www.slideshare.net/cojette/ab-150118831)
* [ ] [A/B 테스트 윤리](https://www.washingtonpost.com/news/monkey-cage/wp/2014/07/03/on-the-ethics-of-facebook-experiments/)
