class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxchza4tDG307gdKjBaGwjKUyFXehzB6FeWt8WytLO60GAqJ+HkYfy9hA0qok69wPpktJYaGsefpaF09kk+IQMEqHzjsJsWGB4wSQCwktDyFRQc23ce4LmvQxuQ2QD6yoz4QmHgsKXH8kgwYTw7ApEu8SM0wMAIjGodkFXkhZL9ZouhwbSQjD6ftTgjXKlTYWPXQrNzXDcB79rEg8CFdAMX29frH6GKbjMe5AxW0k4fGlkaOY6N8k05Jlx5l77tnSbxRN9BflQHkx4uYROvtEMjHch89Xi0U0ca4RT/P1r3IkIEn8wscNYAZNHBPG2yVvgz7KmY2ghNIuYFyM6JlAT',
  }
}
