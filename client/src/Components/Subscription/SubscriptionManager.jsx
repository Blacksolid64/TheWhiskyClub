import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { SubscriptionManagerForm } from './SubscriptionManagerForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
import { useLocation,useNavigate } from 'react-router-dom';

export  function SubscriptionManager() {
    const {state} = useLocation();
    console.log(state)
    const userStoreIDLogged = state.store
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Subscription Manager</h1>
                        <h1 className='text-center'>{userStoreIDLogged}</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Subscription Whisky",buttonTitle:"See",redirectLink:"/SubscriptionCreate",store:userStoreIDLogged}} />
                            
                            <SubscriptionManagerForm props={{title:"Consult Subscription whisky",buttonTitle:"See",action:"consult",store:userStoreIDLogged}} />
                            
                            <SubscriptionManagerForm props={{title:"Delete Subscription Whisky",buttonTitle:"Delete",action:"delete",store:userStoreIDLogged}} />
                            
                            <SubscriptionManagerForm props={{title:"Update Subscription Whisky",buttonTitle:"Update",action:"modify",store:userStoreIDLogged}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }