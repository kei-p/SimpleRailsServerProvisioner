local_mode true

cookbook_path    ["cookbooks", "berks-cookbooks"]
node_path        "nodes"
role_path        "roles"
environment_path "environments"
data_bag_path    "data_bags"
encrypted_data_bag_secret "key/encrypted_data_bag_secret"

knife[:use_sudo] = true
