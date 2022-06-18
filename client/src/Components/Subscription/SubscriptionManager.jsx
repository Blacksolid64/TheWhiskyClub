import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { SubscriptionManagerForm } from './SubscriptionManagerForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function PresentationMenu() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Subscription Manage</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Subscription Whisky",buttonTitle:"See",redirectLink:"/CreatePresentation"}} />
                            
                            <SubscriptionManagerForm props={{title:"Consult Subscription whisky",buttonTitle:"See",action:"consult"}} />
                            
                            <SubscriptionManagerForm props={{title:"Delete Subscription Whisky",buttonTitle:"Delete",action:"delete"}} />
                            
                            <SubscriptionManagerForm props={{title:"Update Subscription Whisky",buttonTitle:"Update",action:"modify"}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }