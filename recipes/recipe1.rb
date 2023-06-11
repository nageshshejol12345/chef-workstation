#
# Cookbook:: text-cookbook
# Recipe:: recipe1
#
# Copyright:: 2023, The Authors, All Rights Reserved.
#
file '/confidential' do
 content "please keep safe This Is Confidential
 HOSTNAME: #{node['hostname']}
 IPADDRESS: #{node['ipaddress']}
 CPU: #{node['cpu']['0']['mhz']}
 MEMORY: #{node['memory']['total']}"
 owner 'root'
 group 'root'
action :create
end

package 'git' do
action :install
end
