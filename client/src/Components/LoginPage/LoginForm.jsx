import React, { Fragment} from 'react';
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios';
export  function LoginForm() {
    const {register,handleSubmit} = useForm();
    
    let navigate = useNavigate()
    const loggedIn = (userLogged,userType) =>{
        let adminPath
        (userType==='client') ? (adminPath='/ClientPage') : (adminPath='/AdminPage') 
        navigate(adminPath,{state:{user:userLogged}})
    }


    const onSubmit = async(data) =>{
        try{
            const response = await axios.post('http://localhost:3001/users/login', data);
            const userLogged = response.data.email
            const userType = response.data.type
            loggedIn(userLogged,userType)
            
        } catch(err){
            alert('Invalid User')
        }
        
    
    }

  return (
      <Fragment>
          <form onSubmit={handleSubmit(onSubmit)}>
                <div className="mb-3">
                    <label htmlFor="username" className="form-label">Username</label>
                    <input type="username" className="form-control" id="username" placeholder="Your Username"
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