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

# Todos
See if its possible to support pip installs on specific python versions using virtualenv

# Copyright and license

Copyright [2013] [Ronen Narkis]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
