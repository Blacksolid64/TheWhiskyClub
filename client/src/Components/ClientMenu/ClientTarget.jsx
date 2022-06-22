import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
import { useLocation } from 'react-router-dom';

export  function ClientMenu() {
    //receives parameters from another window
    const {state} = useLocation();
    const userLogged = state.user
    const userStoreIDLogged = state.store
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Menu</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Whiskys",buttonTitle:"See",redirectLink:"/ReadWhiskeys",userLogged:userLogged,store:userStoreIDLogged}} />
                            
                            <PrincipalCard props={{title:"Orders",buttonTitle:"See",redirectLink:"/OrderMenu",userLogged:userLogged,store:userStoreIDLogged}} />
                            
                            <PrincipalCard props={{title:"Reports",buttonTitle:"See",redirectLink:"/"}} />
                            
                            <PrincipalCard props={{title:"Query",buttonTitle:"See",redirectLink:"/"}} />

                            <a1>User logged: {userLogged}</a1>
                            <a1>Store logged: {userStoreIDLogged}</a1>
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
