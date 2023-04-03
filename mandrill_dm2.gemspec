require_relative 'lib/mandrill_dm/version'

Gem::Specification.new do |s|
  s.name = 'mandrill_dm2'
  s.version = MandrillDm::VERSION
  s.date = '2022-09-01'
  s.summary = 'A basic Mandrill delivery method for Rails.'
  s.description = 'A basic Mandrill delivery method for Rails.'
  s.authors = ['Jonathan Berglund', 'John Dell', 'Kirill Shnurov']
  s.email = ['jonathan.berglund@gmail.com', 'spovich@gmail.com']
  s.homepage = 'http://github.com/duhast/mandrill_dm2'
  s.license = 'MIT'

  s.files = Dir['{lib,spec}/**/*', '[A-Z]*'] - ['Gemfile.lock']
  s.require_path = 'lib'
  s.required_ruby_version = '>= 2.0'

  s.add_dependency 'mail', '>= 2.6'
  s.add_dependency 'mandrill-api-json', '~> 1.0.54'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.7.0'
  s.add_development_dependency 'rubocop', '0.50.0'
  s.add_development_dependency 'simplecov', '~> 0.15.1'
  s.add_development_dependency 'appraisal'
end
