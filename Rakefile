require 'rake'
require 'spec/rake/spectask'
require 'rake/rdoctask'

desc 'Default: run specs.'
task :default => :spec

desc 'Test the typefront gem.'
Spec::Rake::SpecTask.new do |t|
  t.spec_opts = ['--options', File.join(File.dirname(__FILE__), %w(spec spec.opts))]
end

desc 'Generate documentation for the typefront gem.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'TypeFront'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
