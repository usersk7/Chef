#
# Cookbook:: useradd
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

user 'user' do
  manage_home true
  comment 'User Random'
  uid '1234'
  home '/home/user'
  shell '/bin/bash'
  password 'abc123'
end



