#
# Cookbook:: java
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


remote_file "your-remote-file" do
  source "
  not_if "rpm -qa | grep -qx 'your-package'"
end
