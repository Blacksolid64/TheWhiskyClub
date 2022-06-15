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
  
                            <SubscriptionTier props={{title:"Tier Short Glass",body:"Any new product entered will be notified by mail. \n5% discount on purchases",buttonTitle:"Subscription",action:'1'}} />
                            
                            <SubscriptionTier props={{title:"Tier Gleincairn",body: "Access to exclusive Whiskies catalog.10% discount on purchases and 20% discount on shipping costs. Any new product introduced will be notified by mail.",buttonTitle:"Subscription",action:"2"}} />
                            
                            <SubscriptionTier props={{title:"Tier Master Destiller",body:"Free shipping, 30% discount on purchases. For the purchase of 10 whiskies you get a free whisky of any of the whiskies you want from the store. Access to a catalog of special whiskies. Any new product entered will be notified by mail." ,buttonTitle:"Subscription",action:"3"}} />
                            
                        </div>
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
    