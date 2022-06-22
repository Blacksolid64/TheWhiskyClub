import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { WhiskysManageForm } from './WhiskysManageForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
import { useLocation,useNavigate } from 'react-router-dom';

export  function WhiskysManage() {
    //receives parameters from another window
    const {state} = useLocation();
    const userStoreIDLogged = state.store
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Whisky Manage</h1>
                        <h1 className='text-center'>{userStoreIDLogged}</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Whisky",buttonTitle:"See",redirectLink:"/CreateWhisky",store:userStoreIDLogged}} />
                            
                            <WhiskysManageForm props={{title:"Consult whisky",buttonTitle:"See",action:"consult",store:userStoreIDLogged}} />
                            
                            <WhiskysManageForm props={{title:"Delete Whisky",buttonTitle:"Delete",action:"delete",store:userStoreIDLogged}} />
                            
                            <WhiskysManageForm props={{title:"Update Whisky",buttonTitle:"Update",action:"modify",store:userStoreIDLogged}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
