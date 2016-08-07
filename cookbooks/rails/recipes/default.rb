#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


user = node['rails']['user']
rbenv_path = "/home/#{user}/.rbenv"

execute 'install bundle' do
  user user
  command <<-EOS
    #{rbenv_path}/shims/gem install bundler -v #{node['rails']['bundler']['version']}
    #{rbenv_path}/bin/rbenv rehash
  EOS
  not_if "#{rbenv_path}/shims/gem list | grep bundler"
  environment ({
    'USER' => user,
    'HOME' => "/home/#{user}"
  })
end
