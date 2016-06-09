js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', '.nvmrc', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.scss')
  ]

  scss:
    includePaths: [
      './assets/css/vendor'
      './node_modules/'
    ]
    # outFile: './public/css/app.css'
    outputStyle: 'nested' # nested (default), expanded, compact, compressed
    sourceMap: true
    sourceMapEmbed: true
    # indentedSyntax: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true

  server:
    clean_urls: true
