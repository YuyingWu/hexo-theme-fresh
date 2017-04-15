module.exports = function(grunt){
	require('load-grunt-tasks')(grunt);

	grunt.initConfig({
		babel: {
	        options: {
	            presets: [
	                'babel-preset-es2015'
	            ]
	        },
	        dist: {
	            files: {
	                'source/build/js/test.js': 'source/js/test.es'
	            }
	        },
	        test: {
	            files: {
	                'source/build/js/test.js': 'source/js/test.es'
	            }
	        }
	    },
		sass: {
			/*options: {
            	sourceMap: true
	        },*/
	        /*dist: {
	        	files: {
	        		'source/build/css/post.css': [
						'source/css/page/_post.scss'
					]
	        	}
	        }*/
			dist: {
				files: {
					'source/build/css/post.css': [
						'source/css/post.scss'
					],
					'source/build/css/archive.css': [
						'source/css/archive.scss'
					],
					'source/build/css/index.css': [
						'source/css/index.scss'
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
			},
			es: {
				files: 'source/js/**/**.es',
				tasks: ['babel']
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
		'watch',
		'babel'
	]);

	grunt.registerTask('default', [
		'sass',
		'copy',
		'cssmin',
		'babel',
		'uglify'
	]);
}