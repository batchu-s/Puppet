class base {

        $soft = $operatingsystem ? {
                ubuntu => apache2,
                default => httpd
        }

	file { "creating a service_name file":
		path => "/tmp/service_name.txt",
		ensure => "present",
		content => template("base/test.erb")
	}
	
	package { "Installing apache sever(httpd)":
		ensure => "installed",
		name => $soft
	}
	
	service { "starting httpd server":
		name => $soft,
		ensure => running
	}
}
