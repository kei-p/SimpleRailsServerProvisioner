#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

bash "install mysql" do
  code <<-EOS
  yum install -y #{node['mysql']['install_package']}
  yum install -y mysql mysql-devel mysql-server mysql-utilities
  EOS

  not_if "which mysql"
end

service 'mysqld' do
  action [:start, :enable]
end
