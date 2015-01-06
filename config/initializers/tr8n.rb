Tr8n.configure do |config|
  config.application = {
    host: 'http://localhost:3000',
    key: 'e9f98513e9d32e5b8a4dada73f57bba3c6c38e8417b4e83794c32a72cb08cdf8',
    secret: '3a11dcde8488f9f1df0d46a69642e9d1123b6214a011ef00f528a89983ade0d2'
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
      :namespace  => 'e9f98513e9d32e5b8a4dada73f57bba3c6c38e8417b4e83794c32a72cb08cdf8',
      :version  => 1,
      :timeout  => 3600
  }
  config.logger  = {
      :enabled  => true,
      :path     => "#{Rails.root}/log/tr8n.log",
      :level    => 'debug'
  }
end