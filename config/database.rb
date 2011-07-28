MongoMapper.connection = Mongo::Connection.new('localhost', nil, :logger => logger)

case Padrino.env
  when :development then MongoMapper.database = 'racktest_development'
  when :production  then MongoMapper.database = 'racktest_production'
  when :test        then MongoMapper.database = 'racktest_test'
end
