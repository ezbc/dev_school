# Dev School

## Setup

1. Install [Docker for Mac](https://docs.docker.com/docker-for-mac/install/#install-and-run-docker-for-mac)
1. Goto a directory where you want to keep code. I keep mine in `~/Projects`.
   * `cd ~` - This moves your terminal to your home directory.
   * `mkdir Projects` - This creates the dir `~/Projects`.
   * `cd Projects` - This moves you into the new `Projects` dir.
1. Git clone this repository to your computer. `git clone git@github.com:arich/dev_school.git`
1. `cd dev_school` - This moves you into the new `dev_school` dir.
1. `docker-compose up -d` - This starts the rails web server and database locally.
   * `docker-compose up` starts your web page, the `-d` allows you to still use the terminal.
1. `docker-compose run --rm web bundle exec rake db:create` - This creates your local database within the docker container.
1. In a browser like Chrome, go to `http://localhost:3001/`. You should see a message that says "Yay! You're on Rails!"

The above steps should only need to be run once. To pick up where you left off last time:

## Resuming work
1. `cd Projects/dev_school`
1. `docker-compose up`
