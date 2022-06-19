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
                        <div className="row row-cols-4 row-cols-md-4 g-4">
  
                            <PrincipalCard props={{title:"Manage whiskys",buttonTitle:"See",redirectLink:"/WhiskysManage"}} />
                            
                            <PrincipalCard props={{title:"Manage employee",buttonTitle:"See",redirectLink:"/"}} />
  
                            <PrincipalCard props={{title:"Manage type of whisky",buttonTitle:"See",redirectLink:"/TypeMenu"}} />

                            <PrincipalCard props={{title:"Manage presentation of whisky",buttonTitle:"See",redirectLink:"/PresentationMenu"}} />

                            <PrincipalCard props={{title:"Manage distellery",buttonTitle:"See",redirectLink:"/DistilleryManage"}} />

                            <PrincipalCard props={{title:"Manage subscriptions",buttonTitle:"See",redirectLink:"/DistilleryManage"}} />

                            <PrincipalCard props={{title:"Manage Money",buttonTitle:"See",redirectLink:"/ManageMoney"}} />
                            
                            <PrincipalCard props={{title:"Reports",buttonTitle:"See",redirectLink:"/"}} />
                            
                            <PrincipalCard props={{title:"User issues",buttonTitle:"See",redirectLink:"/"}} />
                            
                            
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
