# middleman-activerecord

Providing ActiveRecord support to Middleman applications.

*Please note: This extension is under active development and should be considered unstable until a 1.0.0 release.*


## Depends on software
* middleman >= 4.1.0
* ActiveRecord ~> 5.0.0

## Installation

* Add this line to your application's Gemfile

```ruby
gem 'mysql2'
gem 'middleman-activerecord', github: 'penguinwokrs/middleman-activerecord', branch: :master
gem 'middleman', '>= 4.1.0'
```

* bundle install
  `bundle install`

## Settings

* Add or edit a configuration file to your middleman project.
    - db/config.yml
```yaml
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  username: root
  password:
  socket: /tmp/mysql.sock

development:
  <<: *default
  database: development

production:
  <<: *default
  database: production
  username: <%= ENV['DATABASE_USER'] %>
  password: <%= ENV['DATABASE_PASSWORD'] %>
```

* Edit software configuration file.
  - {Your project}/config.rb
```ruby
# ActiveRecord
activate :activerecord, database_config: 'db/database.yml'
MODEL_DIR_PATH = 'db/models'
models_dir = Dir[Pathname.new("#{ENV.fetch('MM_ROOT')}/#{MODEL_DIR_PATH}/*.rb")]
models_dir.sort.each do |file|
  require file
end
```

* Create a models file.
  - {Your project}/models/sample.rb
```ruby
class Sample < ActiveRecord::Base
  has_many :models
  belong_to :model
end
```

## Usage
* server
```sh
$ middleman
```

* build
```sh
$ middleman build
```

* change environment
```sh
$ MN_ENV=production middleman build
```

