module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-jasmine'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  gruntConfig =
    coffee:
      hydrangea:
        files: [
          expand: true
          flatten: false
          cwd: 'src'
          src: ['**/*.coffee']
          dest: 'lib'
          ext: '.js'
        ]
      jasmine:
        files: [
          expand: true
          flatten: false
          cwd: 'spec/cs'
          src: ['**/*.coffee']
          dest: 'spec/js'
          ext: '.js'
        ]
    jasmine:
      hydrangea:
        src: 'lib/**/*.js'
        options:
          template: require('grunt-template-jasmine-requirejs')
          specs: ['spec/**/*.js']
          keepRunner: true
    watch:
      src:
        files: 'src/**/*.coffee'
        tasks: ['coffee:hydrangea']
      spec:
        files: 'spec/**/*.coffee'
        tasks: ['coffee:jasmine']
      jasmine:
        files: '<%= jasmine.hydrangea.options.specs %>'
        tasks: ['jasmine:hydrangea']
      hydrangea:
        files: '<%= jasmine.hydrangea.src %>'
        tasks: ['jasmine:hydrangea']
  grunt.initConfig gruntConfig
