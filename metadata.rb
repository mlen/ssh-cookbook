name              "ssh"
maintainer        "Mateusz Lenik"
maintainer_email  "mt.lenik@gmail.com"
license           "WTFPL"
description       "Installs and configures ssh"
version           "1.3.1"

recipe "ssh", "Installs and configures both SSH client and server"
recipe "ssh::client", "Installs and configures SSH client"
recipe "ssh::server", "Installs and configures SSH server"

supports "debian"
supports "ubuntu"
supports "centos"
supports "fedora"

