module.exports = {
  env: {
    es2021: true,
    node: true,
  },
  extends: ['airbnb-base'],
  parserOptions: {
    ecmaVersion: 'latest',
    sourceType: 'module',
  },
  rules: {
    'linebreak-style': 'off',
    'no-console': 'off',
    'import/extensions': 'off',
    'object-curly-newline': 'off',
    'implicit-arrow-linebreak': 'off',
  },
};
