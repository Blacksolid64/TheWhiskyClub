import React,{Fragment} from 'react'
//import image from '../../images/tecSanJose.jpg'
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom'

export function WhiskySee() {

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
                                    <h1 className="card-title text-center  text-dark">{whiskyInfo.name}</h1>
                                    <br></br>
                                    
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Description</label>
                                            <input type="text" className="form-control" placeholder="Description" aria-label="Description" value = {whiskyInfo.description} readOnly/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age in years</label>
                                            <input type="text" className="form-control" placeholder="Age_in_years" aria-label="Age_in_years" value = {whiskyInfo.Age_in_years} readOnly/>
                                        </div>

                                    </div>
                                    <br></br>

                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Distillery</label>
                                            <input type="text" className="form-control" placeholder="Distillery" aria-label="Distillery" value = {whiskyInfo.Distillery} readOnly/>
                                        </div>
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Image</label>
                                            <input type="text" className="form-control" placeholder="Image" aria-label="Image" value = {whiskyInfo.Image} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Presentation</label>
                                            <input type="text" className="form-control" placeholder="Presentation" aria-label="Presentation" value = {whiskyInfo.Presentation}readOnly/>
                                        </div>
                                        
                                    </div>

                                    <br></br>
                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Type</label>
                                            <input type="text" className="form-control" placeholder="Type" aria-label="Type" value = {whiskyInfo.Type} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Quantity</label>
                                            <input type="text" className="form-control" placeholder="quantity" aria-label="quantity" value = {whiskyInfo.quantity} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price by unit</label>
                                            <input type="text" className="form-control" placeholder="priceByUnit" aria-label="priceByUnit" value = {whiskyInfo.priceByUnit} readOnly/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Store</label>
                                            <input type="text" className="form-control" placeholder="Store_id" aria-label="Store_id" value = {whiskyInfo.Store} readOnly/>
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
