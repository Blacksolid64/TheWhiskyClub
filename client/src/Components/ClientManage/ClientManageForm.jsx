import React,{Fragment,useRef,useState } from 'react'
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios';
import { MapContainer } from 'react-leaflet/MapContainer'
import { TileLayer } from 'react-leaflet/TileLayer'
import { LocationMarker } from '../OrdersMenu/Map'

export function ClientManageForm() {

    const {register,handleSubmit} = useForm();
    const [lat, setLat] = useState("Latitude");
    const [lng, setLng] = useState("Length");

    const getLatitude = (data) => {
        console.log(data)
        setLat(data);
    };
    const getLength = (data) => {
        setLng(data);
    };

    const form = useRef();

    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/WhiskysManage"
        navigate(path)
    }

    const onSubmit = async(data) =>{

        try{
            data.image = data.image[0].name
            axios.post('http://localhost:3001/whisky/createWhisky',data).then((response) => {
            })
            //send_email('data')
            moveTo()
            
        }catch(err){
            alert(err)
        }
    }


//<img src={image} className="img-fluid rounded-start" alt="..."/>
  return (
    <Fragment>
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
                                            <label htmlFor="text" className="form-label">Last Name</label>
                                            <input type="text" className="form-control" placeholder="Last Name" aria-label="Last Name" {...register('Last_Name',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Second Last Name</label>
                                            <input type="text" className="form-control" placeholder="Second Last Name" aria-label="Second Last Name" {...register('Second_Last_Name',{required:true})}/>
                                        </div>

                                    </div>
                                    <br></br>
                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Location</label>
                                                <center>
                                                    <MapContainer
                                                        center={{ lat: 51.505, lng: -0.09 }}
                                                        zoom={50}
                                                        scrollWheelZoom={true}
                                                        style={{ height: "50vh", width: "35vh" }}>
                                                        <TileLayer
                                                            attribution='&copy; <a href="https://www.openstreetmap.org/copyright%22%3EOpenStreetMap</a> contributors'
                                                            url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                                                        />
                                                        <LocationMarker getLatitude={getLatitude} getLength={getLength} />
                                                    </MapContainer>
                                                </center>
                                              
                                            </div>
                                                <div className="col">
                                                    <label htmlFor="text" className="form-label">Length</label>
                                                    <input type="text" className="form-control" value = {lat} readOnly {...register('Length',{required:true})}/>
                                                </div>

                                                <div className="col">
                                                    <label htmlFor="text" className="form-label">Latitude</label>
                                                    <input type="text" className="form-control" value = {lng} readOnly {...register('Latitude',{required:true})}/>
                                                </div>
                                        </div>
                                    <br></br>
                                    <div className="row">

                                    <div className="col">
                                            <label htmlFor="text" className="form-label">Email</label>
                                            <input type="text" className="form-control" placeholder="Email" aria-label="Email" {...register('Email',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Password</label>
                                            <input type="text" className="form-control" placeholder="Password" aria-label="Password" {...register('Password',{required:true})}/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age</label>
                                            <input type="text" className="form-control" placeholder="Age" aria-label="Age" {...register('Age',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Phone number</label>
                                            <input type="text" className="form-control" placeholder="Phone number" aria-label="Phone number" {...register('Phone_number',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Store</label>
                                            <input type="text" className="form-control"  placeholder="Store" aria-label="Store" {...register('Store_id',{required:true})}/>
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
      </Fragment>
    
  )
}
