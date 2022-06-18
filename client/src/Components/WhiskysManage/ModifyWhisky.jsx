import React,{Fragment,useState,useEffect} from 'react'
import { useLocation } from 'react-router-dom';
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'

export function ModifyWhisky() {

    const {state} = useLocation();
    const whiskyInfo = state.whiskyInfo[0];
    
    const {register,handleSubmit} = useForm();

    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/ManageParking"
        navigate(path)
    }

    const [TypeList,setTypeList] = useState([]);
    const [DistilleryList,setDistillery] = useState([]);
    const [PresentationList,setPresentationList] = useState([]);

    useEffect(() => {
        axios.get('http://localhost:3001/whisky/typeWhisky').then((response) => {
            setTypeList(response.data)
        })
        axios.get('http://localhost:3001/whisky/DestileryWhisky').then((response) => {
            setDistillery(response.data)
        })
        axios.get('http://localhost:3001/whisky/PresentationWhisky').then((response) => {
            setPresentationList(response.data)
        })
      },[]);

      const onSubmit = async(data) =>{
        try{
            axios.post('http://localhost:3001/parkings/updateByName',data).then((response) => {
            })
            console.log(data)
            //moveTo()
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
                            <div className="col-md-4">
                                <h1>Hola</h1>
                            </div>
                            <div className="col-md-8">
                                <div className="card-body">
                                    <h1 className="card-title text-center text-dark">{whiskyInfo.name}</h1>
                                    <br></br>
                                    
                                    <form onSubmit={handleSubmit(onSubmit)} >
                                    <div className="row">
                                    <div className="col">
                                            <label htmlFor="text" className="form-label">Id del Whisky</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.whiskey_id}readOnly {...register('Whiskey_id',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.name} {...register('name',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Description</label>
                                            <textarea type="text" className="form-control" defaultValue = {whiskyInfo.description} {...register('description',{required:true})}/>
                                        </div>

                                    </div>
                                    <br></br>

                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age in years</label>
                                            <input type="number" className="form-control" defaultValue = {whiskyInfo.Age_in_years} {...register('Age_in_years',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Distillery</label>
                                            <select className="form-select" defaultValue={whiskyInfo.distillery_id} aria-label="Whiskys"{...register('Distillery',{required:true})}> 
                                                <option value={whiskyInfo.distillery_id}  disabled>{whiskyInfo.Distillery}</option>
                                                {DistilleryList.map((whisky) =>{
                                                    return (
                                                        <option key={whisky.id} value={whisky.id}> {whisky.name}</option>
                                                    );
                                                    })}
                                            </select>
                                        </div>
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Image</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.Image} {...register('Image',{required:true})}/>
                                        </div>
                                        
                                    </div>

                                    <br></br>
                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Presentation</label>                                        
                                            <select className="form-select" defaultValue={whiskyInfo.presentation_id} aria-label="Whiskys"{...register('Presentation',{required:true})}> 
                                                <option value={whiskyInfo.presentation_id} disabled> {whiskyInfo.Presentation} </option>
                                                {PresentationList.map((whisky) =>{
                                                    return (
                                                        <option key={whisky.id} value={whisky.id}> {whisky.name}</option>
                                                    );
                                                    })}
                                            </select>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Type</label>
                                            <select className="form-select" defaultValue={whiskyInfo.whiskey_type_id}  aria-label="Whiskys"{...register('Type',{required:true})}> 
                                                <option value={whiskyInfo.whiskey_type_id}  disabled> {whiskyInfo.Type} </option>
                                                {TypeList.map((whisky) =>{
                                                    return (
                                                        <option key={whisky.id} value={whisky.id}> {whisky.name}</option>
                                                    );
                                                    })}
                                            </select>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Quantity</label>
                                            <input type="number" className="form-control" defaultValue = {whiskyInfo.quantity} {...register('quantity',{required:true})}/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price by unit</label>
                                            <input type="money" className="form-control" defaultValue = {whiskyInfo.priceByUnit} {...register('priceByUnit',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Store Code</label>
                                            <input type="text" className="form-control"  defaultValue = {whiskyInfo.Store_id} readOnly {...register('Store_id',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Store</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.Store}readOnly {...register('Store',{required:true})}/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <center>
                                            <button type="submit" className= "btn btn-dark text-center" >Modificar información</button>    
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
