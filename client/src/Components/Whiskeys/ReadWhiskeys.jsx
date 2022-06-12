import React, { Fragment } from 'react'
import { Table } from 'reactstrap';


export  function ReadWhiskeys() {
    return (
        <Fragment>
            <header className="App-header">
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                <Table style={{backgroundColor: '#FFF';}}>
				  <thead >
				    <tr>
				      <th>
				        #
				      </th>
				      <th>
				        First Name
				      </th>
				      <th>
				        Last Name
				      </th>
				      <th>
				        Username
				      </th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">
				        1
				      </th>
				      <td>
				        Mark
				      </td>
				      <td>
				        Otto
				      </td>
				      <td>
				        @mdo
				      </td>
				      <td>
				        BOTON
				      </td>
				    </tr>
				  </tbody>
				</Table>
                    
                </div>
                           
            </header>
        </Fragment>
      )
    }

