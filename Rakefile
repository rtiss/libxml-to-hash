require 'rake/testtask'
require File.join(File.dirname(__FILE__), 'lib', 'rtiss_libxml_to_hash')

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

## ---------------------------------------------------------------------------------------------------- ##
#
# Packaging tasks
#
## ---------------------------------------------------------------------------------------------------- ##


def name
  'rtiss_libxml_to_hash'
end

def version
  LibXmlNode::VERSION
end

task :release => :build do
  unless `git branch` =~ /^\* master$/
    puts "You must be on the master branch to release!"
    exit!
  end
  sh "git commit --allow-empty -a -m 'Release #{version}'"
  sh "git tag #{version}"
  sh "git push origin master --tags"
  sh "gem push pkg/#{name}-#{version}.gem"
end


task :build do
  sh "mkdir -p pkg"
  sh "gem build #{name}.gemspec"
  sh "mv #{name}-#{version}.gem pkg"
end