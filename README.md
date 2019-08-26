# Get Started

```
# 1. clone this repository and rename
$ git clone https://github.com/khml/RailsDock

$ mv RailsDock YourProjectName
$ cd YourProjectName

# 2. delete git files
$ rm --irf .git

# 3. setting App name
# Editing env file like following
# appName=YourProjectName

# 4. rails new
$ ./rails_new.sh

# 5. Setting config/database.yml
# Editing config/database.yml like following

# default: &default
#   adapter: mysql2
#   encoding: utf8
#   host: db
#   username: root
#   password: root
#   pool: 5


# 6. Build Docker image
$ docker-compose build

# 7. start containers
$ docker-compose up -d

```

