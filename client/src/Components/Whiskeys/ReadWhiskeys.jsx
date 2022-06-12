import React, { Fragment, useState, useEffect }from 'react'
import { Table,Button } from 'reactstrap';
import axios from 'axios';
import "bootstrap/dist/css/bootstrap.min.css";

export  function ReadWhiskeys() {
    const [whiskys, setwhiskys] = useState([]);
    async function getWhiskys(){
    	const response  = await axios.get('http://localhost:3001/whisky/whiskysSelectAll');
    	if(whiskys.length===0)
    		setwhiskys(response.data)
    }
    useEffect(() => {
    	//Runs only on the first render
	    getWhiskys()
	}, []);
    return (
    	<Fragment>
            <header className="App-header2" style={{textAlign: 'right'}}>
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                <Table striped bordered style={{backgroundColor: '#FFF'}}>
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
				      <th>
				        Whisky Quantity
				      </th>
				    </tr>
				  </thead>
				  <tbody>
	                {whiskys.map((item, i) => (
	                    <tr key={i}>
	                    	<td>{i}</td>
	                        <td>{item.Name}</td>
	                        <td>{item["Whiskey Type"]}</td>
	                        <td>{item.Price}</td>
	                        <td>{item.Quantity}</td>
	                        <td><button type="button" className="btn btn-dark">see more</button></td>
	                    </tr>
	                ))}
				  </tbody>
				</Table>
                </div>   
            </header>
        </Fragment>
      )
    }




