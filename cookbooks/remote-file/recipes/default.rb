#
# Cookbook:: remote-file
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
remote_file '/root/Desktop/index.html' do
  source 'https://docs.chef.io/resource_remote_file.html'
  owner 'root'
  group 'root'
    mode '0755'
  action :create
end
