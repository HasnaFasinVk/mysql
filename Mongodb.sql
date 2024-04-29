> show dbs
Kavya   0.000GB
admin   0.000GB
config  0.000GB
local   0.000GB
test    0.000GB
> use Kavya
switched to db Kavya
> db.createCollection('Student')
{ "ok" : 1 }
> show collections
Emp
stu
student
> db.student.insert({"Name":"Sonu"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Name":"Arun"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Name":"Sandra"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Name":"Aparna"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Name":"Edwin"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Name":"Gouri"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Name":"Divya"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Name":"Sachind"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Name":"Hari"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Name":"Libin"})
WriteResult({ "nInserted" : 1 })
> db.student.insert({"Age":20})
WriteResult({ "nInserted" : 1 })
> db.stu.insert({"Name":"Binu","Age":20})
WriteResult({ "nInserted" : 1 })
> db.stu.insert({"Name":"Vishak","Age":25})
WriteResult({ "nInserted" : 1 })
> db.stu.insert({"Name":"Shithin","Age":22})
WriteResult({ "nInserted" : 1 })
> db.stu.insert({"Name":"Anupama","Age":21})
WriteResult({ "nInserted" : 1 })
> db.stu.insert({"Name":"Farhan","Age":22})
WriteResult({ "nInserted" : 1 })
> db.stu.find()
{ "_id" : ObjectId("66222ad892bc0934a62dc8f7"), "Name" : "Binu", "Age" : 20 }
{ "_id" : ObjectId("66222af892bc0934a62dc8f8"), "Name" : "Vishak", "Age" : 25 }
{ "_id" : ObjectId("66222b0f92bc0934a62dc8f9"), "Name" : "Shithin", "Age" : 22 }
{ "_id" : ObjectId("66222b1a92bc0934a62dc8fa"), "Name" : "Anupama", "Age" : 21 }
{ "_id" : ObjectId("66222b3492bc0934a62dc8fb"), "Name" : "Farhan", "Age" : 22 }
> db.stu.find().pretty()
{
        "_id" : ObjectId("66222ad892bc0934a62dc8f7"),
        "Name" : "Binu",
        "Age" : 20
}
{
        "_id" : ObjectId("66222af892bc0934a62dc8f8"),
        "Name" : "Vishak",
        "Age" : 25
}
{
        "_id" : ObjectId("66222b0f92bc0934a62dc8f9"),
        "Name" : "Shithin",
        "Age" : 22
}
{
        "_id" : ObjectId("66222b1a92bc0934a62dc8fa"),
        "Name" : "Anupama",
        "Age" : 21
}
{
        "_id" : ObjectId("66222b3492bc0934a62dc8fb"),
        "Name" : "Farhan",
        "Age" : 22
}

----------age greater than------------

> db.stu.find({Age:{$gt:22}}).pretty()
{
        "_id" : ObjectId("66222af892bc0934a62dc8f8"),
        "Name" : "Vishak",
        "Age" : 25
}

-----less than--------

> db.stu.find({Age:{$lt:22}}).pretty()
{
        "_id" : ObjectId("66222ad892bc0934a62dc8f7"),
        "Name" : "Binu",
        "Age" : 20
}
{
        "_id" : ObjectId("66222b1a92bc0934a62dc8fa"),
        "Name" : "Anupama",
        "Age" : 21
}

------------lessthan equal---------

> db.stu.find({Age:{$lte:22}}).pretty()
{
        "_id" : ObjectId("66222ad892bc0934a62dc8f7"),
        "Name" : "Binu",
        "Age" : 20
}
{
        "_id" : ObjectId("66222b0f92bc0934a62dc8f9"),
        "Name" : "Shithin",
        "Age" : 22
}
{
        "_id" : ObjectId("66222b1a92bc0934a62dc8fa"),
        "Name" : "Anupama",
        "Age" : 21
}
{
        "_id" : ObjectId("66222b3492bc0934a62dc8fb"),
        "Name" : "Farhan",
        "Age" : 22
}
--------greater than equal--------

> db.stu.find({Age:{$gte:22}}).pretty()
{
        "_id" : ObjectId("66222af892bc0934a62dc8f8"),
        "Name" : "Vishak",
        "Age" : 25
}
{
        "_id" : ObjectId("66222b0f92bc0934a62dc8f9"),
        "Name" : "Shithin",
        "Age" : 22
}
{
        "_id" : ObjectId("66222b3492bc0934a62dc8fb"),
        "Name" : "Farhan",
        "Age" : 22
}

---------display all values--------------

> db.stu.distinct("Name")
[ "Anupama", "Binu", "Farhan", "Shithin", "Vishak" ]
> db.student.distinct("Name")
[
        "Aparna",
        "Arun",
        "Divya",
        "Edwin",
        "Gouri",
        "Hari",
        "Libin",
        "Sachind",
        "Sandra",
        "Sonu"
]

-------count-----

> db.stu.count()
6
-------update--------

> db.stu.update({Name:"Farhan"},{$set:{Name:"Farhan MP"}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.stu.find().pretty()
{
        "_id" : ObjectId("66222ad892bc0934a62dc8f7"),
        "Name" : "Binu",
        "Age" : 20
}
{
        "_id" : ObjectId("66222b0f92bc0934a62dc8f9"),
        "Name" : "Shithin",
        "Age" : 22
}
{ "_id" : ObjectId("66222b1a92bc0934a62dc8fa"), "set" : { "Name" : "P" } }
{
        "_id" : ObjectId("66222b3492bc0934a62dc8fb"),
        "Name" : "Farhan MP",
        "Age" : 22
}


---------remove----
> db.stu.remove({"Name":"Vishak"})
WriteResult({ "nRemoved" : 2 })

-------------insert many-----------

> db.stu.insertMany([{Name:"Arun",Age:23},{Name:"Gayathri",Age:20}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("66223d7d92bc0934a62dc8fd"),
                ObjectId("66223d7d92bc0934a62dc8fe")
        ]
}
> db.stu.find().pretty()
{
        "_id" : ObjectId("66222ad892bc0934a62dc8f7"),
        "Name" : "Binu",
        "Age" : 20
}
{
        "_id" : ObjectId("66222b0f92bc0934a62dc8f9"),
        "Name" : "Shithin",
        "Age" : 22
}
{ "_id" : ObjectId("66222b1a92bc0934a62dc8fa"), "set" : { "Name" : "P" } }
{
        "_id" : ObjectId("66222b3492bc0934a62dc8fb"),
        "Name" : "Farhan MP",
        "Age" : 22
}
{
        "_id" : ObjectId("66223d7d92bc0934a62dc8fd"),
        "Name" : "Arun",
        "Age" : 23
}
{
        "_id" : ObjectId("66223d7d92bc0934a62dc8fe"),
        "Name" : "Gayathri",
        "Age" : 20
}

--------student name in desc and asc--------

> db.stu.find().sort({Name:1})
{ "_id" : ObjectId("66222b1a92bc0934a62dc8fa"), "set" : { "Name" : "P" } }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fd"), "Name" : "Arun", "Age" : 23 }
{ "_id" : ObjectId("66222ad892bc0934a62dc8f7"), "Name" : "Binu", "Age" : 20 }
{ "_id" : ObjectId("66222b3492bc0934a62dc8fb"), "Name" : "Farhan MP", "Age" : 22 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fe"), "Name" : "Gayathri", "Age" : 20 }
{ "_id" : ObjectId("66222b0f92bc0934a62dc8f9"), "Name" : "Shithin", "Age" : 22 }
> db.stu.find().sort({Name:-1})
{ "_id" : ObjectId("66222b0f92bc0934a62dc8f9"), "Name" : "Shithin", "Age" : 22 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fe"), "Name" : "Gayathri", "Age" : 20 }
{ "_id" : ObjectId("66222b3492bc0934a62dc8fb"), "Name" : "Farhan MP", "Age" : 22 }
{ "_id" : ObjectId("66222ad892bc0934a62dc8f7"), "Name" : "Binu", "Age" : 20 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fd"), "Name" : "Arun", "Age" : 23 }
{ "_id" : ObjectId("66222b1a92bc0934a62dc8fa"), "set" : { "Name" : "P" } }

----display name that has this letter------

> db.stu.find({Name:{$regex:"A"}})
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fd"), "Name" : "Arun", "Age" : 23 }
-----between---
> db.stu.find({Name:{$regex:/ha/}})
{ "_id" : ObjectId("66222b3492bc0934a62dc8fb"), "Name" : "Farhan MP", "Age" : 22 }

--------asc using limit---------
> db.stu.find().sort({Name:-1}).limit(2).forEach(printjson)
{
        "_id" : ObjectId("66222b0f92bc0934a62dc8f9"),
        "Name" : "Shithin",
        "Age" : 22
}
{
        "_id" : ObjectId("66223d7d92bc0934a62dc8fe"),
        "Name" : "Gayathri",
        "Age" : 20
}

> show dbs
Kavya   0.000GB
admin   0.000GB
config  0.000GB
local   0.000GB
test    0.000GB
> use Kavya
switched to db Kavya
> show collections
Emp
stu
student
> db.stu.find()
{ "_id" : ObjectId("66222ad892bc0934a62dc8f7"), "Name" : "Binu", "Age" : 20 }
{ "_id" : ObjectId("66222b0f92bc0934a62dc8f9"), "Name" : "Shithin", "Age" : 22 }
{ "_id" : ObjectId("66222b1a92bc0934a62dc8fa"), "set" : { "Name" : "P" } }
{ "_id" : ObjectId("66222b3492bc0934a62dc8fb"), "Name" : "Farhan MP", "Age" : 22 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fd"), "Name" : "Arun", "Age" : 23 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fe"), "Name" : "Gayathri", "Age" : 20 }
> db.stu.updateone({Name:"Arun"},{$set:{Name:"Arun Kumar"}})


---------------update one-----------
> db.stu.updateOne({Name:"Arun"},{$set:{Name:"Arun Kumar"}})
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
> db.stu.find()
{ "_id" : ObjectId("66222ad892bc0934a62dc8f7"), "Name" : "Binu", "Age" : 20 }
{ "_id" : ObjectId("66222b0f92bc0934a62dc8f9"), "Name" : "Shithin", "Age" : 22 }
{ "_id" : ObjectId("66222b1a92bc0934a62dc8fa"), "set" : { "Name" : "P" } }
{ "_id" : ObjectId("66222b3492bc0934a62dc8fb"), "Name" : "Farhan MP", "Age" : 22 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fd"), "Name" : "Arun Kumar", "Age" : 23 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fe"), "Name" : "Gayathri", "Age" : 20 }

----------different elements update-(Many)-----------
> db.stu.updateMany({Age:20},{$set:{Age:"26"}})
{ "acknowledged" : true, "matchedCount" : 2, "modifiedCount" : 2 }
> db.stu.find()
{ "_id" : ObjectId("66222ad892bc0934a62dc8f7"), "Name" : "Binu", "Age" : "26" }
{ "_id" : ObjectId("66222b0f92bc0934a62dc8f9"), "Name" : "Shithin", "Age" : 22 }
{ "_id" : ObjectId("66222b1a92bc0934a62dc8fa"), "set" : { "Name" : "P" } }
{ "_id" : ObjectId("66222b3492bc0934a62dc8fb"), "Name" : "Farhan MP", "Age" : 22 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fd"), "Name" : "Arun Kumar", "Age" : 23 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fe"), "Name" : "Gayathri", "Age" : "26" }

------bulk update--(unordered)-------

> var bulk=db.stu.initializeUnorderedBulkOp();
> bulk.insert({Name:"Krishna",Age:23});
> bulk.insert({Name:"Libin",Age:25);
> bulk.insert({Name:"Kushi",Age:20});
> bulk.insert({Name:"Sandra",Age:21});
> bulk.insert({Name:"tiya",Age:20});
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
> db.stu.find()
{ "_id" : ObjectId("66222ad892bc0934a62dc8f7"), "Name" : "Binu", "Age" : "26" }
{ "_id" : ObjectId("66222b0f92bc0934a62dc8f9"), "Name" : "Shithin", "Age" : 22 }
{ "_id" : ObjectId("66222b1a92bc0934a62dc8fa"), "set" : { "Name" : "P" } }
{ "_id" : ObjectId("66222b3492bc0934a62dc8fb"), "Name" : "Farhan MP", "Age" : 22 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fd"), "Name" : "Arun Kumar", "Age" : 23 }
{ "_id" : ObjectId("66223d7d92bc0934a62dc8fe"), "Name" : "Gayathri", "Age" : "26" }
{ "_id" : ObjectId("662780ad2d1eacde0f0a0ff9"), "Name" : "Krishna", "Age" : 23 }
{ "_id" : ObjectId("662780ad2d1eacde0f0a0ffa"), "Name" : "Kushi", "Age" : 20 }
{ "_id" : ObjectId("662780ad2d1eacde0f0a0ffb"), "Name" : "Sandra", "Age" : 21 }
{ "_id" : ObjectId("662780ad2d1eacde0f0a0ffc"), "Name" : "tiya", "Age" : 20 }


-----------bulk Ordered---------
> var bulk=db.student.initializeOrderedBulkOp();
> bulk.insert({Name:"Linta",Age:20});
> bulk.insert({Name:"Manu",Age:22});
> bulk.insert({Name:"Yadhu",Age:24});
> bulk.insert({Name:"Ananya",Age:19});
> bulk.insert({Name:"Zia",Age:25});
> bulk.execute();
BulkWriteResult({
        "writeErrors" : [ ],
        "writeConcernErrors" : [ ],
        "nInserted" : 5,
        "nUpserted" : 0,
        "nMatched" : 0,
        "nModified" : 0,
        "nRemoved" : 0,
        "upserted" : [ ]
})
> db.student.find()
{ "_id" : ObjectId("662783262d1eacde0f0a0ffd"), "Name" : "Linta", "Age" : 20 }
{ "_id" : ObjectId("662783262d1eacde0f0a0ffe"), "Name" : "Manu", "Age" : 22 }
{ "_id" : ObjectId("662783262d1eacde0f0a0fff"), "Name" : "Yadhu", "Age" : 24 }
{ "_id" : ObjectId("662783262d1eacde0f0a1000"), "Name" : "Ananya", "Age" : 19 }
{ "_id" : ObjectId("662783262d1eacde0f0a1001"), "Name" : "Zia", "Age" : 25 }


----------create index--------
        
> db.student.createIndex({Name:-1})
{
        "numIndexesBefore" : 2,
        "numIndexesAfter" : 2,
        "note" : "all indexes already exist",
        "ok" : 1
}
> db.student.getIndexes()
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
                        "Name" : -1
                },
                "name" : "Name_-1"
        }
]
> db.student.dropIndex({Name:-1})
{ "nIndexesWas" : 2, "ok" : 1 }
> db.student.getIndexes()
[ { "v" : 2, "key" : { "_id" : 1 }, "name" : "_id_" } ]
