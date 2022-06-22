import React,{Fragment,useState,useEffect} from 'react'
import { useLocation } from 'react-router-dom';
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'

export function EmployeeModify() {

    const {state} = useLocation();
    const whiskyInfo = state.whiskyInfo[0];
    const userStoreIDLogged = state.store
    
    const {register,handleSubmit} = useForm();

    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/AdmiMenu"
        navigate(path,{state:{store:userStoreIDLogged}})
    }

      const onSubmit = async(data) =>{
        try{
            axios.post('http://localhost:3001/whisky/ModifyEmployee',{data:data,store:userStoreIDLogged} ).then((response) => {
            })
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
                                    <h1 className="card-title text-center text-dark">Modify Employee</h1>
                                    <br></br>
                                    
                                    <form onSubmit={handleSubmit(onSubmit)} >
                                    <div className="row">
                                    <div className="col">
                                            <label htmlFor="text" className="form-label">Identification</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.identification} {...register('id',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.name} {...register('name',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Salary</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.salary} {...register('salary',{required:true})}/>
                                        </div>

                                    </div>
                                    <br></br>
                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Last Name</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.surname_1}{...register('Last_Name',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Second Last Name</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.surname_2} {...register('Second_Last_Name',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Hiring Date</label>
                                            <input type="date" className="form-control" value = {whiskyInfo.hiring_date}{...register('hiring_date',{required:true})}/>
                                        </div>


                                    </div>
                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age</label>
                                            <input type="number" className="form-control" value = {whiskyInfo.age} {...register('Age',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Phone number</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.phone} aria-label="Phone number" {...register('Phone_number',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">address</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.address} {...register('address',{required:true})}/>
                                        </div>

                                    </div>

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
