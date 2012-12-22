default['ssh'] = {
  'keep_alive' => true,
  'timeout'    => 30,

  'client' => {
    'compression'    => true,
    'forward_agent'  => true,
    'authentication' => ['publickey', 'password']
  },
  'server' => {
    'listen'                    => '0.0.0.0',
    'port'                      => '22',
    'enable_sftp'               => true,
    'accept_env'                => ['LANG', 'LC_*'],
    'allow_groups'              => [],
    'deny_groups'               => [],
    'allow_users'               => [],
    'deny_users'                => [],
    'root_login'                => false,
    'password_authentication'   => true,
    'public_key_authentication' => true
  }
}

