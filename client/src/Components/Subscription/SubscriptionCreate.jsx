import React,{Fragment,useState,useEffect} from 'react'
import { useLocation } from 'react-router-dom';
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'

export function SubscriptionCreate() {
    //receives parameters from another window
    const {state} = useLocation();
    const userStoreIDLogged = state.store
    
    const {register,handleSubmit} = useForm();
    //sends parameters to and manages another system
    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/SubscriptionManager"
        navigate(path,{state:{store:userStoreIDLogged}})
    }

      const onSubmit = async(data) =>{
        try{
            console.log(userStoreIDLogged)
            axios.post('http://localhost:3001/subscription/createSubscription',{data:data,store:userStoreIDLogged}).then((response) => {
            })
            console.log(data)
            moveTo()
        }catch(err){
                alert('An error occurred')
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
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control"  {...register('name',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price</label>
                                            <input type="number" className="form-control"  {...register('price',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Duration</label>
                                            <input type="number" className="form-control"  {...register('duration',{required:true})}/>
                                        </div>


                                    </div>

                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Discount Shop</label>
                                            <input type="number" className="form-control"  {...register('discountShop',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Discount Delivery</label>
                                            <select className="form-select"  {...register('discountDelivery',{required:true})}> 
                                                <option key = {1} value= {1}>True</option>
                                                <option key= {0} value= {0}>False</option>
                                            </select> 
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Special Whiskys</label>
                                            <select className="form-select"  {...register('specialWhiskeys',{required:true})}> 
                                                <option key = {1} value= {1}>True</option>
                                                <option key= {0} value= {0}>False</option>
                                            </select>    
                                        </div>

                                    </div>
                                    
                                    <br></br>
                                    
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Notifications</label>
                                            <select className="form-select" defaultValue= 'True' {...register('notifications',{required:true})}> 
                                                <option key = {1} value= {1}>True</option>
                                                <option key= {0} value= {0}>False</option>
                                            </select>  
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Gift Whiskeys</label>
                                            <select className="form-select" aria-label="giftWhiskeys"{...register('giftWhiskeys',{required:true})}> 
                                            <option key = {1} value= {1}>True</option>
                                            <option key= {0} value= {0}>False</option>
                                            </select>
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
