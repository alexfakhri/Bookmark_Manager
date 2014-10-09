require 'data_mapper'
require './app/data_mapper_setup'
require './lib/link'
require './lib/tag'
require './lib/user'

task :auto_upgrage do
	# auto_upgarde makes non_destructive changes.
	# If your tables dont exist, they will be created
	# but if they do and you changed your schema
	# (e.g. changed the type of one of the properties)
	# they will not be upgraded becasue that'd lead to data loss.
	DataMapper.auto_upgrade!
	put "Auto-migrate complete (no data loss)"
end

task :auto_migrate do
	# To force the creation of all tables as they are 
	# described in your models, even if this
	# may lead to data loss, use auto_migrate:
	DataMapper.auto_migrate!
	puts "Auto-migrate complete (data could have been lost)"
end
	