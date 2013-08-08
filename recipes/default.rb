#
# Cookbook Name:: cookbook-readthedocs
# Recipe:: default
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'python'
include_recipe 'supervisor'

if node['readthedocs']['install_method'] == 'source'
	include_recipe 'readthedocs::source'
else
	include_recipe 'readthedocs::package'
end