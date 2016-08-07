include_recipe 'rails::default'

directory node['rails']['capistrano']['dir'] do
  owner node['rails']['user']
  group node['rails']['user']
  recursive true
  mode 0755
  action :create
end
