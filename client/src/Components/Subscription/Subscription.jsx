import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { SubscriptionTier } from './SubscriptionTier'

export  function SubscriptionPage() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-light mx-auto'>
                        <h1 className='text-center'>Subscription</h1>
                        <br/>
                        <div className="row row-cols-1 row-cols-md-3 g-3">
  
                            <SubscriptionTier props={{title:"Tier Short Glass",buttonTitle:"Subscription",action:'1'}} />
                            
                            <SubscriptionTier props={{title:"Tier Gleincairn",buttonTitle:"Subscription",action:"2"}} />
                            
                            <SubscriptionTier props={{title:"Tier Master Destiller",buttonTitle:"Subscription",action:"3"}} />
                            
                        </div>
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
