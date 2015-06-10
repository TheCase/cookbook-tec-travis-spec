#
# Cookbook Name:: cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'php'

file '/tmp/test.txt' do
  content 'test'
  action :create
end

file '/tmp/test2.txt' do
  content 'test'
  action :create
end

directory '/tmp/test'

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

include_recipe 'cookbook::other_recipe'
