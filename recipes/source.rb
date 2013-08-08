include_recipe 'git'

directory node['readthedocs']['installation']['location'] do
	action :create
	mode 00755
end

git node['readthedocs']['installation']['location'] do
	repository node['readthedocs']['source']['location']
	action :sync
end	