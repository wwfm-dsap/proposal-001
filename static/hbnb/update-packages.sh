#!/bin/bash

echo "Starting package updates..."

# Clean start
rm -rf node_modules package-lock.json
npm cache clean --force

# Install specific updates first
npm install @babel/plugin-transform-unicode-property-regex --save-dev
npm install @babel/plugin-transform-optional-catch-binding --save-dev
npm install @babel/plugin-transform-json-strings --save-dev
npm install @babel/plugin-transform-dynamic-import --save-dev
npm install @sideway/address --save-dev
npm install joi --save-dev
npm install @babel/eslint-parser --save-dev
npm install @babel/plugin-transform-optional-chaining --save-dev
npm install @babel/plugin-transform-numeric-separator --save-dev
npm install @babel/plugin-transform-nullish-coalescing-operator --save-dev
npm install @babel/plugin-transform-class-properties --save-dev
npm install @babel/plugin-transform-async-generator-functions --save-dev
npm install @babel/plugin-transform-object-rest-spread --save-dev

# Update critical packages
npm install --save-dev html-webpack-plugin@latest
npm install --save-dev webpack-dev-server@latest
npm install --save-dev css-loader@latest
npm install --save-dev postcss@latest
npm install --save-dev react-scripts@latest
npm install --save-dev eslint-webpack-plugin@latest

# Update security-critical packages
npm install tough-cookie@latest --save-dev
npm install node-notifier@latest --save-dev
npm install serialize-javascript@latest --save-dev
npm install shell-quote@latest --save-dev
npm install sockjs@latest --save-dev
npm install terser@latest --save-dev
npm install webpack-dev-middleware@latest --save-dev
npm install yargs-parser@latest --save-dev

# Final fixes
npm audit fix --force

# Clean up
npm prune

echo "Update complete! Please check 'npm audit' for results."
