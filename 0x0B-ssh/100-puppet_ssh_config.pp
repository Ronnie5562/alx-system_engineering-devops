# we’d like you to set up your client SSH configuration file so that you can connect to a server without typing a password.

include stdlib

file_line { 'Turn off passwd auth':
  ensure  => present,
  path    => '~/.ssh/config',
  line    => '    PasswordAuthentication no',
  replace => true,
}

file_line { 'Declare identity file':
  ensure  => present,
  path    => '~/.ssh/config',
  line    => '     IdentityFile ~/.ssh/school',
  replace => true,
}
