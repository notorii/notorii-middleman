<<<<<<< Updated upstream
# notorii
=======
### Framework
>>>>>>> Stashed changes

notorii uses [Middleman](http://middlemanapp.com/), a static site generator.

### Server

From the command-line, start the preview web-server from inside your project folder:

`bundle exec middleman server`

### Build

To build the site (to the `build` directory):

`bundle exec middleman build`

### Deploy

To deploy to GitHub pages, [middleman-deploy](https://github.com/karlfreeman/middleman-deploy) is used.

`bundle exec middleman deploy`

A build will run automatically before deploying.

The default deploy settings are used (the remote name is origin, deploy branch is gh-pages, commit strategy is :force_push, and commit message is "Automated commit at `timestamp` by middleman-deploy `version`").

