$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'version'

Gem::Specification.new do |s|
  s.name        = "hola-xuan"
  s.version     = Hello::STRING
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Xuan Cao"]
  s.email       = "xuan.cao@nowhere.com"
  s.files       = ["lib/hola.rb", "lib/hello.rb", ".yardopts", "yardoc_frontpage.md", "README.md"]
  s.homepage    = "https://rubygems.org/gems/hola-xuan"
  s.metadata    = {'source_code_uri' => 'https://github.com/xuan-cao-swi/sample-ruby-gem'}
  s.license     = "MIT"
end