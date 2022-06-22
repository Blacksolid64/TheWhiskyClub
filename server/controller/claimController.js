var config = require('../config.js')
const router = require('express').Router();


const sql = config.sql
//const conn = config.conn
var conn

router.post("/insertCommentary",async (req,res)=>{
    var store = req.body.store;
    console.log(store);
    switch (store.slice(0,2)){
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
    var whiskeyId = req.body.id;
    var userId = req.body.userId;
    var description = req.body.description;
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('description_IN', description)
        request.input('rating_IN', 0)
        request.input('WhiskeyFK_IN', whiskeyId)
        request.input('UserFK_IN', userId)
        request.execute('Review_insert', (err, result) =>{
        console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})


router.post("/getCommentaries",async (req,res)=>{
    var store = req.body.store;
    console.log(store);
    switch (store.slice(0,2)){
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
    var whiskeyId = req.body.id;
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('whiskyId_IN', whiskeyId)
        request.execute('Review_select', (err, result) =>{
        //console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/getUserSales",async (req,res)=>{
    var store = req.body.store;
    console.log(store);
    switch (store.slice(0,2)){
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
    var userId = req.body.user;
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('userID_IN', userId)
        request.execute('Sale_select', (err, result) =>{
        //console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/getUserClaims",async (req,res)=>{
    var store = req.body.store;
    console.log(store);
    switch (store.slice(0,2)){
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
        request.execute('Claim_select', (err, result) =>{
        //console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/insertClaim",async (req,res)=>{
    var store = req.body.store;
    console.log(store);
    switch (store.slice(0,2)){
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
    var claim = {
        "usersender":req.body.usersender,
        "usereceiver":req.body.usereceiver,
        "description":req.body.description,
        "dateMessage":req.body.dateMessage,
        "resolved":req.body.resolved,
        "goodTerms":req.body.goodTerms,
        "idSaleFK":req.bode.idSaleFK
    }
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('usersender_IN', claim.usersender)
        request.input('usereceiver_IN', claim.usereceiver)
        request.input('description_IN', claim.description)
        request.input('dateMessage_IN', claim.dateMessage)
        request.input('resolved_IN', claim.resolved)
        request.input('goodTerms_IN', claim.goodTerms)
        request.input('idSaleFK_IN', claim.idSaleFK)
        request.execute('Claim_insert', (err, result) =>{
        //console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})


module.exports = router;