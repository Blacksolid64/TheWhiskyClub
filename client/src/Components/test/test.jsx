import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"

export function Test() {
  return(
        <Fragment>
        <header className="App-header">
                
            <div style={{ backgroundImage: 'url(require("./images/background.jpg"))' }}>
                <div className='container mx-auto'>
                        <div className='form-div'>
                            <h1 className ="display-1">Inicio de Sesión</h1>
                            <br/>
                        </div>
                </div>
            </div>
                       
        </header>
    </Fragment>
    
  )
}