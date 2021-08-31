module.exports = {
  rules: {
    // indent: 'off',
  },
  parserOptions: {
    ecmaVersion: 2020,
    ecmaFeatures: {
      experimentalDecorators: true,
      jsx: true,
    },
  },
  extends: ['plugin:vue/base'],
  env: {
    es6: true,
  },
};
