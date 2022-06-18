import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { ManageMoneyForm } from './ManageMoneyForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function ManageMoney() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Type Manage</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Money",buttonTitle:"See",redirectLink:"/MoneyCreate"}} />
                            
                            <ManageMoneyForm props={{title:"Consult Money",buttonTitle:"See",action:"consult"}} />
                            
                            <ManageMoneyForm props={{title:"Delete Money",buttonTitle:"Delete",action:"delete"}} />
                            
                            <ManageMoneyForm props={{title:"Update Money",buttonTitle:"Update",action:"modify"}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
