import React,{Fragment,useRef,useEffect,useState } from 'react'
//import image from '../../images/tecSanJose.jpg'
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios';
import emailjs from '@emailjs/browser';

export function CreateWhisky() {

    const {register,handleSubmit} = useForm();
    const {state} = useLocation();
    const userStoreIDLogged = state.store

    const form = useRef();

    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/WhiskysManage"
        navigate(path)
    }

    const [TypeList,setTypeList] = useState([]);
    const [DistilleryList,setDistillery] = useState([]);
    const [PresentationList,setPresentationList] = useState([]);

    useEffect(() => {

        axios.get('http://localhost:3001/whisky/typeWhisky',{params: {store:userStoreIDLogged}}).then((response) => {
            setTypeList(response.data)
        })
        axios.get('http://localhost:3001/whisky/DestileryWhisky',{params:{store:userStoreIDLogged}}).then((response) => {
            setDistillery(response.data)
        })
        axios.get('http://localhost:3001/whisky/PresentationWhisky',{params:{store:userStoreIDLogged}}).then((response) => {
            setPresentationList(response.data)
        })
      },[]);

    const onSubmit = async(data) =>{

        try{
            data.Image = data.Image[0].name
            console.log("data")
            console.log(data.image)
            axios.post('http://localhost:3001/whisky/createWhisky',data).then((response) => {
            })
            //send_email('data')
            //moveTo()
            
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
                                <div className="card-body">
                                    <br></br>
                                    <form onSubmit={handleSubmit(onSubmit)} >
                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" placeholder="Name" aria-label="Name" {...register('name',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Description</label>
                                            <input type="text" className="form-control" placeholder="Description" aria-label="Description" {...register('description',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age in years</label>
                                            <input type="number" className="form-control" placeholder="Age in years" aria-label="Age in years" {...register('Age_in_years',{required:true})}/>
                                        </div>

                                    </div>
                                    <br></br>

                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Image</label>
                                            <input type="file" className="form-control" placeholder="Image" aria-label="Image" {...register('Image',{required:true})}/>
                                        </div>
                                        
                                    </div>

                                    <br></br>
                                    <div className="row">

                                        <div className="col">
                                        <label htmlFor="text" className="form-label">Distillery</label>
                                            <select className="form-select" defaultValue="Distillery" aria-label="Whiskys"{...register('Distillery',{required:true})}> 
                                                <option value="Distillery"  disabled>Distillery</option>
                                                {DistilleryList.map((whisky) =>{
                                                    return (
                                                        <option key={whisky.id} value={whisky.id}> {whisky.name}</option>
                                                    );
                                                    })}
                                            </select>
                                        </div>

                                        <div className="col">
                                        <label htmlFor="text" className="form-label">Presentation</label>                                        
                                            <select className="form-select" defaultValue="Presentation" aria-label="Whiskys"{...register('Presentation',{required:true})}> 
                                                <option value="Presentation" disabled> Presentation </option>
                                                {PresentationList.map((whisky) =>{
                                                    return (
                                                        <option key={whisky.id} value={whisky.id}> {whisky.name}</option>
                                                    );
                                                    })}
                                            </select>
                                        </div>
                                        
                                        <div className="col">
                                        <label htmlFor="text" className="form-label">Type</label>
                                            <select className="form-select" defaultValue='DEFAUL' aria-label="Whiskys"{...register('Type',{required:true})}> 
                                                <option value="Type" disabled> Type </option>
                                                {TypeList.map((whisky) =>{
                                                    return (
                                                        <option key={whisky.id} value={whisky.id}> {whisky.name}</option>
                                                    );
                                                    })}
                                            </select>
                                        </div>

                                    </div>

                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Quantity</label>
                                            <input type="number" className="form-control" placeholder="Quantity" aria-label="Quantity" {...register('quantity',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price by unit</label>
                                            <input type="number" className="form-control" placeholder="Price By Unit" aria-label="Price By Unit" {...register('priceByUnit',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Store Code</label>
                                            <input type="text" className="form-control"  placeholder="Store id" aria-label="Store id" {...register('Store_id',{required:true})}/>
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
        </header>
      </Fragment>
    
  )
}
