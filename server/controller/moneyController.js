var config = require('../config.js')
const router = require('express').Router();


const sql = config.sql
const conn = config.conn

// CRUD Destiller

router.get("/moneyGet",async (req,res)=>{
    conn.connect().then(() =>{
    const request = new sql.Request(conn)
    request.execute('Currency_select_all', (err, result) =>{
    //console.log(err);
    //console.log(result.recordset);
    res.send(result.recordset);
    //console.log(result.returnValue);
    //console.log(result.output);
    })
});
//res.send("hello world");
})

router.post("/moneyOneget",async (req,res)=>{
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Currency_select_id', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/deleteMoney",async (req,res)=>{
    conn.connect().then(() =>{
        var whisky ={
            'id':req.body.id,
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Currency_delete', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/createMoney",async (req,res)=>{
    conn.connect().then(() =>{
        var whisky ={
            'name':req.body.name,
            'exchange_rate':req.body.exchange_rate
        }
        const request = new sql.Request(conn)
        request.input('name_IN', whisky.name)
        request.input('exchange_rate_IN', whisky.exchange_rate)
        request.execute('Currency_insert', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/ModifyMoney",async (req,res)=>{
    conn.connect().then(() =>{
        var money ={
            'id':req.body.id,
            'name':req.body.name,
            'exchange_rate':req.body.exchange_rate
        }
        const request = new sql.Request(conn)
        request.input('id_IN', money.id)
        request.input('name_IN', money.name)
        request.input('exchange_rate_IN', money.exchange_rate)
        request.execute('Currency_update', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})


module.exports = router;