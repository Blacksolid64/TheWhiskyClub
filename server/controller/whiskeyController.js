var config = require('../config.js')
const router = require('express').Router();


const sql = config.sql
//const conn = config.conn
var conn

router.get("/whiskysSelectAll",async (req,res)=>{
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.execute('Whiskey_select_all', (err, result) =>{
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})


router.post("/selectWhiskeyDetailed",async (req,res)=>{
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
    var store = req.body.store;
    console.log(store);
    switch (1){
        case 1:
            conn = config.conn[0];
            break;
        case 2:
            conn = config.conn[1];
            break;
        case 3:
            conn = config.conn[2];
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
    var store = req.body.store;
    console.log(store);
    switch (1){
        case 1:
            conn = config.conn[0];
            break;
        case 2:
            conn = config.conn[1];
            break;
        case 3:
            conn = config.conn[2];
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
    var store = req.body.store;
    console.log(`store ${store}`);
    switch (1){
        case 1:
            conn = config.conn[0];
            break;
        case 2:
            conn = config.conn[1];
            break;
        case 3:
            conn = config.conn[2];
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
   
    //(req.query.store);

    switch (req.query.store.slice(0,2)){
        case 'US':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case 'IR':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case 'SC':
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
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    })
    //.then(() => conn.close());
    //res.send("hello world");
})

router.get("/getWhiskyTypes",async (req,res)=>{
    
    switch (req.query.store.slice(0,2)){
        case 'US':
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case 'IR':
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case 'SC':
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

router.get("/createWhisky",async (req,res)=>{
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.execute('Wiskey_get', (err, result) =>{
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
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id
        }
        const request = new sql.Request(conn)
        request.input('whiskey_id_IN', whisky.id)
        request.execute('Whiskey_select_id_detailed', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/deleteWhisky",async (req,res)=>{
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Whiskey_delete', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

//CRUD Type whisky

router.get("/typeWhisky",async (req,res)=>{
    conn.connect().then(() =>{
    const request = new sql.Request(conn)
    request.execute('TypeWiskey_get', (err, result) =>{
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
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Whiskey_type_select_id', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/ModifyTypeWhisky",async (req,res)=>{
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id,
            'name':req.body.name
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
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id,
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
    conn.connect().then(() =>{
        var whisky ={
            'name':req.body.name
        }
        const request = new sql.Request(conn)
        request.input('name_IN', whisky.name)
        request.execute('Whiskey_type_insert', (err, result) =>{
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
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id
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
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id,
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
    conn.connect().then(() =>{
        var whisky ={
            'name':req.body.name
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
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id,
            'name':req.body.name
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

module.exports = router;