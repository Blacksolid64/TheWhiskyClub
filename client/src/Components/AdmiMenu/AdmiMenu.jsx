import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
import { useLocation,useNavigate } from 'react-router-dom';

export  function AdmiMenu() {
    //receives parameters from another window
    const {state} = useLocation();
    const userStoreIDLogged = state.store
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Menu</h1>
                        <h1 className='text-center'>{userStoreIDLogged}</h1>
                        <br/>
                        <div className="row row-cols-4 row-cols-md-4 g-4">
  
                            <PrincipalCard props={{title:"Manage whiskys",buttonTitle:"See",redirectLink:"/WhiskysManage",store:userStoreIDLogged}} />
                            
                            <PrincipalCard props={{title:"Manage employee",buttonTitle:"See",redirectLink:"/EmployeeManage",store:userStoreIDLogged}} />
  
                            <PrincipalCard props={{title:"Manage type of whisky",buttonTitle:"See",redirectLink:"/TypeMenu",store:userStoreIDLogged}} />

                            <PrincipalCard props={{title:"Manage presentation of whisky",buttonTitle:"See",redirectLink:"/PresentationMenu",store:userStoreIDLogged}} />

                            <PrincipalCard props={{title:"Manage distellery",buttonTitle:"See",redirectLink:"/DistilleryManage",store:userStoreIDLogged}} />

                            <PrincipalCard props={{title:"Manage subscriptions",buttonTitle:"See",redirectLink:"/SubscriptionManager",store:userStoreIDLogged}} />

                            <PrincipalCard props={{title:"Manage Money",buttonTitle:"See",redirectLink:"/ManageMoney",store:userStoreIDLogged}} />
                            
                            <PrincipalCard props={{title:"Reports",buttonTitle:"See",redirectLink:"/",store:userStoreIDLogged}} />
                            
                            <PrincipalCard props={{title:"User issues",buttonTitle:"See",redirectLink:"/",store:userStoreIDLogged}} />
                            
                            
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
