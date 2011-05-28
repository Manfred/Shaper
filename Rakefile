desc "Run all tests by default"
task :default => :test

desc "Run all tests"
task :test do
  Dir[File.dirname(__FILE__) + '/test/**/*_test.rb'].each do |file|
    load file
  end
end

namespace :gem do
  desc "Build the gem"
  task :build do
    sh 'gem build shaper.gemspec'
  end
  
  desc "Install the gem"
  task :install => :build do
    sh 'gem install shaper-*.gem'
  end
end