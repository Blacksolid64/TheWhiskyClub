import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function ReportsManage() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Reports</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Products Consultation",buttonTitle:"See",redirectLink:"/"}} />
                            
                            <PrincipalCard props={{title:"Employee Consultation",buttonTitle:"See",action:"Consultar"}} />
                            
                            <PrincipalCard props={{title:"Client Consultation",buttonTitle:"Delete",action:"Eliminar"}} />
                            
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
