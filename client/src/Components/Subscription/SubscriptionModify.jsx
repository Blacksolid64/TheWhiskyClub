import React,{Fragment,useState,useEffect} from 'react'
import { useLocation } from 'react-router-dom';
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'

export function SubscriptionModify() {

    const {state} = useLocation();
    const subscriptionInfo = state.subscriptionInfo[0];
    const userStoreIDLogged = state.store
    
    const {register,handleSubmit} = useForm();

    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/SubscriptionManager"
        navigate(path,{state:{store:userStoreIDLogged}})
    }

      const onSubmit = async(data) =>{
        try{
            console.log(userStoreIDLogged)
            axios.post('http://localhost:3001/subscription/ModifySubscription',{data:data,store:userStoreIDLogged}).then((response) => {
            })
            console.log(data)
            moveTo()
        }catch(err){
                alert('Invalid user')
        }
    }

  return (
    <Fragment>
        <header className="App-header">
            <div style={{ backgroundImage: 'url(require("./images/genericBackground.png"))' }}>
                <div className='container mx-auto'>
                    <div className="card bg-light w-100 mb-3  text-dark" >                    
                        <div className="row g-0">
                                <div className="card-body">
                                    <h1 className="card-title text-center text-dark">Modify Subscription</h1>
                                    <br></br>
                                    
                                    <form onSubmit={handleSubmit(onSubmit)} >
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Subscription Id</label>
                                            <input type="number" className="form-control" value = {subscriptionInfo.id}readOnly {...register('id',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" defaultValue = {subscriptionInfo.name} {...register('name',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price</label>
                                            <input type="number" className="form-control" defaultValue = {subscriptionInfo.price} {...register('price',{required:true})}/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Duration</label>
                                            <input type="number" className="form-control" defaultValue = {subscriptionInfo.duration} {...register('duration',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Discount Shop</label>
                                            <input type="number" className="form-control" value = {subscriptionInfo.discountShop} {...register('discountShop',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Discount Delivery</label>
                                            <input type="number" className="form-control" value = {subscriptionInfo.discountDelivery} {...register('discountDelivery',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Special Whiskys</label>
                                            <select className="form-select" defaultValue= {subscriptionInfo.specialWhiskeys} {...register('specialWhiskeys',{required:true})}> 
                                                <option value= "True">True</option>
                                                <option value= 'False'>False</option>
                                            </select>    
                                        </div>

                                    </div>
                                    
                                    <br></br>
                                    
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Notifications</label>
                                            <select className="form-select" defaultValue= {subscriptionInfo.notifications}readOnly {...register('notifications',{required:true})}> 
                                                <option value= "True">True</option>
                                                <option value= 'False'>False</option>
                                            </select>  
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Gift Whiskeys</label>
                                            <select className="form-select" defaultValue={subscriptionInfo.giftWhiskeys} aria-label="giftWhiskeys"{...register('giftWhiskeys',{required:true})}> 
                                            <option value= "True">True</option>
                                            <option value= 'False'>False</option>
                                            </select>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Gift count</label>
                                            <input type="number" className="form-control" defaultValue = {subscriptionInfo.Gift_count} {...register('Gift_count',{required:true})}/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <center>
                                            <button type="submit" className= "btn btn-dark text-center" >Modify</button>    
                                    </center>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </header>
      </Fragment>
    
  )
}
