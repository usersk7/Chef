#
# Cookbook:: nodeinfo
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

ohai 'nodeinfo' do
  plugin               'hostname'
  plugin               'ipaddress'
  plugin               'fqdn'
  action               :reload 

end
execute 'log' do
  command 'logsave "/nodeinfo.log" ohai'
end
