import React, { Fragment } from 'react'
import {useNavigate} from "react-router-dom"
import {useForm} from 'react-hook-form';
//This is the model of cards for the program
export function PrincipalCard({props}) {
  const {register,handleSubmit} = useForm();
  
  let navigate = useNavigate()
  const next = (userLogged,userStoreIDLogged) =>{ 
      navigate(props.redirectLink,{state:{user:userLogged,store:userStoreIDLogged}})
  }
  const onSubmit = async(data) =>{
    next(props.userLogged,props.store) 
  }
  return (
    <Fragment>
      <form onSubmit={handleSubmit(onSubmit)}>
        <div className="col">
            <div className="card border-dark text-center h-100">
                <div className="card-body text-dark">
                    <h2 className="card-title">{props.title}</h2>
                    <p className="card-text">{props.body ? props.text : ""}</p>
                </div>                                
                <input type="submit" className="btn btn-dark btn-block" value = {props.buttonTitle} />                                
            </div>
        </div>
      </form>
    </Fragment>
  )
}
