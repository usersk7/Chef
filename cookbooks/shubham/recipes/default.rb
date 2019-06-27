#
# Cookbook:: shubham
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'Install Apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end

service 'httpd' do
  action [:enable, :start]
end
log 'message' do
  message 'Log Where are you.? '
  level :info
  action :write
end
execute 'log' do
  command 'logsave "/apache.log" httpd -v'
end
