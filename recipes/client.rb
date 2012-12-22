defaults = node['ssh']

package "openssh-client" do
  action :install
end

template "/etc/ssh/ssh_config" do
  owner "root"
  group "root"
  mode  "0644"

  source "ssh_config.erb"
  variables :settings   => defaults['client'],
            :keep_alive => defaults['keep_alive'],
            :timeout    => defaults['timeout']
end

