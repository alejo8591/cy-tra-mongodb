# Check mongo daemon
ps -ef | grep

# kill all daemons
sudo kill -9 4909 && sudo kill -9 5038  && sudo kill -9 5172 # according daemon

# create backups
mkdir /backups


# dump info for rs0 db
sudo mongodump --dbpath /rs0/ --out /backups/rs0/

# restore info
sudo mongorestore --dbpath /rs3/ --drop /backups/rs0/

# create config file use config file rs3.conf
sudo mongod --config settings/rs3.conf

# open database
sudo mongo --port 1013