module.exports = {
  dist: {
    options: {
      sourceMap: false,
      outputStyle: 'compressed'
    },
    files: [{
      expand: true,
      src: [
        'node_modules/cartoassets/src/scss/utilities/*.scss',
        'node_modules/cartoassets/src/scss/components/*.scss',
        'node_modules/perfect-scrollbar/**/*.scss',
        'node_modules/cartodb.js/themes/**/*.scss',
        'themes/scss/**/*.scss'
      ],
      dest: '.tmp/scss',
      ext: '.css'
    }]
  }
}
