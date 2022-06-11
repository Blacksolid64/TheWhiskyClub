import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function ClientMenu() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Menu</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Whiskys",buttonTitle:"See",redirectLink:"/"}} />
                            
                            <PrincipalCard props={{title:"Orders",buttonTitle:"See",redirectLink:"/OrderMenu"}} />
                            
                            <PrincipalCard props={{title:"Reports",buttonTitle:"See",redirectLink:"/"}} />
                            
                            <PrincipalCard props={{title:"Query",buttonTitle:"See",redirectLink:"/"}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
