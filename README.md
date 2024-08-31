# FocusMates
Focus on your work


## 커밋 메시지 컨벤션

프로젝트에서 일관된 커밋 메시지 작성 규칙을 따르기 위해 다음과 같은 컨벤션을 사용합니다:

### 커밋 메시지 형식

커밋 메시지는 다음과 같은 형식을 따라야 합니다:

### 타입(Type)

다음 중 하나의 타입을 사용합니다:

- `Chore`: 설정 또는 유지보수 작업
- `Feat`: 새로운 기능 추가
- `Fix`: 버그 수정
- `Docs`: 문서 관련 작업
- `Style`: 코드 포맷팅 관련 작업 (기능 변경 없음)
- `Refactor`: 코드 리팩토링 (기능 변경 없음)
- `Test`: 테스트 코드 추가 또는 수정
- `Build`: 빌드 시스템 또는 외부 종속성 수정

### 작업 영역(Scope)

작업 영역은 선택 사항이며, 작업이 특정 파일이나 모듈에 관련된 경우 해당 파일이나 모듈을 명시합니다. 예를 들어:

- `Chore(FocusMates): project FocusMates 초기 설정`
- `Fix(UI): 로그인 화면에서 버튼 클릭 오류 수정`

작업 영역을 생략할 수도 있습니다:

- `Chore: 프로젝트 초기 설정`
- `Fix: 로그인 오류 수정`

### 메시지 내용(Subject)

- 메시지는 명령형으로 작성합니다 (예: `추가함`, `수정함`이 아니라 `추가`, `수정`).

## 커밋 메시지 컨벤션 린트 설정 방법

프로젝트에 참여하는 모든 협업자는 아래의 방법을 따라 Husky와 Commitlint를 설정하여 커밋 메시지 컨벤션을 준수할 수 있습니다.

### 자동 설정 스크립트 실행

1. 먼저, 프로젝트를 clone한 후 프로젝트 디렉토리로 이동합니다:

    ```bash
    git clone https://github.com/jeonghi/FocusMates.git
    cd FocusMates
    ```

2. 프로젝트 루트에 있는 `setup-husky-commitlint.sh` 스크립트를 실행하여 Husky와 Commitlint를 설정합니다:

    ```bash
    ./setup-husky-commitlint.sh
    ```

   이 스크립트는 `husky`와 `commitlint`를 설치하고, 커밋 메시지 컨벤션을 자동으로 설정해줍니다.

3. 스크립트가 성공적으로 실행되면, 이후 커밋을 할 때 자동으로 커밋 메시지가 컨벤션에 맞는지 확인됩니다.

### 의존성

- **Node.js**: 이 스크립트는 `npm`을 사용하므로, [Node.js](https://nodejs.org/)가 설치되어 있어야 합니다.

### 커밋 메시지 예시

다음은 규칙에 맞는 커밋 메시지 예시입니다:

- `Chore(FocusMates): 프로젝트 FocusMates 초기 설정`
- `Fix(UI): 로그인 화면에서 버튼 클릭 오류 수정`
- `Docs: README에 사용법 추가`


## 문의

프로젝트와 관련하여 궁금한 점이 있으면 [여기에 문의](mailto:jpark0902@kookmin.ac.kr)해주세요.
