require 'rubygems'
require 'rspec/core/rake_task'

task default: %w[run]

RSpec::Core::RakeTask.new(:test) do |spec|
  spec.pattern = 'spec/*_spec.rb'
  spec.rspec_opts = ['--backtrace --color']
end

task :run do
  sh "bin/bitmap_editor examples/show.txt"
end
