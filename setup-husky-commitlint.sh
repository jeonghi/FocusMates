#!/bin/bash

# 프로젝트 루트 디렉토리로 이동
cd "$(dirname "$0")"

# Node.js 및 NPM이 설치되어 있는지 확인
if ! command -v npm &> /dev/null
then
    echo "npm이 설치되어 있지 않습니다. Node.js를 설치한 후 다시 시도하십시오."
    exit 1
fi

# package.json이 없는 경우 초기화
if [ ! -f "package.json" ]; then
    echo "package.json이 없습니다. npm init으로 초기화합니다."
    npm init -y
fi

# Husky와 Commitlint 설치
echo "Husky와 Commitlint 설치 중..."
npm install --save-dev husky @commitlint/{config-conventional,cli}

# Husky 초기화
echo "Husky 초기화 중..."
npx husky install

# 외부 commitlint 설정 파일 확인
CONFIG_FILE="commitlint.config.js"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "오류: $CONFIG_FILE 파일이 존재하지 않습니다. 설정 파일을 생성하거나 경로를 확인하십시오."
    exit 1
fi

# commit-msg 훅 수동 추가
echo "commit-msg 훅 수동으로 추가 중..."
mkdir -p .husky
echo '#!/bin/sh' > .husky/commit-msg
echo 'npx --no-install commitlint --edit "$1"' >> .husky/commit-msg

# commit-msg 파일에 실행 권한 부여
chmod +x .husky/commit-msg

echo "Husky와 Commitlint가 성공적으로 설정되었습니다."
