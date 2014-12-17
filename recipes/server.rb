defaults = node['ssh']

package "openssh-server"

template "/etc/ssh/sshd_config" do
  owner "root"
  group "root"
  mode  "0644"

  source    "sshd_config.erb"
  variables settings:   defaults['server'],
            keep_alive: defaults['keep_alive'],
            timeout:    defaults['timeout']

  notifies :restart, "service[ssh]"
end

service "ssh" do
  case node[:platform].downcase
  when 'debian', 'ubuntu'
    service_name 'ssh'
  else
    service_name 'sshd'
  end

  supports restart: true, reload: true, status: true
  action   [:enable, :start]
end
