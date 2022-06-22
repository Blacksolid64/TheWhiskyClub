import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { DistilleryManageForm } from './DistilleryManageForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
import { useLocation,useNavigate } from 'react-router-dom';

export  function DistilleryManage() {
    //receives parameters from another window
    const {state} = useLocation();
    const userStoreIDLogged = state.store
    
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Distellery Manage</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Distillery Whisky",buttonTitle:"See",redirectLink:"/CreateDistillery",store:userStoreIDLogged}} />
                            
                            <DistilleryManageForm props={{title:"Consult Distillery whisky",buttonTitle:"See",action:"consult",store:userStoreIDLogged}} />
                            
                            <DistilleryManageForm props={{title:"Delete Distillery Whisky",buttonTitle:"Delete",action:"delete",store:userStoreIDLogged}} />
                            
                            <DistilleryManageForm props={{title:"Update Distillery Whisky",buttonTitle:"Update",action:"modify",store:userStoreIDLogged}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
