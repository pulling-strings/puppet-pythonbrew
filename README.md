# Intro 
A Puppet module for setting up multiple python versions using [pythonbrew](https://github.com/ashwoods/puppet-pythonbrew).

# Usage

```ruby
  class{'pythonbrew': }

  python_version {'2.7.2':
    ensure      => 'present',
    default_use => true,
    require 	=> Class['pythonbrew']
  }

  python_version {'2.6.8':
    ensure      => 'present',
    default_use => false,
    require 	=> Class['pythonbrew']
  }

```

# License
Apache V2 see LICENSE-2.0.txt file

# Todos
See if its possible to support pip installs on specific python versions using virtualenv
