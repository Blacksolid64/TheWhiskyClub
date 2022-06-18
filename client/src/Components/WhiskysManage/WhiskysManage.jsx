import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { WhiskysManageForm } from './WhiskysManageForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function WhiskysManage() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Whisky Manage</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Whisky",buttonTitle:"See",redirectLink:"/CreateWhisky"}} />
                            
                            <WhiskysManageForm props={{title:"Consult whisky",buttonTitle:"See",action:"consult"}} />
                            
                            <WhiskysManageForm props={{title:"Delete Whisky",buttonTitle:"Delete",action:"delete"}} />
                            
                            <WhiskysManageForm props={{title:"Update Whisky",buttonTitle:"Update",action:"modify"}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
