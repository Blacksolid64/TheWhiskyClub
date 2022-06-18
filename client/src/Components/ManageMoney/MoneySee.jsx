import React,{Fragment} from 'react'
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom'

export function MoneySee() {

    const {state} = useLocation();
    const whiskyInfo =state.whiskyInfo[0];
    console.log('Aqui recibo')
    console.log(whiskyInfo)

  return (
    <Fragment>
        <header className="App-header">
            <div style={{ backgroundImage: 'url(require("./images/genericBackground.png"))' }}>
                <div className='container mx-auto'>
                    <div className="card bg-light w-100 mb-3  text-dark text-center" >                    
                        <div className="row g-0">
                            <div className="col-md-8">
                                <div className="card-body">
                                    <h1 className="card-title text-center  text-dark">Money</h1>
                                    <br></br>
                                    
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" placeholder="name" aria-label="name" value = {whiskyInfo.name} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Exchange rate</label>
                                            <input type="text" className="form-control" placeholder="exchange_rate" aria-label="exchange_rate" value = {whiskyInfo.exchange_rate} readOnly/>
                                        </div>
                                    </div>

                                    <br></br>

                                    <center>
                                        <Link to= '/ManageMoney' className="btn btn-dark">Regresar</Link>    
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