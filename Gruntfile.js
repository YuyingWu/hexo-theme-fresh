module.exports = function(grunt){
	require('load-grunt-tasks')(grunt);

	grunt.loadNpmTasks('grunt-contrib-clean');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-cssmin');
	grunt.loadNpmTasks('grunt-contrib-copy');
	// grunt.loadNpmTasks('grunt-contrib-concat');

	grunt.initConfig({
		cssmin: {
			target: {
				files: [{
					expand: true,
					cwd: 'source/build/tmp/css',
					src: ['*.css', '!*.min.css'],
					dest: 'source/build/css/pages',
					ext: '_201706181942.css'
				}]
			}
		},
		watch: {
			css: {
				files: 'source/build/tmp/css/**.css',
				tasks: ['clean', 'cssmin']
			}
		},
		clean: {
			css: ['source/build/css/pages/**']
		},
		copy: {
			comment: {
				nonull: true,
				src: 'source/js/comment.js',
				dest: 'source/build/js/comment.js'
			},
			fonts: {
				expand: true,
				cwd: 'source/fonts/',
			    src: ['**'],
			    dest: 'source/build/fonts/'
			}
		}
	});

	grunt.registerTask('dev', [
		'watch'
	]);

	grunt.registerTask('default', [
		/*'sass',
		'copy',
		'concat',*/
		//'clean',
		'copy',
		'cssmin'/*,
		'uglify'*/
	]);
}