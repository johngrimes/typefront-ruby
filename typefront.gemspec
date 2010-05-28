Gem::Specification.new do |s|
  s.name = 'typefront'
  s.version = '0.1.1'
  s.author = 'Small Spark'
  s.email = 'contact@smallspark.com.au'
  s.homepage = 'http://github.com/smallspark/typefront-ruby'
  s.platform = Gem::Platform::RUBY
  s.description = s.summary = 'A Ruby library for interacting with the TypeFront API.'
  s.files = ['MIT-LICENSE', 
    'Rakefile', 
    'README.markdown',
    'lib/typefront.rb',
    'spec/spec.opts',
    'spec/spec_helper.rb',
    'spec/typefront_spec.rb']
  s.test_files = ['spec/spec_helper.rb',
    'spec/typefront_spec.rb']
  s.require_path = 'lib'
  s.add_dependency('rest-client', '>= 1.5.0')
  s.add_dependency('json', '>= 1.4.3')
  s.add_development_dependency('rspec')
  s.add_development_dependency('mocha')
end
