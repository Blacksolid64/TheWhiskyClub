import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { TypeMenuForm } from './TypeMenuForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function TypeMenu() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Menu</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Type Whisky",buttonTitle:"See",redirectLink:"/CreateWhiskytype"}} />
                            
                            <TypeMenuForm props={{title:"Consult Type whisky",buttonTitle:"See",action:"consult"}} />
                            
                            <TypeMenuForm props={{title:"Delete Type Whisky",buttonTitle:"Delete",action:"delete"}} />
                            
                            <TypeMenuForm props={{title:"Update Type Whisky",buttonTitle:"Update",action:"modify"}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
