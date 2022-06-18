import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { DistilleryManageForm } from './DistilleryManageForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function DistilleryManage() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Distellery Manage</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Distillery Whisky",buttonTitle:"See",redirectLink:"/CreateDistillery"}} />
                            
                            <DistilleryManageForm props={{title:"Consult Distillery whisky",buttonTitle:"See",action:"consult"}} />
                            
                            <DistilleryManageForm props={{title:"Delete Distillery Whisky",buttonTitle:"Delete",action:"delete"}} />
                            
                            <DistilleryManageForm props={{title:"Update Distillery Whisky",buttonTitle:"Update",action:"modify"}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
