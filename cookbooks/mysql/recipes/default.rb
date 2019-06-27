#
# Cookbook:: mysql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
mysqlpass = data_bag_item("passwords", "pwd.json")

mysql_service "mysqldefault" do
  version '5.7'
  initial_root_password mysqlpass["password"]
  action [:create, :start]
end
