def do_task(name)
  puts "#" * 80
  puts "## #{name}"
  puts "#" * 80
  Rake::Task[name].invoke
  puts
end

namespace :db do

  desc "Remigrate (aka. `db:{drop,create,migrate,seed,fixtures:load}`)"
  task :remigrate => [:environment] do
    do_task("db:drop")
    do_task("db:create")
    do_task("db:migrate")

    # ActiveRecord::Base.connection.schema_cache.clear!
    ActiveRecord::Base.descendants.each(&:reset_column_information)

    do_task("db:fixtures:load")
    do_task("db:seed")
  end

  desc 'Migrate with SQL debug statements'
  task(:migrate_with_sql => :environment) do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    Rake::Task['db:migrate'].invoke
  end

end
