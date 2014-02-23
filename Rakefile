#!/usr/bin/env rake
require File.expand_path('../lib/foundation-wysihtml5-rails/version', __FILE__)

ORIGIN_LIB_PATH = "foundation-wysihtml5/lib"
ORIGIN_SRC_PATH = "foundation-wysihtml5/src"
DEST_JAVASCRIPT_PATH = "vendor/assets/javascripts/foundation-wysihtml5"
DEST_CSS_PATH = "vendor/assets/stylesheets/foundation-wysihtml5"

def b2
  system("cd foundation-wysihtml5 && git checkout master")

  system("cp #{ORIGIN_SRC_PATH}/foundation-wysihtml5.css #{DEST_CSS_PATH}/core.css")

  core_file = File.read("#{ORIGIN_SRC_PATH}/foundation-wysihtml5.js")
  original_string = /stylesheets: \[".\/lib\/css\/wysiwyg-color.css"\]/
  objective_string = "stylesheets: [\"<%= stylesheet_path('foundation-wysihtml5/wysiwyg-color.css') %>\"]"

  replaced   = core_file.gsub(original_string, objective_string)

  File.open("#{DEST_JAVASCRIPT_PATH}/core.js.erb", "w") { |file| file.puts replaced }
end

def b3
  system("cd foundation-wysihtml5 && git checkout tb3")

  system("cp #{ORIGIN_SRC_PATH}/foundation-wysihtml5.css #{DEST_CSS_PATH}/core-b3.css")

  core_file = File.read("#{ORIGIN_SRC_PATH}/foundation-wysihtml5.js")
  original_string = /stylesheets: \[".\/lib\/css\/wysiwyg-color.css"\]/
  objective_string = "stylesheets: [\"<%= stylesheet_path('foundation-wysihtml5/wysiwyg-color.css') %>\"]"

  replaced   = core_file.gsub(original_string, objective_string)

  File.open("#{DEST_JAVASCRIPT_PATH}/core-b3.js.erb", "w") { |file| file.puts replaced }
end



desc "Update assets"
task 'update' do
  if Dir.exist?('foundation-wysihtml5')
    system("cd foundation-wysihtml5 && git pull && cd ..")
  else
    system("git clone git://github.com/jhollingworth/foundation-wysihtml5.git foundation-wysihtml5")
    system("cd foundation-wysihtml5 && git remote add b3 git@github.com:artillery/foundation-wysihtml5.git")
    system("cd foundation-wysihtml5 && git fetch b3")
    system("cd foundation-wysihtml5 && git checkout -b tb3 b3/master")
  end

  Dir.foreach("foundation-wysihtml5/src/locales") do |file|
    unless file == '.' || file == '..'
      abbreviated_file_name = file.gsub('foundation-wysihtml5.', '')
      system("cp #{ORIGIN_SRC_PATH}/locales/#{file} #{DEST_JAVASCRIPT_PATH}/locales/#{abbreviated_file_name}")
    end
  end

  system("cp #{ORIGIN_LIB_PATH}/js/wysihtml5-0.3.0.js #{DEST_JAVASCRIPT_PATH}/wysihtml5.js")
  system("cp #{ORIGIN_LIB_PATH}/css/wysiwyg-color.css #{DEST_CSS_PATH}/wysiwyg-color.css")

  b2
  b3

  system("git status")
end

desc "Build"
task "build" do
  system("gem build foundation-wysihtml5-rails.gemspec")
end

desc "Publish a new version"
task :publish => :build do
  tags = `git tag`.split
  version = FoundationWysihtml5Rails::Rails::VERSION
  system("git tag -a #{version} -m 'Release #{version}' ") unless tags.include?(version)
  system("gem push foundation-wysihtml5-rails-#{version}.gem")
  system("git push --follow-tags")
end
