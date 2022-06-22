var config = require('../config.js')
const router = require('express').Router();


const sql = config.sql
//const conn = config.conn

router.get("/whiskysSelectAll",async (req,res)=>{
    var store = req.query.store.toString();
    console.log("store");
    console.log(store);
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.execute('Whiskey_select_all', (err, result) =>{
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})


router.post("/selectWhiskeyDetailed",async (req,res)=>{
    var store = req.body.store.toString().toString();
    //console.log("Store_below");
    console.log(store);
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    var whiskeyId = req.body.id;
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('whiskey_id_IN', whiskeyId)
        request.execute('Whiskey_select_id_detailed', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})


router.post("/addProductCart",async (req,res)=>{
    var store = req.body.store.toString();
    console.log(store);
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    var quantity = req.body.amountCar;
    var whiskeyId = req.body.Whiskyid;
    var userId = req.body.Userid;
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('quantity_IN', quantity)
        request.input('whiskeyID_IN', whiskeyId)
        request.input('idUser_IN', userId)
        request.execute('Sale_detail_insert', (err, result) =>{
        console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/watchBag",async (req,res)=>{
    var store = req.body.store.toString();
    console.log(store);
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    var userId = req.body.user;
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('Userid_IN', userId)
        request.execute('Sale_detail_select_id', (err, result) =>{
        console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})


router.post("/payBag",async (req,res)=>{
    var store = req.body.store.toString();
    console.log(`store ${store}`);
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    var userId = req.body.user;
    var lat = req.body.latitude;
    var length = req.body.length;
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('clientID_IN', userId)
        request.input('latitude_IN', lat)
        request.input('longitude_IN', length)
        request.execute('Pay', (err, result) =>{
        console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})


router.post("/getFilteredWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    console.log(store);
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    var whisky = {
        "user_id":req.body.userLogged,
        "name":req.body.name,
        "type":req.body.type,
        "price":req.body.price,
        "popularity":req.body.popularity,
        "distance":req.body.distance
    }
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('User_ID',whisky.user_id)
        request.input('Name_IN', whisky.name)
        request.input('Type_IN', whisky.type)
        request.input('Popularity_IN', whisky.popularity)
        request.input('Price_IN', whisky.price)
        request.input('Distance_IN', whisky.distance)

        request.execute('Whiskey_filtered_select', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
})

// CRUD Whisky

router.get("/getWhisky",async (req,res)=>{
    var store = req.query.store.toString();
    console.log(store);
    switch (store.toString().slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.execute('Wiskey_get', (err, result) =>{
        //console.log(conn.config.database);
        //console.log(err);
        //console.log(result.recordset);
        //console.log(err);
        //console.log(result.returnValue);
        res.send(result.recordset);
        //console.log(result.output);
        })
    })
    //.then(() => conn.close());
    //res.send("hello world");
})

router.get("/getWhiskyTypes",async (req,res)=>{
   // var store = req.body.store.toString();
    switch (req.query.store.toString().slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.execute('Whiskey_type_select', (err, result) =>{
        //console.log(conn.config.database);
        console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        
        })
    })
    //.then(() => conn.close());
    //res.send("hello world");
})

router.post("/modifyWhisky",async (req,res)=>{
    var store = req.body.store;
    console.log(store);
    switch (store.toString().slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    var whisky = {
        "id":req.body.data.Whiskey_id,
        "name":req.body.data.name,
        "desciption":req.body.data.description,
        "whiskeyType":req.body.data.Type,
        "age":req.body.data.Age_in_years,
        "distillery":req.body.data.Distillery,
        "image":req.body.data.Image,
        "presentation":req.body.data.Presentation
    }
    console.log("sera que si")
    console.log(whisky)
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('whiskey_id_IN', whisky.id)
        request.input('name_IN', whisky.name)
        request.input('description_IN', whisky.desciption)
        request.input('idWhiskeyTypeFK_IN', whisky.whiskeyType)
        request.input('Age_IN', whisky.age)
        request.input('Distillery_IN', whisky.distillery)
        request.input('Image_IN', whisky.image)
        request.input('Presentation_IN', whisky.presentation)
        request.execute('Whiskey_update', (err, result) =>{
        console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/createWhisky",async (req,res)=>{
    var store = req.body.Store_id;
    console.log(req.body);
    switch (store.toString().slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    var whisky = {
        "name":req.body.name,
        "desciption":req.body.description,
        "whiskeyType":req.body.Type,
        "age":req.body.Age_in_years,
        "distillery":req.body.Distillery,
        "presentation":req.body.Presentation,
        "quantity":req.body.quantity,
        "price_by_unit":req.body.priceByUnit,
        "store":req.body.Store_id,
        "special":req.body.special
    }
    //const img = "DECLARE @img VARBINARY(MAX) = (SELECT BulkColumn From OPENROWSET(BULK 'C:\\'"+req.body.Image+",SINGLE_BLOB) AS Imagen)";
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('name_IN', whisky.name)
        request.input('description_IN', whisky.desciption)
        request.input('WhiskeyType_IN', whisky.whiskeyType)
        request.input('Age_IN', whisky.age)
        request.input('Distillery_IN', whisky.distillery)
        request.input('Presentation_IN', whisky.presentation)
        request.input('Quantity_IN', whisky.quantity)
        request.input('Price_by_unit_IN', whisky.price_by_unit)
        request.input('IdStore_FK', whisky.store)
        request.input('Special_IN', whisky.special)
        request.execute('Whiskey_insert', (err, result) =>{
        console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/getOneWhisky",async (req,res)=>{

    var store = req.body.store.toString();
    switch (store.toString().slice(0,1)){
        case '1':

            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id
        }
        const request = new sql.Request(conn)
        request.input('whiskey_id_IN', whisky.id)
        request.execute('Whiskey_select_id_detailed', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/deleteWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.toString().slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Whiskey_delete', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

//CRUD Type whisky

router.get("/typeWhisky",async (req,res)=>{
    var store = req.query.store.toString();
    
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
    const request = new sql.Request(conn)
    request.execute('Whiskey_type_select', (err, result) =>{
    //console.log(err);
    //console.log(result.recordset);
    res.send(result.recordset);
    //console.log(result.returnValue);
    //console.log(result.output);
    })
});
//res.send("hello world");
})

router.post("/getOneTypeWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id
        }
        console.log("llololo")
        console.log(whisky.id)
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Whiskey_type_select_id', (err, result) =>{
        //console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/ModifyTypeWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id,
            'name':req.body.data.name
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.input('name_IN', whisky.name)
        request.execute('Whiskey_type_update', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/deleteTypeWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    console.log(store);
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id,
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Whiskey_type_delete', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})


router.post("/createTypeWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    console.log(store);
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'name':req.body.data.name
        }
        const request = new sql.Request(conn)
        request.input('name_IN', whisky.name)
        request.execute('Whiskey_type_insert', (err, result) =>{
            switch (store.slice(0,1)){
                case '1':
                    conn = config.conn[0];
                    console.log('Logged into US');
                    break;
                case '2':
                    conn = config.conn[1];
                    console.log('Logged into Ireland');
                    break;
                case '3':
                    conn = config.conn[2];
                    console.log('Logged into Scotland');
                    break;
                default:
                    conn = config.conn[0];
                    break;
            }
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})


// CRUD Presentation


router.post("/getOnePresentationWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('PresentationOneWiskey_get', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/deletePresentationWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id,
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Presentation_delete', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.get("/PresentationWhisky",async (req,res)=>{
    var store = req.query.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
    const request = new sql.Request(conn)
    request.execute('PresentationWiskey_get', (err, result) =>{
    //console.log(err);
    //console.log(result.recordset);
    res.send(result.recordset);
    //console.log(result.returnValue);
    //console.log(result.output);
    })
});
//res.send("hello world");
})

router.post("/createPresentarionWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'name':req.body.data.name
        }
        const request = new sql.Request(conn)
        request.input('name_IN', whisky.name)
        request.execute('Presentation_insert', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/ModifyPresentationWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id,
            'name':req.body.data.name
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.input('name_IN', whisky.name)
        request.execute('Presentation_update', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

// CRUD Destiller

router.get("/DestileryWhisky",async (req,res)=>{
    var store = req.query.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
    const request = new sql.Request(conn)
    request.execute('Distillery_select_all', (err, result) =>{
    //console.log(err);
    //console.log(result.recordset);
    res.send(result.recordset);
    //console.log(result.returnValue);
    //console.log(result.output);
    })
});
//res.send("hello world");
})

router.post("/getOneDestilleryWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Distillery_select_id', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/deleteDestilleryWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id,
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Distillery_delete', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/createDestilleryWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'name':req.body.data.name
        }
        const request = new sql.Request(conn)
        request.input('name_IN', whisky.name)
        request.execute('Distillery_insert', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/ModifyDestilleryWhisky",async (req,res)=>{
    var store = req.body.store.toString();
    switch (store.slice(0,1)){
        case '1':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case '2':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case '3':
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.data.id,
            'name':req.body.data.name
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.input('name_IN', whisky.name)
        request.execute('Distillery_update', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})


module.exports = router;