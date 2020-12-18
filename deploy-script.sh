vendor/bin/drush  sset system.maintenance_mode 1

git pull origin master

composer install --no-dev

vendor/bin/drush  updb -y

vendor/bin/drush  csex prod -y

vendor/bin/drush  cim -y

vendor/bin/drush  cr

vendor/bin/drush  sset system.maintenance_mode 0
