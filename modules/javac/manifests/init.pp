class javac::init {
	package { "Installing jdk 1.8.0":
		name => "java-1.8.0-openjdk-devel",
		ensure => installed
	}
}
