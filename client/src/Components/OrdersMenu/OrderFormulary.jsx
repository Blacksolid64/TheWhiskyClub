import React from 'react'
import { Fragment,useState } from 'react'
import { MapContainer } from 'react-leaflet/MapContainer'
import { TileLayer } from 'react-leaflet/TileLayer'
import { LocationMarker } from './Map'

 

export function OrderFormulary() {
    const [lat, setLat] = useState("Latitude");
    const [lng, setLng] = useState("Length");

    const getLatitude = (data) => {
        console.log(data)
        setLat(data);
    };
    const getLength = (data) => {
        setLng(data);
    };

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
                    <input type='submit'  className='btn btn-dark btn-block'  value='Login'/>
                </center>
            </div>
    </Fragment>  
    )
}