import React,{Fragment,useEffect,useState} from 'react'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'
import { useLocation } from 'react-router-dom';


export function SubscriptionTier({props}) {

    const {state} = useLocation();
    const userLogged = state.user
    const store = state.store
    const subscrit = state.subscription
    const {register,handleSubmit} = useForm();

    let navigate = useNavigate()
    const backMenu = (userLogged) =>{
        console.log(store)
        navigate("/ClientMenu",{state:{user:userLogged,store:store}})
    }


    const onSubmit = async(data) =>{
        try{
            if(props.action === '1'){
                axios.post('http://localhost:3001/subscription/Subscription',{data:data,userLogged:userLogged,subscrit:1,store:store})
                alert('Congratulations, now you are Tier Short Glass')
                
            }else if(props.action === '2'){
                axios.post('http://localhost:3001/subscription/Subscription',{data:data,userLogged:userLogged,subscrit:2,store:store})
                alert('Congratulations, now you are Tier Gleincairn')
            }else{
                axios.post('http://localhost:3001/subscription/Subscription',{data:data,userLogged:userLogged,subscrit:4,store:store});
                alert('Congratulations, now you are Tier Master Destiller')
            } 
            backMenu(userLogged)
            
        } catch(err){
            alert('Se produjo un error')
        }
    }



  return (
    <Fragment>
        <form onSubmit={handleSubmit(onSubmit)}>
            <div className="card border-dark text-center text-dark h-100">
                <h2 className="card-title">{props.title}</h2>
                <h4>Benefits: </h4>
                <p className="card-text">{props.body}</p>
            </div>
            <center><input type="submit" className="btn btn-dark btn-block" value = {props.buttonTitle} /></center> 
        </form>
    </Fragment>
  )
}
