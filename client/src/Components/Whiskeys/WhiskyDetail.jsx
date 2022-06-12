import React,{Fragment} from 'react'
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom'

export function WhiskyDetail() {

    const {state} = useLocation();
    const whisky = state.whisky

  return (
    <Fragment>
        <header className="App-header">
            <div style={{ backgroundImage: 'url(require("./images/genericBackground.png"))' }}>
                <div className='container mx-auto'>
                    <div className="card bg-light w-100 mb-3" >                    
                        <div className="row g-0">
                            <div className="col-md-4">
                            <img src={whisky.image} className="img-fluid rounded-start" alt="..."/>
                            </div>
                            <div className="col-md-8">
                                <div className="card-body">
                                    <h1 className="card-title text-center">{whisky.name}</h1>
                                    <br></br>
                                    
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Type</label>
                                            <input type="text" className="form-control" placeholder="Typewhisky" aria-label="Typewhisky" value = {whisky.type} readOnly/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Aged</label>
                                            <textarea type="text" style={{resize:'none'}} className="form-control" placeholder="Agedwhisky" aria-label="Agedwhisky" value = {whisky.location} readOnly/>
                                        </div>

                                    </div>
                                    <br></br>

                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Distillery</label>
                                            <input type="text" className="form-control" placeholder="distillery" aria-label="Distillery" value = {whisky.supplier} readOnly/>
                                        </div>
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Presentation</label>
                                            <input type="text" className="form-control" placeholder="Presentation" aria-label="Presentation" value = {whisky.presentation} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price</label>
                                            <input type="text" className="form-control" placeholder="Price" aria-label="Price" value = {whisky.price}readOnly/>
                                        </div>
                                        
                                    </div>

                                    <br></br>
                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">In inventary</label>
                                            <input type="text" className="form-control" placeholder="In inventary" aria-label="In inventary" value = {whisky.count} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Store</label>
                                            <input type="text" className="form-control" placeholder="Store" aria-label="Store" value = {whisky.store} readOnly/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <center>
                                        <Link to= '/ManageParking' className="btn btn-danger">Regresar</Link>    
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