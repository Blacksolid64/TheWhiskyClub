import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function AdmiMenu() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Menu</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Manage whiskys",buttonTitle:"See",redirectLink:"/WhiskysManage"}} />
                            
                            <PrincipalCard props={{title:"Manage store",buttonTitle:"See",redirectLink:"/"}} />
                            
                            <PrincipalCard props={{title:"Reports",buttonTitle:"See",redirectLink:"/"}} />
                            
                            <PrincipalCard props={{title:"User issues",buttonTitle:"See",redirectLink:"/"}} />
  
                            <PrincipalCard props={{title:"Manage type whisky",buttonTitle:"See",redirectLink:"/TypeMenu"}} />

                            <PrincipalCard props={{title:"Manage presentation whisky",buttonTitle:"See",redirectLink:"/PresentationMenu"}} />
                            
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
