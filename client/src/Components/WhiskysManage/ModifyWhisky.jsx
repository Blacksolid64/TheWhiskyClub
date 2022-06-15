import React,{Fragment} from 'react'
//import image from '../../images/tecSanJose.jpg'
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"

export function ModifyWhisky() {

    const {state} = useLocation();
    const whiskyInfo =
        {
          Whiskey_id: 11,
          name: 'The Macallan',
          description: 'Ahoy irish mate',
          Age_in_years: null,
          Distillery: null,
          Image: null,
          Presentation: null,
          Type: 'Blended Scotch',
          quantity: 20,
          priceByUnit: 90,
          Store_id: 1,
          Store: 'Alabama'
        }
    //state.whiskyInfo;
    const {register,handleSubmit} = useForm();

    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/ManageParking"
        navigate(path)
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
                                    <h1 className="card-title text-center text-dark">{whiskyInfo.name}</h1>
                                    <br></br>
                                    
                                    <div className="row">
                                    <div className="col">
                                            <label htmlFor="text" className="form-label">Id del Whisky</label>
                                            <input type="text" className="form-control" Value = {whiskyInfo.Whiskey_id}readOnly {...register('Whiskey_id',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.name} {...register('name',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Description</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.description} {...register('description',{required:true})}/>
                                        </div>

                                    </div>
                                    <br></br>

                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age in years</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.Age_in_years} {...register('Age_in_years',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Distillery</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.Distillery} {...register('Distillery',{required:true})}/>
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
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.Presentation}{...register('Presentation',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Type</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.Type} {...register('Type',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Quantity</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.quantity} {...register('quantity',{required:true})}/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price by unit</label>
                                            <input type="text" className="form-control" defaultValue = {whiskyInfo.priceByUnit} {...register('priceByUnit',{required:true})}/>
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
                                        <Link to= '/WhiskysManage' className="btn btn-dark">Regresar</Link>    
                                    </center>
                                    
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
