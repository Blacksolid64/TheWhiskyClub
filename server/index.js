//connection

const express = require("express")
const app = express()
const PORT = 3001
const userControllerRoute = require('./controller/userController')
const whiskeyControllerRoute = require('./controller/whiskeyController')
const cors = require('cors')
app.use(cors())

app.use(express.json({limit: "50mb"}))
app.use('/users',userControllerRoute)
app.use('/whisky',whiskeyControllerRoute)
app.listen(PORT, () =>{
	console.log(`Server is listening at http://localhost:${PORT}`)
})



/*
app.post("/api/clients",(req,res)=>{
	console.log("dummy endPoint")
	res.send("You have posted something")
})
app.get("/",(req,res)=>{
	res.send("hello world");
})



/*const express = require("express")
const app = express()
const mongoose = require('mongoose')
const PORT = 3001
const usersRouter = require('./routes/UsersRoutes')
const departmentsRouter = require('./routes/DepartmentsRoutes')
const parkingsRouter = require('./routes/ParkingRoutes')


const cors = require('cors')

app.use(express.json())
app.use(cors())
app.use('/users',usersRouter)
app.use('/departments',departmentsRouter)
app.use('/parkings',parkingsRouter)
*/

