// commitlint.config.js

module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    'type-enum': [
      2,
      'always',
      [
        'Chore',
        'Feat',
        'Fix',
        'Docs',
        'Style',
        'Refactor',
        'Test',
        'Build',
      ]
    ],
    'scope-empty': [0], // 작업 영역은 생략 가능
    'subject-case': [2, 'always', 'sentence-case'], // 제목은 문장형으로
    'subject-full-stop': [2, 'never', '.'], // 제목 끝에 마침표 사용 금지
    'type-case': [2, 'always', 'pascal-case'], // 타입을 PascalCase로 제한 (예: Feat, Fix)
    'header-max-length': [2, 'always', 72], // 제목 길이 제한
  },
};
