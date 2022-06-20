import React,{Fragment,useState,useEffect} from 'react'
import { useLocation } from 'react-router-dom';
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'

export function MoneyModify() {

    const {state} = useLocation();
    const whiskyInfo = state.whiskyInfo[0];
    const userStoreIDLogged = state.store
    
    const {register,handleSubmit} = useForm();

    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/ManageMoney"
        navigate(path,{state:{store:userStoreIDLogged}})
    }

      const onSubmit = async(data) =>{
        try{
            axios.post('http://localhost:3001/money/ModifyMoney',{data:data,store:userStoreIDLogged}).then((response) => {
            })
            console.log("puta sal")
            console.log(data)
            moveTo()
        }catch(err){
                alert('Usuario invalido')
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
                                    <h1 className="card-title text-center text-dark">Modify Money</h1>
                                    <br></br>
                                    
                                    <form onSubmit={handleSubmit(onSubmit)} >
                                    <div className="row">
                                    <div className="col">
                                            <label htmlFor="text" className="form-label">Money Id</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.id}readOnly {...register('id',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.name} {...register('name',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Exchange rate</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.exchange_rate} {...register('exchange_rate',{required:true})}/>
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
