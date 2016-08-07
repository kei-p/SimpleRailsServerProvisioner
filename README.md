application | version
:-: | :-:
Chef Development Kit | 0.10.0
chef-client | 12.5.1
berks | 4.0.1
kitchen | 1.4.2
vagrant | 1.7.4


## Usage


### 1. VMの構築

```
$ vagrant up                                                                                                                                                                            [10:34:57]
Bringing machine 'local' up with 'virtualbox' provider...
==> local: Importing base box 'centos6'...
==> local: Matching MAC address for NAT networking...
==> local: Setting the name of the VM: simple-rails-server-provisioner_local_1470533744934_29743
==> local: Clearing any previously set forwarded ports...
==> local: Clearing any previously set network interfaces...
==> local: Preparing network interfaces based on configuration...
    local: Adapter 1: nat
==> local: Forwarding ports...
    local: 22 => 2222 (adapter 1)
```

### 2. node の追加
```
$ chef exec knife zero bootstrap 127.0.0.1 -N vagrant -x vagrant -p 2222 -i .vagrant/machines/local/virtualbox/private_key -E vagrant
```

### 3. node に run_listを追加　
```
$ chef exec knife node run_list add vagrant "role[rails-server]"
```

### 4. chefの適用
```
$ chef exec knife zero converge 'name:vagrant' -x vagrant -p 2222
```