### IG 소개

본 IG는 암 질환 진료정보 교류 FHIR IG로서 진료정보교류에 활용할 수 있는 암 공통 항목에 관한 정보를 FHIR 기반으로 프로파일링한 결과물임

### 핵심 내용

+ 보건의료정보원이 고시한 12개 표준항목자료(진료기록요약지, CRS 기준)를 기반
- 암 공통 항목에 관한 정보를 반영하고 진료정보 교류 위주의 정보를 고려
- 특정 종류가 아닌 암 공통 항목에 관한 정보를 반영
- 암병기에 항암제 용량 등 암 질환의 특징을 반영하는 정보를 포함
- 해당 프로파일에 해당하는 Value Set정의
- 해당 프로파일에 적용 가능한 샘플데이터 제시
- 임상의 검토의견 제시

### 개발 프로세스

- 건강정보 고속도로에서 정의한 12개의 FHIR 리소스 타입 반영
- FHIR 리소스 타입: Patient, Organization, Practitioner, PractitionerRole, Condition, Encounter, MedicationRequest, Observation, DiagnosticReport, Procedure, AllergyIntolerance, DocumentReference
- 미국의 MCODE FHIR IG를 분석하여 연관된 프로파일 및 Value set 재사용 (MCODE란 MITRE Corporation이 주도적으로 개발한 최소 공통 암 관련 정보 모델로서 minimal Common Oncology Data Elements의 약자임)  
- 추가적으로 종양학 관련 임상의의 검토를 통해 의견 반영 