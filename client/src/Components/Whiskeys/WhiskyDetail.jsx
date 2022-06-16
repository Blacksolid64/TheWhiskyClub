import React,{Fragment,useState, useEffect } from 'react'
import { useLocation } from 'react-router-dom';
import axios from 'axios';
import { Link } from 'react-router-dom'

export function WhiskyDetail() {
    const {state} = useLocation();
    const Whiskyid = state.id
    console.log(Whiskyid);
    const [whisky, setwhisky] = useState([]);
    async function getWhisky(){
        const response  = await axios.post('http://localhost:3001/whisky/selectWhiskeyDetailed',state);
        if(whisky.length===0)
            setwhisky(response.data)
    }
    useEffect(() => {
        //Runs only on the first render
        getWhisky()
    }, []);
    
  return (
    <Fragment>
        <header className="App-header">
            <div style={{ backgroundImage: 'url(require("./images/genericBackground.png"))' }}>
            {whisky.map((item, i) => (
                <div className='container mx-auto'>
                    <div className="card bg-dark w-100 mb-3" >                    
                        <div className="row g-0">
                            <div className="col-md-4">
                            <img src={item.Image} className="img-fluid rounded-start" alt="..."/>
                            </div>
                            <div className="col-md-8">
                                <div className="card-body">
                                    <h1 className="card-title text-center"></h1>
                                    <br></br>
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Type</label>
                                            <input type="text" className="form-control" placeholder="Type Whisky" aria-label="Type Whisky" value = {item["Whiskey Type"]} readOnly/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Aged</label>
                                            <textarea type="text" style={{resize:'none'}} className="form-control" placeholder="Aged Whisky" aria-label="Aged Whisky" value = {item["Age in years"]} readOnly/>
                                        </div>

                                    </div>
                                    <br></br>

                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Distillery</label>
                                            <input type="text" className="form-control" placeholder="Distillery" aria-label="Distillery" value = {item.Distillery} readOnly/>
                                        </div>
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Presentation</label>
                                            <input type="text" className="form-control" placeholder="Presentation" aria-label="Presentation" value = {item.Presentation} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price</label>
                                            <input type="text" className="form-control" placeholder="Price" aria-label="Price" value = {item.Price}readOnly/>
                                        </div>
                                        
                                    </div>

                                    <br></br>
                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">In inventary</label>
                                            <input type="text" className="form-control" placeholder="In inventary" aria-label="In inventary" value = {item.Available} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Description</label>
                                            <input type="text" className="form-control" placeholder="Description" aria-label="Description" value = {item.Description} readOnly/>
                                        </div>

                                    </div>

                                    <div>
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Amount to add to cart</label>
                                            <input type="text" className="form-control" placeholder="Amount to add to cart" aria-label="Cart" value = {""}/>
                                        </div>
                                    </div>

                                    <br></br>

                                    <center>
                                        <Link to= '/ReadWhiskeys' className="btn btn-light">Regresar</Link>    
                                    </center>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                ))}
            </div>
        </header>
      </Fragment>
  )
}
//const {state} = useLocation();