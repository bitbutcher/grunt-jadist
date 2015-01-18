###
 * grunt-jadist
 * https://github.com/github/grunt-jadist
 *
 * Copyright (c) 2015 Sean M. Duncan
 * Licensed under the MIT license
###

module.exports = (grunt) ->

  grunt.registerMultiTask 'jadist', 'Precomile jade views', ->
    jadist = require 'jadist'
    paths = []
    paths.push src for src in file.src for file in @files
    jadist.compile @data.files[0].dest, @data.files[0].cwd, paths
