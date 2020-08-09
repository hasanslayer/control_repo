class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQClUZLfT85RqCjcsUTF3A1xlH8An4ZZHdEBeWRCN+0iwS20pTFpbuuKjQHq5YHwE0z8qqVLYGgDndeT6OgNyfv7jHLvsKwRuD8r95eOY+MCelKDRZKWVmq58IACqg8Ou3yN/1wf2hOO73nt06nf9R7ZpMZzIMbPcFf0I9+VfFRntUjO6YlMwrdyP0GyXJWbXmvvC9/CtP+DHYklu3em9yLp9AAJJBVyTmcEhSG46GtHTPC2Qg8GAFlPOpGymBUByzc+L55MfZIh+1+VzlLauwpidfC0whEz+0Xm3skhZo+C26Mx9uSS4l86WRhKzNSMMkVXtZxWcDnX44Qo6eq3mbb3',
	}  
}
