var config = require('../config.js')
const router = require('express').Router();


const sql = config.sql
const conn = config.conn


router.post("/login",async (req,res)=>{
    var user = {
        "email":req.body.username,
        "password":req.body.password
    }
    conn.connect().then(() =>{
        console.log('got here!')
        const request = new sql.Request(conn)
        request.execute('libros_select', (err, result) =>{
        console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

module.exports = router;