# Intro 
A Puppet module for setting up multiple python versions using [pythonbrew](https://github.com/ashwoods/puppet-pythonbrew)

# Usage

```ruby
  class{'pythonbrew': }

  python_version {'2.7.2':
    ensure      => 'present',
    default_use => true
  }

  python_version {'2.6.8':
    ensure      => 'present',
    default_use => false
  }

```

# License
Apache V2 see LICENSE-2.0.txt file

