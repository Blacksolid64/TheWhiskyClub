import { MapContainer } from 'react-leaflet/MapContainer'
import { TileLayer } from 'react-leaflet/TileLayer'
import { useMap } from 'react-leaflet/hooks'
import {Marker,Popup,useMapEvents} from 'react-leaflet'
import React, { useState } from 'react';


export function LocationMarker({getLatitude,getLength}) {
    const [position, setPosition] = useState(null)
    const [lat, setLat] = useState(null)
    const [lng, setLng] = useState(null)
    const map = useMapEvents({
      click(e) {
        setPosition(e.latlng)
  
        setLat(e.latlng.lat)
        setLng(e.latlng.lng)

        getLatitude(e.latlng.lat)
        getLength(e.latlng.lng)

      }
      
    })
  
    return position === null ? null : (
      <Marker position={position}>
        <Popup>{lat+"//"+lng}</Popup>
      </Marker>
    )
  }
