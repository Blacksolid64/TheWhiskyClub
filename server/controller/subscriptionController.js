var config = require('../config.js')
const router = require('express').Router();


const sql = config.sql
//const conn = config.conn
var conn


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


router.get("/SuscriptionGet",async (req,res)=>{
    var store = req.query.store;
    console.log("Datas")
    console.log(store)
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
    request.execute('Subscription_select', (err, result) =>{
    //console.log(err);
    console.log("datas entraron")
    console.log(result.recordset);
    res.send(result.recordset);
    console.log(result.returnValue);
    console.log(result.output);
    })
});
//res.send("hello world");
})

router.post("/getOneSuscription",async (req,res)=>{
    var store = req.body.store;
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
        var whisky ={
            'id':req.body.data.id
        }
        const request = new sql.Request(conn)
        request.input('id_IN', whisky.id)
        request.execute('Subscription_select_id', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/SuscriptionDelete",async (req,res)=>{
    var store = req.body.store;
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
        var subscription ={
            'id':req.body.data.id,
        }
        const request = new sql.Request(conn)
        request.input('subscription_ID', subscription.id)
        request.execute('Subscription_delete', (err, result) =>{
        //console.log(err);
        //console.log(result.recordset);
        res.send(result.recordset);
        console.log(result.returnValue);
        console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/createSubscription",async (req,res)=>{
    var store = req.body.store;
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
        var subscription ={
            'name':req.body.data.name,
            'price':req.body.data.price,
            'duration':req.body.data.duration,
            'discountShop':req.body.data.discountShop,
            'discountDelivery':((req.body.data.discountDelivery === '1') ? 1 : 0),
            'specialWhiskeys':((req.body.data.specialWhiskeys === '1') ? 1 : 0),
            'notifications':((req.body.data.notifications=== '1') ? 1 :0),
            'giftWhiskeys':((req.body.data.giftWhiskeys === '1') ? 1 :0),
            'Gift_count':req.body.data.Gift_count
        }
        console.log("subscription")
        console.log(subscription)
        const request = new sql.Request(conn)
        request.input('name_IN', subscription.name)
        request.input('price_IN', subscription.price)
        request.input('duration_IN', subscription.duration)
        request.input('discount_IN', subscription.discountShop)
        request.input('discount_delivery_IN', subscription.discountDelivery)
        request.input('specialWhiskeys_IN', subscription.specialWhiskeys)
        request.input('notifications_IN', subscription.notifications)
        request.input('giftWhiskeys_IN', subscription.giftWhiskeys)
        request.execute('Subscription_insert', (err, result) =>{
        console.log(err);
        console.log(result.recordset);
        res.send(result.recordset);
        //console.log(result.returnValue);
        //console.log(result.output);
        })
    });
    //res.send("hello world");
})

router.post("/ModifySubscription",async (req,res)=>{
    var store = req.body.store;
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
        var subscription ={
            'id':req.body.data.id,
            'name':req.body.data.name,
            'price':req.body.data.price,
            'duration':req.body.data.duration,
            'discountShop':req.body.data.discountShop,
            'discountDelivery':req.body.data.discountDelivery,
            'specialWhiskeys':req.body.data.specialWhiskeys,
            'notifications':req.body.data.notifications,
            'giftWhiskeys':req.body.data.giftWhiskeys,
            'Gift_count':req.body.data.Gift_count
        }
        const request = new sql.Request(conn)
        request.input('subscription_ID', subscription.id)
        request.input('name_IN', subscription.name)
        request.input('price_IN', subscription.price)
        request.input('duration_IN', subscription.duration)
        request.input('discount_IN', subscription.discountShop)
        request.input('discount_delivery_IN', subscription.discountDelivery)
        request.input('specialWhiskeys_IN', subscription.specialWhiskeys)
        request.input('notifications_IN', subscription.notifications)
        request.input('giftWhiskeys_IN', subscription.giftWhiskeys)
        request.input('giftCount_IN', subscription.Gift_count)
        request.execute('Subscription_update', (err, result) =>{
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