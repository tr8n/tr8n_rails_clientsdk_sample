Tr8n.configure do |config|
  config.application = {
      :host => "https://sandbox.tr8nhub.com",
      :key => "577fdeb280372b87c",
      :secret => "77a71ca7e10434777"
  }
  #config.application = {
  #    :host => "http://localhost:3000",
  #    :key => "cc62cc02bc9f1d63c",
  #    :secret => "8014944c3385a280e"
  #}
  config.cache = {
      :enabled  => true,
      :adapter  => 'memcache',
      :host     => 'localhost:11211',
      :version  => 1,
      :timeout  => 3600
  }
  config.logger  = {
      :enabled  => true,
      :path     => "#{Rails.root}/log/tr8n.log",
      :level    => 'debug'
  }
end