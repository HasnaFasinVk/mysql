> use hasna
switched to db hasna
> db.fasin
hasna.fasin
> db.createCollection("sample")
{ "ok" : 1 }
> show collections
sample
> db.sample.insert({"name":"saneen"})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"kavya"})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"raniya"})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"akash"})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"fidha"})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"hadiya"})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"hadiya","age":23})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"diya","age":22})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"niya","age":26})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"liya","age":24})
WriteResult({ "nInserted" : 1 })
> db.sample.insert({"name":"fiya","age":25})
WriteResult({ "nInserted" : 1 })

> db.sample.find()
{ "_id" : ObjectId("662779faba11cc6ccca0164a"), "name" : "saneen" }
{ "_id" : ObjectId("66277a0cba11cc6ccca0164b"), "name" : "kavya" }
{ "_id" : ObjectId("66277a26ba11cc6ccca0164c"), "name" : "raniya" }
{ "_id" : ObjectId("66277a40ba11cc6ccca0164d"), "name" : "akash" }
{ "_id" : ObjectId("66277a49ba11cc6ccca0164e"), "name" : "fidha" }
{ "_id" : ObjectId("66277a51ba11cc6ccca0164f"), "name" : "hadiya" }
{ "_id" : ObjectId("66277ac8ba11cc6ccca01650"), "name" : "hadiya", "age" : 23 }
{ "_id" : ObjectId("66277ad5ba11cc6ccca01651"), "name" : "diya", "age" : 22 }
{ "_id" : ObjectId("66277ae2ba11cc6ccca01652"), "name" : "niya", "age" : 26 }
{ "_id" : ObjectId("66277af3ba11cc6ccca01653"), "name" : "liya", "age" : 24 }
{ "_id" : ObjectId("66277b03ba11cc6ccca01654"), "name" : "fiya", "age" : 25 }

 db.sample.updateOne({name:"saneen"},{$set:{name:"ashab"}})
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
> db.sample.find()
{ "_id" : ObjectId("662779faba11cc6ccca0164a"), "name" : "ashab" }
{ "_id" : ObjectId("66277a0cba11cc6ccca0164b"), "name" : "kavya" }
{ "_id" : ObjectId("66277a26ba11cc6ccca0164c"), "name" : "raniya" }
{ "_id" : ObjectId("66277a40ba11cc6ccca0164d"), "name" : "akash" }
{ "_id" : ObjectId("66277a49ba11cc6ccca0164e"), "name" : "fidha" }
{ "_id" : ObjectId("66277a51ba11cc6ccca0164f"), "name" : "hadiya" }
{ "_id" : ObjectId("66277ac8ba11cc6ccca01650"), "name" : "hadiya", "age" : 23 }
{ "_id" : ObjectId("66277ad5ba11cc6ccca01651"), "name" : "diya", "age" : 22 }
{ "_id" : ObjectId("66277ae2ba11cc6ccca01652"), "name" : "niya", "age" : 26 }
{ "_id" : ObjectId("66277af3ba11cc6ccca01653"), "name" : "liya", "age" : 24 }
{ "_id" : ObjectId("66277b03ba11cc6ccca01654"), "name" : "fiya", "age" : 25 }
> db.sample.updateMany({name:"hadiya"},{$set:{age:"23"}})
{ "acknowledged" : true, "matchedCount" : 2, "modifiedCount" : 2 }
> db.sample.find()
{ "_id" : ObjectId("662779faba11cc6ccca0164a"), "name" : "ashab" }
{ "_id" : ObjectId("66277a0cba11cc6ccca0164b"), "name" : "kavya" }
{ "_id" : ObjectId("66277a26ba11cc6ccca0164c"), "name" : "raniya" }
{ "_id" : ObjectId("66277a40ba11cc6ccca0164d"), "name" : "akash" }
{ "_id" : ObjectId("66277a49ba11cc6ccca0164e"), "name" : "fidha" }
{ "_id" : ObjectId("66277a51ba11cc6ccca0164f"), "name" : "hadiya", "age" : "23" }
{ "_id" : ObjectId("66277ac8ba11cc6ccca01650"), "name" : "hadiya", "age" : "23" }
{ "_id" : ObjectId("66277ad5ba11cc6ccca01651"), "name" : "diya", "age" : 22 }
{ "_id" : ObjectId("66277ae2ba11cc6ccca01652"), "name" : "niya", "age" : 26 }
{ "_id" : ObjectId("66277af3ba11cc6ccca01653"), "name" : "liya", "age" : 24 }
{ "_id" : ObjectId("66277b03ba11cc6ccca01654"), "name" : "fiya", "age" : 25 }
