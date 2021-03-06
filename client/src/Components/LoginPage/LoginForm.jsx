import React, { Fragment} from 'react';
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios';
export  function LoginForm() {
    //parameters for system use
    const {register,handleSubmit} = useForm();
    //sends parameters to and manages another system
    let navigate = useNavigate()
    const loggedIn = (userLogged,userType,userStoreID) =>{
        let adminPath
        (userType===3) ? (adminPath='/ClientMenu') : (adminPath='/AdmiMenu') 
        navigate(adminPath,{state:{user:userLogged,store:userStoreID}})
    }


    const onSubmit = async(data) =>{
        try{
            const response = await axios.post('http://localhost:3001/users/login', data);
            //alert(JSON.stringify(response.data[0].storeID))
            const userLogged = response.data[0].identification
            const userType = response.data[0].userType
            const userStoreID = response.data[0].storeID
            
            loggedIn(userLogged,userType,userStoreID)
            
        } catch(err){
            alert('Invalid User')
        }
        
    
    }

  return (
      <Fragment>
          <form onSubmit={handleSubmit(onSubmit)}>
                <div className="mb-3">
                    <label htmlFor="username" className="form-label">Username</label>
                    <input type="email" className="form-control" id="username" placeholder="Your Username"
                    {...register('username',{required:true})}/>
                </div>

                <div className="mb-3">
                    <label htmlFor="password" className="form-label">Password</label>
                    <input type="password" className="form-control" id="password" placeholder="Your password"
                    {...register('password',{required:true})}
                    />
                </div>
                    <center>
                        <input type='submit' className='btn btn-dark btn-block' value='Login'/>
                    </center>
                    
            </form>
      </Fragment>
    
  )
}
