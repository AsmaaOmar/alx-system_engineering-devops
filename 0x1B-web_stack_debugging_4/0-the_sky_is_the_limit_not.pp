# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default

# Puppet script
exec { '/usr/bin/env sed -i s/15/1000/ /etc/default/nginx': }
-> exec { '/usr/bin/env service nginx restart': }
