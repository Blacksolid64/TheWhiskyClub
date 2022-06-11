import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function OrderMenu() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Menu</h1>
                        <br/>
                        <div className="row row-cols-1 row-cols-md-3 g-3">
  
                            <PrincipalCard props={{title:"Order whiskys",buttonTitle:"See",redirectLink:"/"}} />
                            
                            <PrincipalCard props={{title:"Club subcription",buttonTitle:"See",redirectLink:"/SubscriptionPage"}} />
                            
                            <PrincipalCard props={{title:"History",buttonTitle:"See",redirectLink:"/"}} />

                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
