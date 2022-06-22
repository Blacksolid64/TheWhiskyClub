import React,{Fragment,useState,useEffect} from 'react'
import { useLocation } from 'react-router-dom';
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'

export function EmployeeCreate() {

    const {state} = useLocation();
    const userStoreIDLogged = state.store
    
    const {register,handleSubmit} = useForm();

    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/AdmiMenu"
        navigate(path,{state:{store:userStoreIDLogged}})
    }

      const onSubmit = async(data) =>{
        try{
            axios.post('http://localhost:3001/whisky/CreateEmployee',{data:data,store:userStoreIDLogged} ).then((response) => {
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
                                            <input type="text" className="form-control"  placeholder="Identification" aria-label="Identification" {...register('id',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control"  placeholder="Name" aria-label="Name" {...register('name',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Salary</label>
                                            <input type="text" className="form-control"  placeholder="Salary" aria-label="Salary" {...register('salary',{required:true})}/>
                                        </div>

                                    </div>
                                    <br></br>
                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Last Name</label>
                                            <input type="text" className="form-control" placeholder="Last Name" aria-label="Last Name"{...register('Last_Name',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Second Last Name</label>
                                            <input type="text" className="form-control"  placeholder="Second Last Name" aria-label="Second Last Name" {...register('Second_Last_Name',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Hiring Date</label>
                                            <input type="date" className="form-control"  placeholder="Hiring Date" aria-label="Hiring Date" {...register('hiring_date',{required:true})}/>
                                        </div>


                                    </div>
                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age</label>
                                            <input type="number" className="form-control"  placeholder="Age" aria-label="Age" {...register('Age',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Phone number</label>
                                            <input type="text" className="form-control"  placeholder="Phone number" aria-label="Phone number" {...register('Phone_number',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Address</label>
                                            <input type="text" className="form-control" placeholder="Address" aria-label="Address" {...register('address',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Store</label>
                                            <select className="form-select" defaultValue="US" aria-label="Store"{...register('Store_id',{required:true})}> 
                                                <option key={1} value={1} > USA </option>
                                                <option key={2} value={2} > Irland</option>
                                                <option key={3} value={3} > Scotland </option>
                                            </select>
                                        </div>

                                    </div>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Shedule</label>
                                            <input type="number" className="form-control"  placeholder="Shedule" aria-label="Shedule" {...register('Age',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Position</label>
                                            <input type="text" className="form-control" placeholder="Position" aria-label="Position" {...register('Position',{required:true})}/>
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

