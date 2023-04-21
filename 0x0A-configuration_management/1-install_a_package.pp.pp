# Using Puppet, install flask from pip3.

package { 'flask=2.1.0':
  ensure   => 'latest',
  provider => 'pip3',
}
