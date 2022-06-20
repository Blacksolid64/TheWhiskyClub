import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { ManageMoneyForm } from './ManageMoneyForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
import { useLocation,useNavigate } from 'react-router-dom';

export  function ManageMoney() {
    const {state} = useLocation();
    console.log(state)
    const userStoreIDLogged = state.store
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Type Manage</h1>
                        <h1 className='text-center'>{userStoreIDLogged}</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Money",buttonTitle:"See",redirectLink:"/MoneyCreate",store:userStoreIDLogged}} />
                            
                            <ManageMoneyForm props={{title:"Consult Money",buttonTitle:"See",action:"consult",store:userStoreIDLogged}} />
                            
                            <ManageMoneyForm props={{title:"Delete Money",buttonTitle:"Delete",action:"delete",store:userStoreIDLogged}} />
                            
                            <ManageMoneyForm props={{title:"Update Money",buttonTitle:"Update",action:"modify",store:userStoreIDLogged}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
