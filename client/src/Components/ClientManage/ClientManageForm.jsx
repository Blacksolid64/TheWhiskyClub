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
    //parameters for system use
    const {register,handleSubmit} = useForm();
    const [lat, setLat] = useState("Latitude");
    const [lng, setLng] = useState("Length");

    //get latitude the map
    const getLatitude = (data) => {
        console.log(data)
        setLat(data);
    };
    //get Length the map
    const getLength = (data) => {
        setLng(data);
    };

    const form = useRef();
    //sends parameters to and manages another system
    let navigate = useNavigate()
    const moveTo = () =>{
        let path = "/"
        navigate(path)
    }

    const onSubmit = async(data) =>{

        try{
            axios.post('http://localhost:3001/users/CreateUser',{data:data,lat:lat,lng:lng}).then((response) => {
            })
            moveTo()
            
        }catch(err){
            alert(err)
        }
    }

  return (
    <Fragment>
                    <div className="card bg-light w-100 mb-3  text-dark" >                    
                        <div className="row g-0">
                                <div className="card-body">
                                    <br></br>
                                    <form onSubmit={handleSubmit(onSubmit)} >
                                    <div className="row">
                                    <div className="col">
                                            <label htmlFor="text" className="form-label">Identification</label>
                                            <input type="text" className="form-control" placeholder="Identification" aria-label="Identification" {...register('id',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" placeholder="Name" aria-label="Name" {...register('Uname',{required:true})}/>
                                        </div>
                                    </div>
                                    <br></br>
                                    <div className="row">

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
                                                    <input type="text" className="form-control" value = {lat} readOnly/>
                                                </div>

                                                <div className="col">
                                                    <label htmlFor="text" className="form-label">Latitude</label>
                                                    <input type="text" className="form-control" value = {lng} readOnly/>
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
                                            <input type="text" className="form-control" placeholder="Password" aria-label="Password" {...register('UPassword',{required:true})}/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age</label>
                                            <input type="number" className="form-control" placeholder="Age" aria-label="Age" {...register('Age',{required:true})}/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Phone number</label>
                                            <input type="text" className="form-control" placeholder="Phone number" aria-label="Phone number" {...register('Phone_number',{required:true})}/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Store</label>
                                            <select className="form-select" defaultValue="US" aria-label="Store"{...register('Store_id',{required:true})}> 
                                                <option key={1000} value={1000} > USA </option>
                                                <option key={2000} value={2000} > Irland</option>
                                                <option key={3000} value={3000} > Scotland </option>
                                            </select>
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
