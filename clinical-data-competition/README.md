# Clinical Data 경진대회 - 비만과 뇌경색의 관계 분석
# Clinical Data コンペティション - 肥満と脳梗塞の関連性分析

## 개요
2024년 한림대학교의료원 주최 Clinical Data 활용 경진대회에 참가하여  
**"비만이 뇌경색 환자의 이상지질혈증에 미치는 영향"**이라는 주제로 분석을 진행하였습니다.

- 주최: 한림대학교 의료AI융합인재양성사업단
- 기간: 2024.09 ~ 2024.11
- 사용 데이터: 춘천성심병원 뇌졸중 환자 비식별 의료데이터

## 概要  
2024年、翰林大学医療院主催「Clinical Data 活用コンペティション」に参加し、  
**肥満が脳梗塞患者の脂質異常症に与える影響** をテーマに分析を行いました。

- 主催：翰林大学 医療AI融合人材育成事業団  
- 期間：2024年9月 ～ 11月  
- データ：春川聖心病院の脳卒中患者に関する匿名化医療データ  

---

## 분석 주제 및 방법

> 비만(BMI)이 뇌경색 환자의 혈중 지질 수치 및 이상지질혈증 발생 위험에 어떤 영향을 미치는가?

### 주요 분석 내용:
- BMI와 지질 변수(LDLC, HDLC, TG, 총 콜레스테롤) 간 **상관관계 분석**
- 이상지질혈증 여부를 종속변수로 한 **로지스틱 회귀 분석**

## 分析テーマと方法  

> 肥満（BMI）は脳梗塞患者の血中脂質値および脂質異常症の発症リスクにどのような影響を与えるか？

### 主な分析内容  
- BMIと脂質指標（LDLC、HDLC、TG、総コレステロール）の**相関関係分析**  
- 脂質異常症の有無を目的変数とした**ロジスティック回帰分析**

---

## 나의 역할 (서지은)
- 의료 데이터를 분석 가능한 형태로 전처리 (결측치 처리, BMI 계산 등)
- 변수별 통계값 요약 (평균, 표준편차 등)
- 분석 과정 중 팀원과 코드 리뷰 및 문서 작성 참여

## 担当内容（ソ・ジウン）  
- 欠損値処理、BMI計算などの前処理  
- 各変数の統計量（平均・標準偏差）を算出  
- チーム内でのコードレビューおよびドキュメント作成  

---

## 사용 기술
- **Python**
  - `pandas` – 데이터프레임 생성, 결측치 처리, BMI 계산, 통계 요약 등
  - `numpy` – 수치 계산 및 배열 연산
  - `statsmodels` – 로지스틱 회귀 모델 구축 및 결과 해석
  - `scipy.stats` – 상관계수 계산 등 기초 통계 분석
- Excel (원시데이터 확인 및 병합)

## 使用技術  

- **Python**
  - `pandas`：データ処理、統計要約、BMI算出  
  - `numpy`：数値計算、配列処理  
  - `scipy.stats`：相関係数の計算  
  - `statsmodels`：ロジスティック回帰分析  
- **Excel**：元データの確認と統合
---

## 분석 결과 요약

| 변수 | 회귀계수 | P-value | 해석 |
|------|----------|---------|------|
| BMI | 0.7298 | 0.039 | 유의미한 양의 영향 |
| LDLC | 2.2347 | 0.000 | 유의미한 양의 영향 |
| HDLC | -12.2395 | 0.000 | 유의미한 음의 영향 |
| TG | 0.3765 | 0.322 | 유의미하지 않음 |
| Total Cholesterol | 0.7025 | 0.044 | 유의미한 양의 영향 |


## 分析結果の要約  

| 変数 | 回帰係数 | P値 | 解釈 |
|------|----------|------|------|
| BMI | 0.7298 | 0.039 | 有意な正の影響 |
| LDLC | 2.2347 | 0.000 | 有意な正の影響 |
| HDLC | -12.2395 | 0.000 | 有意な負の影響 |
| TG | 0.3765 | 0.322 | 有意な影響なし |
| 総コレステロール | 0.7025 | 0.044 | 有意な正の影響 |
---

## 느낀 점

이번 프로젝트를 통해 **"데이터 전처리의 중요성"**을 깊이 느꼈습니다. 
단순한 수치만 보기보다 **의학적 맥락과 의미를 이해한 후 전처리**해야 분석 결과가 신뢰성을 가질 수 있음을 느꼈습니다.  
또한 의료지식에 대한 공부가 부족했기 때문에, **도메인 지식 없이 통계적 해석이 얼마나 위험할 수 있는지**를 경험하며,  
앞으로 분석할 때 관련 분야의 배경지식을 꾸준히 함께 학습해야겠다는 다짐을 하게 되었습니다.

## 感想  

このプロジェクトを通じて、**「データ前処理の重要性」** を強く実感しました。  
単なる数値処理だけでなく、**医学的背景を理解したうえで分析を行うこと**が信頼性のある結果に繋がると学びました。  
また、医療分野におけるドメイン知識の必要性を痛感し、今後は統計・AI技術だけでなく、背景知識の習得にも取り組みたいと考えています。

---

## 참고자료

- [보고서 PDF 보기](./2024_한림대의료원_Clinical_data_활용_경진대회_지희팀결과보고서.pdf)
- [분석 코드 (.ipynb)](./clinicaldata.ipynb)

## 参考資料  

- [レポート（PDF）を見る](./2024_한림대의료원_Clinical_data_활용_경진대회_지희팀결과보고서_JP.pdf)  
- [分析コード（.ipynb）を見る](./clinicaldata.ipynb)

---

> ※ 해당 프로젝트는 실제 의료 데이터를 기반으로 하였으며, 모든 데이터는 비식별화된 상태에서 활용되었습니다.

> ※ 本プロジェクトで使用したデータは、すべて匿名化された医療データです。
