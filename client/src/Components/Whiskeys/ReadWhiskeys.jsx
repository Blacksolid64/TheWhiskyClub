import React, { Fragment } from 'react'
import { Table,Button } from 'reactstrap';
import "bootstrap/dist/css/bootstrap.min.css";


export  function ReadWhiskeys() {
    return (
        <Fragment>
            <header className="App-header2" style={{textAlign: 'right'}}>
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                <Table style={{backgroundColor: '#FFF'}}>
				  <thead >
				    <tr>
				      <th>
				        #
				      </th>
				      <th>
				        Whisky Name
				      </th>
				      <th>
				        Whisky Type
				      </th>
				      <th>
				        Whisky Price
				      </th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">
				        1
				      </th>
				      <td>
				        Straight Bourbon
				      </td>
				      <td>
				       Straight Bourbon
				      </td>
				      <td>
				       100000
				      </td>
				      <td>
				      	<button type="button" class="btn btn-dark">View</button>
				      </td>
				    </tr>
				  </tbody>
				</Table>
                </div>   
            </header>
        </Fragment>
      )
    }

