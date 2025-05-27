module.exports = function (grunt)
{
    'use strict';

    // Load all Grunt tasks.
    require('load-grunt-tasks')(grunt);

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        // Uglify and copy JavaScript files from `node_modules` and from `src/` to `assets/js/`.
        uglify: {
            dist: {
                files: [
                    {
                        'assets/js/search.js': [
                            'node_modules/jquery/dist/jquery.js',
                            'node_modules/lunr/lunr.js',
                            'src/search.js'
                        ]
                    }
                ]
            }
        }

    });

    // Register tasks.
    grunt.registerTask('build', ['uglify']);
};
