import React, { Fragment } from 'react'
import "bootstrap/dist/css/bootstrap.min.css"
import { ClientManageForm } from './ClientManageForm'
import { useLocation,useNavigate } from 'react-router-dom';

export  function ClientManage() {
    return (
        <Fragment>
            <header className="App-header">
                    
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                    <div className='container mx-auto'>
                        <h1 className='text-center'>Register</h1>
                        <br/>
  
                            <ClientManageForm />
                        
                    </div>
                </div>
                           
            </header>
        </Fragment>
      )
    }
