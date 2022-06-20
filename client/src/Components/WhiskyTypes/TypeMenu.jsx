import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { TypeMenuForm } from './TypeMenuForm'
import { useLocation,useNavigate } from 'react-router-dom';
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'

export  function TypeMenu() {
    const {state} = useLocation();
    console.log(state)
    const userStoreIDLogged = state.store
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Type Manage</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Type Whisky",buttonTitle:"See",redirectLink:"/CreateWhiskytype",store:userStoreIDLogged}} />
                            
                            <TypeMenuForm props={{title:"Consult Type whisky",buttonTitle:"See",action:"consult",store:userStoreIDLogged}} />
                            
                            <TypeMenuForm props={{title:"Delete Type Whisky",buttonTitle:"Delete",action:"delete",store:userStoreIDLogged}} />
                            
                            <TypeMenuForm props={{title:"Update Type Whisky",buttonTitle:"Update",action:"modify",store:userStoreIDLogged}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
