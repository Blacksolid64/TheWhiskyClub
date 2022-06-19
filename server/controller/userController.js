var config = require('../config.js')
const router = require('express').Router();


const sql = config.sql
//var connection

router.post("/login",async (req,res)=>{
    var user = {
        "username":req.body.username,
        "password":req.body.password
    }
    /* switch(a){
        case a:
            connection = config.conn[0];
            break;
        case b:
            connection = config.conn[1];
            break;
        case c:
            connection = config.conn[2];
            break;
    } */
    config.conn[0].connect().then(() =>{
        const request = new sql.Request(config.conn[0])
        request.input('email', user.username)
        request.input('password', user.password)
        request.execute('LogIn', (err, result) =>{
        //console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    })
    //.then(() => conn.close());
    //res.send("hello world");
})

module.exports = router;