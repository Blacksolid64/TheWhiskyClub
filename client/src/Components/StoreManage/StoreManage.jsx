import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { StoreManageForm } from './StoreManageForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function StoreManage() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Menu</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Store",buttonTitle:"See",redirectLink:"/"}} />
                            
                            <StoreManageForm props={{title:"Consult Store",buttonTitle:"See",action:"Consultar"}} />
                            
                            <StoreManageForm props={{title:"Delete Store",buttonTitle:"Delete",action:"Eliminar"}} />
                            
                            <StoreManageForm props={{title:"Update Store",buttonTitle:"Update",action:"Actualizar"}} />
  
                        </div>
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
