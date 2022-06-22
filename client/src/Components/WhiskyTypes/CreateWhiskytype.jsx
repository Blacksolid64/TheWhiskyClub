import React,{Fragment,useRef } from 'react'
//import image from '../../images/tecSanJose.jpg'
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios';
import emailjs from '@emailjs/browser';


export function CreateWhiskytype() {

    //receives parameters from another window
    const {register,handleSubmit} = useForm();
    const {state} = useLocation();
    const userStoreIDLogged = state.store

    const form = useRef();
    //sends parameters to and manages another system
    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/TypeMenu"
        navigate(path,{state:{store:userStoreIDLogged}})
    }

    const onSubmit = async(data) =>{

        try{
            axios.post('http://localhost:3001/whisky/createTypeWhisky',{data:data,store:userStoreIDLogged}).then((response) => {
            })
            moveTo()
            
        }catch(err){
            alert(err)
        }
    }


//<img src={image} className="img-fluid rounded-start" alt="..."/>
  return (
    <Fragment>
        <header className="App-header">
            <div style={{ backgroundImage: 'url(require("./images/genericBackground.png"))' }}>
                <div className='container mx-auto'>
                    <div className="card bg-light w-100 mb-3  text-dark" >                    
                        <div className="row g-0">
                            <div className="col-md-4">
                                <h1>Hola</h1>
                            </div>
                            <div className="col-md-8">
                                <div className="card-body">
                                    <br></br>
                                    <form onSubmit={handleSubmit(onSubmit)} >
                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" placeholder="Name" aria-label="Name" {...register('name',{required:true})}/>
                                        </div>
                                        
                                    </div>

                                    <br></br>

                                    <center>
                                            <button type="submit" className="btn btn-dark text-center">Create</button>  
                                    </center>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
      </Fragment>
    
  )
}
