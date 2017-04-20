module.exports = function(grunt){
	require('load-grunt-tasks')(grunt);

	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-cssmin');
	grunt.loadNpmTasks('grunt-contrib-concat');

	grunt.initConfig({
		concat: {
			options: {
				separator: ';',
			},
			dist: {
				src: [
					'source/build/js/modules.js',
					'source/build/js/main.js'
				],
				dest: 'source/build/js/aio.js'
			},
		},
		babel: {
	        options: {
	            presets: [
	                'babel-preset-es2015'
	            ]
	        },
	        dist: {
	            files: {
	                'source/build/js/modules.js': 'source/js/modules/**.js',
	                'source/build/js/main.js': 'source/js/main.js'
	            }
	        }
	    },
		sass: {
			/*options: {
            	sourceMap: true
	        },*/
			dist: {
				files: {
					'source/build/css/post_201704202205.css': [
						'source/css/post.scss'
					],
					'source/build/css/archive_201704202205.css': [
						'source/css/archive.scss'
					],
					'source/build/css/index_201704202205.css': [
						'source/css/index.scss'
					]
				}
			}
		},
		uglify: {
			dist: {
				files: {
					'source/build/js/aio_201704202205.js': [
						'source/build/js/**.js'
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
				src: ['source/css/lib/_iconfont.css'],
				dest: 'source/build/css/iconfont_201704202205.css'
			},
			lib: {
				expand: true,
				cwd: 'source/lib/',
				src: '**',
				dest: 'source/build/js/lib'
			}
		},
		watch: {
			css: {
				files: 'source/css/**/**.scss',
				tasks: ['sass']
			},
			js: {
				files: 'source/js/**/**.js',
				tasks: ['babel', 'concat']
			}
		}
	});

	grunt.event.on('watch', function(action, filepath, target) {
    	grunt.log.writeln(target + ': ' + filepath + ' has ' + action);
    });

	grunt.registerTask('dev', [
		'sass',
		'copy',
		'babel',
		'concat',
		'watch'
	]);

	grunt.registerTask('default', [
		'sass',
		'copy',
		'babel',
		'concat',
		'cssmin',
		'uglify'
	]);
}