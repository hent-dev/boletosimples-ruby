# encoding: UTF-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boletosimples/version'

Gem::Specification.new do |gem|
  gem.name          = 'boletosimples'
  gem.version       = BoletoSimples::VERSION
  gem.authors       = ['Kivanio Barbosa', 'Rafael Lima', 'Thiago Belem']
  gem.email         = ['kivanio@gmail.com', 'contato@rafael.adm.br', 'contato@thiagobelem.net']
  gem.description   = 'Boleto Simples API wrapper.'
  gem.summary       = 'Boleto Simples API wrapper.'
  gem.homepage      = 'https://github.com/BoletoSimples/boletosimples-ruby'

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(/^bin\//).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(/^(test|spec|features)\//)
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 1.9'

  # Gems that must be intalled for boletosimples to work
  gem.add_dependency 'her', '~> 0.9.0'
  gem.add_dependency 'faraday_middleware', '~> 0.11.0.1'
  gem.add_dependency 'faraday-http-cache', '~> 2.0.0'

  # Gems that must be installed for boletosimples to compile and build
  gem.add_development_dependency 'pry', '~> 0.10.1'
  gem.add_development_dependency 'rspec', '~> 3.5.0'
  gem.add_development_dependency 'vcr', '~> 3.0'
  gem.add_development_dependency 'webmock', '~> 2.1.0'
  gem.add_development_dependency 'rake', '~> 11.2.2'
  gem.add_development_dependency 'coveralls', '~> 0.8.2'
  gem.add_development_dependency 'codeclimate-test-reporter', '~> 0.6.0'
  gem.add_development_dependency 'rubocop'
end
