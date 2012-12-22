# SSH server & client cookbook for Chef

Manages SSH server and client configurations.

## Requirements

* `ferm` cookbook from mlen/ferm-cookbook

## Configuration

I'd strongly recommend to change the default port from 22 and configure
`allow_groups` or `allow_users` options.
When `keep_alive` is turned off, `timeout` option does nothing.
Other options are sane defaults.

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
        'port'                      => 22,
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

