import React,{Fragment} from 'react'
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom'

export function WhiskySee() {

    const {state} = useLocation();
    const whiskyInfo =state.whiskyInfo[0];
    console.log('Aqui recibo')
    console.log(whiskyInfo)

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
                                    <h1 className="card-title text-center  text-dark">{whiskyInfo.name}</h1>
                                    <br></br>
                                    
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Description</label>
                                            <textarea type="text" className="form-control" placeholder="Description" aria-label="Description" value = {whiskyInfo.description} readOnly/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age in years</label>
                                            <input type="text" className="form-control" placeholder="Age_in_years" aria-label="Age_in_years" value = {whiskyInfo.Age_in_years} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Distillery</label>
                                            <input type="text" className="form-control" placeholder="Distillery" aria-label="Distillery" value = {whiskyInfo.Distillery} readOnly/>
                                        </div>

                                    </div>
                                    <br></br>

                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Image</label>
                                            <input type="text" className="form-control" placeholder="Image" aria-label="Image" value = {whiskyInfo.Image} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Presentation</label>
                                            <input type="text" className="form-control" placeholder="Presentation" aria-label="Presentation" value = {whiskyInfo.Presentation}readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Type</label>
                                            <input type="text" className="form-control" placeholder="Type" aria-label="Type" value = {whiskyInfo.Type} readOnly/>
                                        </div>
                                        
                                    </div>

                                    <br></br>
                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Quantity</label>
                                            <input type="text" className="form-control" placeholder="quantity" aria-label="quantity" value = {whiskyInfo.quantity} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price by unit</label>
                                            <input type="text" className="form-control" placeholder="priceByUnit" aria-label="priceByUnit" value = {whiskyInfo.priceByUnit} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Store</label>
                                            <input type="text" className="form-control" placeholder="Store_id" aria-label="Store_id" value = {whiskyInfo.Store} readOnly/>
                                        </div>

                                    </div>

                                    <br></br>

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
