default[:singularity] = {
  user:               'singularity',
  group:              'singularity',
  git_ref:            'Singularity-0.4.1',
  version:            '0.4.1',
  data_dir:           '/var/lib/singularity',
  log_dir:            '/var/log/singularity',
  conf_dir:           '/etc/singularity',
  base_url:           "http://#{node[:fqdn]}:7099/singularity",
  app_mysql_defaults: { 'adapter' => 'mysql2',
                        'pool' => 20,
                        'timeout' => 5000 },
  database:           { db_name: 'singularity',
                        username: 'singularity',
                        password: '9thlevel' }
}

default['singularity']['install_type'] = 'package'

default[:singularity][:home] = '/usr/local/singularity'
default[:singularity][:log_level] = 'INFO'

set[:mesos][:type] = 'mesosphere'
set[:mesos][:mesosphere][:with_zookeeper] = true

default[:mesos][:master][:zk] = 'zk://localhost:2181/mesos'
default[:mesos][:slave][:master] = 'zk://localhost:2181/mesos'

default[:docker][:enabled] = true

default[:mysql] = {
  port:         '3306',
  bind_address: '0.0.0.0',
  version:      '5.5'
}

default['baragon']['service_yaml']['server']['connector']['port'] = 8088

override['java']['install_flavor'] = 'oracle'
override['java']['jdk_version'] = '7'
override['java']['oracle']['accept_oracle_download_terms'] = true
override['java']['set_default'] = true
set['java']['ark_timeout'] = 10
set['java']['ark_retries'] = 3
