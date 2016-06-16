# Check mongod services
ps -ef | grep mongo

# use config_files/rs0.conf without replSet parameter
sudo mongod --config settings/rs0.conf

sudo mongo --port 1010

# create super user
use admin
db.createUser({user:"admin",pwd:"admin", roles:[{role: "root", db: "admin"}]})
db.auth('admin', 'admin')
db.runCommand({connectionStatus : 1})

# Add user to your DB
use users
db.createUser({user: "mongouser", pwd: "mongouser", roles: [{role: "readWrite", db: "users"]})
db.auth('mongouser', 'mongouser')
