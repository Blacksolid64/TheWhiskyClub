var config = require('../config.js')
const router = require('express').Router();
var CryptoJS = require("crypto-js");


const sql = config.sql
var conn

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
        console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        //console.log(result.output);
        })
    })
    //.then(() => conn.close());
    //res.send("hello world");
})

router.post("/CreateUser",async (req,res)=>{
    
    var ciphertext = CryptoJS.AES.encrypt(req.body.data.UPassword, 'my-secret-key@123').toString();

    var store = req.body.Store_id;
    switch (store){
        case 1:
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case 2:
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case 3:
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    }
    console.log(ciphertext)
    conn.connect().then(() =>{
        var user ={
            'id':req.body.data.id,
            'email':req.body.data.Email,
            'Upassword':ciphertext,
            'store':req.body.data.Store_id,
            'Uname':req.body.data.Uname,
            'lastName':req.body.data.Last_Name,
            'secondlastName':req.body.data.Second_Last_Name,
            'age':req.body.data.Age,
            'latitude':req.body.lat,
            'longitude':req.body.lng,
            'phone':req.body.data.Phone_number
        }    
        console.log("user.latitude")
        console.log(user.name)
        const request = new sql.Request(conn)
        request.input('identification_IN', user.id)
        request.input('email_IN', user.email)
        request.input('password_INN',user.UPassword)
        request.input('Store_IN', user.store)
        request.input('name_INN', req.body.data.Uname)
        request.input('surname_1_IN', user.lastName)
        request.input('surname_2_IN', user.secondlastName)
        request.input('age_IN', user.age)
        request.input('latitude_IN', user.latitude)
        request.input('longitude_IN', user.longitude)
        request.input('phone_IN', user.phone)
        request.execute('User_insert', (err, result) =>{
        console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.get("/EmployeeGet",async (req,res)=>{
    var store = req.query.store;
    switch (store){
        case 1:
            conn = config.conn[0];
            console.log('Logged into US');
            break;
        case 2:
            conn = config.conn[1];
            console.log('Logged into Ireland');
            break;
        case 3:
            conn = config.conn[2];
            console.log('Logged into Scotland');
            break;
        default:
            conn = config.conn[0];
            break;
    } 
    conn.connect().then(() =>{
        const request = new sql.Request(conn)
        request.execute('Employee_select_all', (err, result) =>{
        //console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        }) 
    });
    //res.send("hello world");
})

router.post("/getOneEmployee",async (req,res)=>{

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
        request.input('database_IN', store.toString().slice(0,1))
        request.input('userID_IN', whisky.id)
        request.execute('Employee_select_id', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/deleteEmployee",async (req,res)=>{
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
        request.input('database_IN', store.toString().slice(0,1))
        request.input('userID_IN', whisky.id)
        request.execute('Employee_delete', (err, result) =>{
        console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
}) 

router.post("/CreateEmployee",async (req,res)=>{
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
        request.execute('Employee_insert', (err, result) =>{
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