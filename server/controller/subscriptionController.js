var config = require('../config.js')
const router = require('express').Router();


const sql = config.sql
const conn = config.conn


router.post("/Subscription",async (req,res)=>{
    var user = {
        "username":req.body.userLogged,
        "subscription":req.body.subscrit
    }
    console.log(req.body)
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.input('identification_IN', user.username)
        request.input('idSubscriptionFK_IN', user.subscription)
        request.execute('User_update', (err, result) =>{
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

module.exports = router;