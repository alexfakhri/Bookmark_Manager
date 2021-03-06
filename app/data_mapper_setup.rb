env = ENV["RACK_ENV"] || "development"
# We're telling datamapper to use a postgres database on local host.
# The name will be "bookmark_manager_test" or "bookmark_manager_development" depending on the environment.
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require './app/models/link' # this needs to be done after datamapper is initialized


# After declaring your models, you should finalise them
DataMapper.finalize

# However, the database tables don't exist yet. Let's tell datamapper to create them
DataMapper.auto_upgrade!