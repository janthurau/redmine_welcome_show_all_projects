require 'welcome_controller_patch'

Redmine::Plugin.register :redmine_welcome_show_all_projects do
  name 'Redmine Welcome Show All Projects Plugin'
  author 'Jan Thurau'
  description 'This plugin replaces redmine\'s "recent projects" with a list of all available projects'
  version '0.0.1'
  url 'https://github.com/janthurau/redmine_welcome_show_all_projects'
  author_url 'http://www.janthurau.de'
end
