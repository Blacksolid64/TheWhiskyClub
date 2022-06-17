var config = require('../config.js')
const router = require('express').Router();


const sql = config.sql
const conn = config.conn


router.get("/whiskysSelectAll",async (req,res)=>{
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

router.post("/getFilteredWhisky",async (req,res)=>{
    var whisky = {
        "name":req.body.name,
        "type":req.body.type,
        "price":req.body.price,
        "popularity":req.body.popularity,
        "distance":req.body.distance
    }
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
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

router.get("/getWhisky",async (req,res)=>{
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.execute('Wiskey_get', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.get("/getWhiskyTypes",async (req,res)=>{
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.execute('Whiskey_type_select', (err, result) =>{
        console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
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
        //console.log(result.returnValue);
        //console.log(result.output);
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
        request.input('@id_IN', whisky.id)
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

router.get("/DestileryWhisky",async (req,res)=>{
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

router.get("/PresentationWhisky",async (req,res)=>{
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
module.exports = router;