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

router.post("/getOneDestilleryWhisky",async (req,res)=>{
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id
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
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id,
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
    conn.connect().then(() =>{
        var whisky ={
            'name':req.body.name
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
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id,
            'name':req.body.name
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