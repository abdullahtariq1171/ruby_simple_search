require_relative "test_helper"
require 'active_record/connection_adapters/mysql2_adapter'

class ActiveRecord::ConnectionAdapters::Mysql2Adapter
  NATIVE_DATABASE_TYPES[:primary_key] = "int(11) auto_increment PRIMARY KEY"
end

class MysqlTest < Minitest::Test
  include UserTest
  include User2Test

  def setup
    super
    @@setup ||= begin
                  ActiveRecord::Base.establish_connection adapter: "mysql2",
                    database: "ruby_simple_search_test",
                    host: "localhost"

                  create_tables
                  create_dummy_data
                end
  end

end
