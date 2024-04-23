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

> var bulk=db.sample.initializeUnorderedBulkOp();
> bulk.insert({name:"jasna",age:"25"});
> bulk.insert({name:"fasna",age:"22"});
> bulk.insert({name:"lubina",age:"22"});
> bulk.insert({name:"lubna",age:"22"});
> bulk execute();
uncaught exception: SyntaxError: unexpected token: identifier :
@(shell):1:5
> bulk.execute();
BulkWriteResult({
        "writeErrors" : [ ],
        "writeConcernErrors" : [ ],
        "nInserted" : 4,
        "nUpserted" : 0,
        "nMatched" : 0,
        "nModified" : 0,
        "nRemoved" : 0,
        "upserted" : [ ]
})
> db.sample.find();
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
{ "_id" : ObjectId("66278128ba11cc6ccca01655"), "name" : "jasna", "age" : "25" }
{ "_id" : ObjectId("66278128ba11cc6ccca01656"), "name" : "fasna", "age" : "22" }
{ "_id" : ObjectId("66278128ba11cc6ccca01657"), "name" : "lubina", "age" : "22" }
{ "_id" : ObjectId("66278128ba11cc6ccca01658"), "name" : "lubna", "age" : "22" }
> var bulk=db.sample.initializeOrderedBulkOp();
> bulk.insert({name:"lubna",age:"22"});
> bulk.insert({name:"layana",age:"24"});
> bulk.insert({name:"miza",age:"24"});
> bulk.insert({name:"mirza",age:"24"});
> bulk.execute();
BulkWriteResult({
        "writeErrors" : [ ],
        "writeConcernErrors" : [ ],
        "nInserted" : 4,
        "nUpserted" : 0,
        "nMatched" : 0,
        "nModified" : 0,
        "nRemoved" : 0,
        "upserted" : [ ]
})
> db.sample.find();
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
{ "_id" : ObjectId("66278128ba11cc6ccca01655"), "name" : "jasna", "age" : "25" }
{ "_id" : ObjectId("66278128ba11cc6ccca01656"), "name" : "fasna", "age" : "22" }
{ "_id" : ObjectId("66278128ba11cc6ccca01657"), "name" : "lubina", "age" : "22" }
{ "_id" : ObjectId("66278128ba11cc6ccca01658"), "name" : "lubna", "age" : "22" }
{ "_id" : ObjectId("6627819aba11cc6ccca01659"), "name" : "lubna", "age" : "22" }
{ "_id" : ObjectId("6627819aba11cc6ccca0165a"), "name" : "layana", "age" : "24" }
{ "_id" : ObjectId("6627819aba11cc6ccca0165b"), "name" : "miza", "age" : "24" }
{ "_id" : ObjectId("6627819aba11cc6ccca0165c"), "name" : "mirza", "age" : "24" }
> db.demo.createIndex({name:-1})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : true,
        "ok" : 1
}
> db.demo.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "name" : -1
                },
                "name" : "name_-1"
        }
]
>> db.demo.dropIndex({name:-1})
{ "nIndexesWas" : 2, "ok" : 1 }
