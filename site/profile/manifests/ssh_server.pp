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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCt3FhpEa/JRElYtBx7aAGShM1MnVkasGF+zEAVaxmyqfEs8mJ1ibNTEUzL8sOiKI+6yBM6tkIpDR8imvLiGilXy1Qi66Om7+TZc+n1IwMwZjSWqX0imbF9lIml2nT3991eG2qaIqokwPfYdxU32G1E1ZV35hiuatKCWeRqqPspRTKhFZZzzuBlLX2JaohIwRdUI5hytAwZAzkdXsp8VEX55pMxi7PTGT/Kxj40fVkBBWDZ3mXDWwtVAd2Bk9nCQz33QYrs1BOUrqj4c5n+3EcRqjklZvMhx57s8fpsFgXvj9zMT1uX6yevDpGHLq5eQHphuPqw56/cNe/ot8S1lpC9',
	}  
}
