# Check mongo daemon
ps -ef | grep mongo

# Mongodb CLI
mongo

# Create and use db
use users

# Insert users
db.users.insert({"name" : "Alejandro Romero", "nid": 12221212, "phones": [182282882, 4484848, 75775757]})

db.users.insert({"name" : "Diego Zea", "nid": 23213434, "phones": [2323243, 333232, 323232332], "age": 39})

for(var i = 0; i < 100000; i++){db.users.insert({"name":i*4, "nid":i*10})}

db.users.insert({"name": "joe","nid": 32})

db.users.find()
db.users.update({"name": "Alejandro Romero" }, {"$set":{"age":18}})
db.users.update({"name": "Alejandro Romero")}, {"$inc":{"age":2}})

# find all
db.users.find()

# find all with pretty info presentation
db.users.find().pretty()

# Update info for document
db.users.update({"name":"joe"}, {"$push":{"friends":{"name":"pablo", "email":"alro@ro.co"}}})
db.users.update({"name":"joe"}, {"$addToSet":{"friends":{"name":"Diego", "email":"alr@mw.co"}}})

# Find first register
db.users.findOne({"name": "Alejandro Romero"})

# Remove
db.users.remove({"name": "Alejandro Romero"})

# Add with $push for array
db.users.insert({"name": "joe","friends": 32,"blocked_friends": 2, "friends": []})
db.users.find()
db.users.update({"name": "joe"}, {"$push": {"friends":{"name": "pablo", "email": "alro@ro.co"}}})
db.users.update({"name": "joe"}, {"$addToSet": {"friends":{"name": "Diego", "email": "alr@mw.co"}}})

# Drop collection
db.users.drop()