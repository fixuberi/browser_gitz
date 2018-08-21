Browser Gitz
================
GitHub projects browser web app. This application interacts with GitHub API(https://developer.github.com/v3/). As the wrapper for the API  was used Octokit gem.
This task was kindly provided by the MobiDev company.


Ruby version
-------------
This application requires:

 Ruby 2.4.1

Set up 
---------------
First, install the gems required by the application:

    bundle

Next, execute the database migrations/schema setup:

	bundle exec rake db:setup
  
Start the app
--------------
    bundle exec rails server
