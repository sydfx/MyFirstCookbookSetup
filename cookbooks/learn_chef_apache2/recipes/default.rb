#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'apache2'

service 'apache2' do
  action [:enable, :start]
end

group 'webmaster'

user 'webmaster' do
   group 'webmaster'
   system true
   shell '/bin/bash'
end 

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode '0644'
  owner 'webmaster'
  group 'webmaster'
end
