import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { PresentationMenuForm } from './PresentationMenuForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
import { useLocation } from 'react-router-dom';

export  function PresentationMenu() {
    //receives parameters from another window
    const {state} = useLocation();
    const userStoreIDLogged = state.store
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Presentation Manage</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Presentation Whisky",buttonTitle:"See",redirectLink:"/CreatePresentation",store:userStoreIDLogged}} />
                            
                            <PresentationMenuForm props={{title:"Consult Presentation whisky",buttonTitle:"See",action:"consult",store:userStoreIDLogged}} />
                            
                            <PresentationMenuForm props={{title:"Delete Presentation Whisky",buttonTitle:"Delete",action:"delete",store:userStoreIDLogged}} />
                            
                            <PresentationMenuForm props={{title:"Update Presentation Whisky",buttonTitle:"Update",action:"modify",store:userStoreIDLogged}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
