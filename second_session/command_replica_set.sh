# Check mongod services
ps -ef | grep mongo

sudo mkdir settings

# use config_files/rs0.conf with replSet = 0 parameter
sudo vim settings/rs0.conf

# use config_files/rs1.conf with replSet = 0 parameter
sudo vim settings/rs1.conf

# use config_files/rs2.conf with replSet = 0 parameter
sudo vim settings/rs2.conf

# use config 0
sudo mongod --config settings/rs0.conf

# use config 1
sudo mongod --config settings/rs1.conf

# use config 2
sudo mongod --config settings/rs2.conf

# Check mongod services with 3 dameons for mongodb
ps -ef | grep mongo

sudo mongo --port 1011

# Check replica set config
rs.conf()

rs.status()

rs.initiate()

rs.conf()

rs.add("host:port")

rs.add("host:port")

rs.conf()

rs.status()

exit

# Find on second secondary node secondary
sudo mongo --port 1012

rs.slaveOk()

db.users.find()

# Find on third secondary node secondary
sudo mongo --port 1013

rs.slaveOk()

db.users.find()