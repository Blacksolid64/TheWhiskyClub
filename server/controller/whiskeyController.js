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
    var whiskeyId = 10 //req.bode.id
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('whiskey_id_IN', whiskeyId)
        request.execute('Whiskey_select_id_detailed', (err, result) =>{
        //console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.get("/getWhisky",async (req,res)=>{
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


module.exports = router;