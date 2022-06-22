import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { EmployeeManageForm } from './EmployeeManageForm'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
import { useLocation,useNavigate } from 'react-router-dom';

export  function EmployeeManage() {
    const {state} = useLocation();
    console.log(state)
    const userStoreIDLogged = state.store
    return (
        <Fragment>
            <header className="App-header"> 
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Employee Manage</h1>
                        <br/>
                        <div className="row row-cols-2 row-cols-md-2 g-2">
  
                            <PrincipalCard props={{title:"Create Employee",buttonTitle:"See",redirectLink:"/EmployeeCreate",store:userStoreIDLogged}} />
                            
                            <EmployeeManageForm props={{title:"Consult Employee",buttonTitle:"See",action:"consult",store:userStoreIDLogged}} />
                            
                            <EmployeeManageForm props={{title:"Delete Employee",buttonTitle:"Delete",action:"delete",store:userStoreIDLogged}} />
                            
                            <EmployeeManageForm props={{title:"Update Employee",buttonTitle:"Update",action:"modify",store:userStoreIDLogged}} />
  
                        </div>
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
