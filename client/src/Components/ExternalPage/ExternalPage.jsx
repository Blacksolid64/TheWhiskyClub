import React, { Fragment } from 'react'
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
  
export function ExternalPage() {
  return (
      <Fragment>
          <header className="App-header">
                  
              <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                  <div className='container mx-auto'>
                      <h1 className='text-center'>The Whiskey Club</h1>
                      <br/>
                      <div className="row row-cols-1 row-cols-md-2 g-2">

                          <PrincipalCard props={{title:"Whiskys",buttonTitle:"See",redirectLink:"/ReadWhiskeys",store:1}} />
                          
                          <PrincipalCard props={{title:"Sign In",buttonTitle:"Sign In",redirectLink:"/LoginPage"}} />

                          <PrincipalCard props={{title:"Sign Up",buttonTitle:"Sign Up",redirectLink:"/ClientManage"}} />

                      </div>
                  </div>
              </div>
                         
          </header>
      </Fragment>
    )
  }