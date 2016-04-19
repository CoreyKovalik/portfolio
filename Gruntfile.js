module.exports = function(grunt) {

  grunt.initConfig({
    responsive_images: {
      dev: {
        options: {
          engine: 'im',
          sizes: [{
            width: 720,
            height: 360,
            suffix: '_2x',
            quality: 100,
            rename: true,
            aspectRatio: false,
            gravity: 'West'/*
          },{
            width: 450,
            suffix: '_450',
            quality: 100,
            rename: false,
            aspectRatio: true,
          },{
            width: 500,
            suffix: '_500',
            quality: 100,
            rename: false,
            aspectRatio: true,
          },{
            width: 600,
            suffix: '_600',
            quality: 100,
            rename: false,
            aspectRatio: true,*/
          }]
        },
        files: [{
          expand: true,
          src: ['*.{gif,jpg,png}'],
          cwd: 'images_src/',
          dest: 'images/'
        }]
      }
    },
  });

  grunt.loadNpmTasks('grunt-responsive-images');
  grunt.registerTask('default', ['responsive_images']);

};
