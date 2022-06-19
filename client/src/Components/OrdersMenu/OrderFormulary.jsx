import React from 'react'
import { Fragment,useState, useEffect } from 'react'
import { MapContainer } from 'react-leaflet/MapContainer'
import { TileLayer } from 'react-leaflet/TileLayer'
import { LocationMarker } from './Map'
import { useLocation } from 'react-router-dom';
import axios from 'axios';

 

export function OrderFormulary() {
    const [lat, setLat] = useState("Latitude");
    const [lng, setLng] = useState("Length");
    const {state} = useLocation();

    const getLatitude = (data) => {
        console.log(data)
        setLat(data);
    };
    const getLength = (data) => {
        setLng(data);
    };

    async function payWhiskyBag(){
        state.latitude = lat;
        state.length = lng;
        console.log(state.user);
        console.log(lat);
        console.log(state.length);
        const responseTypes = await axios.post('http://localhost:3001/whisky/payBag',state);
        console.log(responseTypes) //if the response is different to empty meaning whisky is cancelled
        alert("Whisky Cancelled")
    }
    
  return (
    <Fragment>
        <div className="col">
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
                <div className="col">
                    <label htmlFor="text" className="form-label">Length</label>
                    <input type="text" className="form-control" value = {lat} readOnly/>
                </div>
                <div className="col">
                    <label htmlFor="text" className="form-label">Latitude</label>
                    <input type="text" className="form-control" value = {lng} readOnly/>
                </div>
                <center>
                    <button type="button" className="btn btn-dark" 
                            onClick={(e) => (async () => {payWhiskyBag()}
                              )()} 
                            >Pay whisky
                    </button>
                </center>
            </div>
    </Fragment>  
    )
}