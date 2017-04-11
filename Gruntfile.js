module.exports = function(grunt){
	require('load-grunt-tasks')(grunt);

	grunt.initConfig({
		sass: {
			/*options: {
            	sourceMap: true
	        },*/
			dist: {
				files: {
					'source/build/css/style.css': [
						'source/css/style.scss'
					]
					// 'path/to/another.css': ['path/to/sources/*.styl', 'path/to/more/*.styl'] // compile and concat into single file 
				}
			}
		},
		uglify: {
			dist: {
				files: {
					'source/build/js/aio.js': [
						'source/js/header-animate.js'
					]
				}
			}
		},
		cssmin: {
			target: {
				files: [{
					expand: true,
					cwd: 'source/build/css',
					src: ['*.css', '!*.min.css'],
					dest: 'source/build/css'/*,
					ext: '.min.css'*/
				}]
			}
		},
		copy: {
			fonts: {
				expand: true,
				cwd: 'source/fonts/',
				src: ['**'],
        		dest: 'source/build/fonts'
			},
			fa: {
				src: ['source/css/lib/_font-awesome.css'],
				dest: 'source/build/css/font-awesome.css'
			}
		},
		watch: {
			css: {
				files: 'source/css/**/**.scss',
				tasks: ['sass']
			},
			js: {
				files: 'source/js/**/**.js',
				tasks: ['uglify']
			}
		}
	});

	grunt.event.on('watch', function(action, filepath, target) {
    	grunt.log.writeln(target + ': ' + filepath + ' has ' + action);
    });
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-cssmin');

	grunt.registerTask('dev', [
		'sass',
		'uglify',
		'copy',
		'watch'
	]);

	grunt.registerTask('default', [
		'sass',
		'copy',
		'uglify',
		'cssmin'
	]);
}