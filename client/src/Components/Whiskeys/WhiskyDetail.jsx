import React,{Fragment,useState, useEffect } from 'react'
import { useLocation } from 'react-router-dom';
import axios from 'axios';
import { Link } from 'react-router-dom';
import {useForm} from 'react-hook-form';

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
    const onSubmit = async(data) =>{
        try{
            if(data.type === "null"){
                data.type = null;
            }
            if(data.distance === "null"){
                data.distance = null;
            }
            if(data.price === "null"){
                data.price = null;
            }
            if(data.popularity === "null"){
                data.popularity = null;
            }
            const response = await axios.post('http://localhost:3001/whisky/getFilteredWhisky', data);
            console.log(response.data)
            setwhiskys(response.data);
        } catch(err){
            alert('Error searching for whisky');
        }       
    }
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
                                            <input type="text" className="form-control" placeholder="Whiskey Type" aria-label="Type Whisky" value = {item.Type} readOnly/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age</label>
                                            <textarea type="text" style={{resize:'none'}} className="form-control" placeholder="Whiskey Age" aria-label="Aged Whisky" value = {item.Age_in_years} readOnly/>
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
                                            <input type="text" className="form-control" placeholder="Price" aria-label="Price" value = {item.priceByUnit}readOnly/>
                                        </div>
                                        
                                    </div>

                                    <br></br>
                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">In inventory</label>
                                            <input type="text" className="form-control" placeholder="In inventory" aria-label="In inventory" value = {item.quantity} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Description</label>
                                            <input type="text" className="form-control" placeholder="Description" aria-label="Description" value = {item.description} readOnly/>
                                        </div>

                                    </div>

                                    <div>
                                        <div className="col">
                                        <form onSubmit={handleSubmit(onSubmit)}>
                                            <label htmlFor="text" className="form-label">Amount to add to cart</label>
                                            <input type="text" className="form-control" id="amountCar" placeholder="Amount to add to cart" aria-label="Cart"
                                            {...register('amountCar',{required:true})}/>
                                            <button type ='submit' className="btn btn-dark btn-lg">add to Car</button>
                                        </form>
                                        </div>
                                    </div>

                                    <br></br>

                                    <center>
<<<<<<< Updated upstream
                                        <Link to= '/ReadWhiskeys' className="btn btn-light">Return</Link>    
=======
                                        <Link to= '/ReadWhiskeys' className="btn btn-light">Regresar</Link>     
>>>>>>> Stashed changes
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