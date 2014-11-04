#
# Cookbook Name:: cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

file '/tmp/test.txt' do
  content 'test'
  action :create
end
