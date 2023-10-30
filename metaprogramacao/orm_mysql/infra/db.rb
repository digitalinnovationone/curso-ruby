require 'mysql2'
require 'yaml'
require 'erb'
require 'byebug'

module Infra
    class Db
        def initialize
            env = ENV["APP_ENV"] || "dev"
            yaml_content = ERB.new(File.read('config/database.yml')).result
            db_config = Psych.safe_load(yaml_content, aliases: true)
            config = db_config[env]

            @client = Mysql2::Client.new(
                host: config['host'],
                port: config['port'],
                username: config['user'],
                password: config['pass'],
                database: config['database']
            )
        end

        def execute(sql, params = [])
            begin
              statement = @client.prepare(sql)
              result = statement.execute(*params)
              return result.to_a
            ensure
              statement.close if statement
            end
        end
    end
end
