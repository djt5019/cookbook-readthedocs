#
# Cookbook Name:: read-the-docs
# Recipe:: default
#
# Copyright (C) 2013 Dan Tracy
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'python'
include_recipe 'git'

%W(libxml2 libxslt-dev libpq-dev).each do |pkg|
    package pkg do
        action :install
    end
end

user "rtfd" do
    action :create
    comment "Read The Docs user"
end

application 'read-the-docs' do
  path '/home/rtfd/source'
  repository node['rtfd']['git']['repo']
  revision 'master'

  django do
    requirements 'current/deploy_requirements.txt'
  end
end
