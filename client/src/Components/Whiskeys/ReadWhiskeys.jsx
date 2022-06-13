import React, { Fragment, useState, useEffect }from 'react'
import { Table,Button,Dropdown,DropdownMenu,DropdownToggle,DropdownItem,Input} from 'reactstrap';
import axios from 'axios';
import "bootstrap/dist/css/bootstrap.min.css";

export  function ReadWhiskeys() {
    const [whiskys, setwhiskys] = useState([]);
    const [dropdownOpen1,setDropdownOpen1] = useState(false);
    const [dropdownOpen2,setDropdownOpen2] = useState(false);
    const [dropdownOpen3,setDropdownOpen3] = useState(false);
    const [dropdownOpen4,setDropdownOpen4] = useState(false);
    const toggle1 = () => setDropdownOpen1(prevState => !prevState);
    const toggle2 = () => setDropdownOpen2(prevState => !prevState);
    const toggle3 = () => setDropdownOpen3(prevState => !prevState);
    const toggle4 = () => setDropdownOpen4(prevState => !prevState);

    const [name, setName] = useState('');
    async function getWhiskys(){
    	const response  = await axios.get('http://localhost:3001/whisky/whiskysSelectAll');
    	if(whiskys.length===0)
    		setwhiskys(response.data)
    }
    useEffect(() => {
    	//Runs only on the first render
	    getWhiskys()
	}, []);

	const handleSubmit = (e) => {
    
        e.preventDefault();

        console.log(`Form submitted, ${name}`);    

    }


    return (
    	<Fragment>
            <header className="App-header2" style={{textAlign: 'right'}}>
                <div style={{ backgroundImage: 'url(require("./images/background.png"))' }}>
                <div className="d-flex justify-content-center p-5">
                <Dropdown isOpen={dropdownOpen1} toggle={toggle1}>
				    <DropdownToggle caret style={{backgroundColor: '#262626'}}>
				      Any Whiskey type
				    </DropdownToggle>
				    <DropdownMenu>
				      <DropdownItem>
				        Whiskey type3
				      </DropdownItem>
				      <DropdownItem>
				        Whiskey type2
				      </DropdownItem>
				      <DropdownItem>
				      	Any Whiskey type
				      </DropdownItem>
				    </DropdownMenu>
				  </Dropdown>
				  <Dropdown isOpen={dropdownOpen2} toggle={toggle2}>
				    <DropdownToggle caret style={{backgroundColor: '#262626'}}>
				      Any Price
				    </DropdownToggle>
				    <DropdownMenu>
				      <DropdownItem>
				        Min Price
				      </DropdownItem>
				      <DropdownItem>
				        Max Price
				      </DropdownItem>
				      <DropdownItem>
				      	Any Price
				      </DropdownItem>
				    </DropdownMenu>
				  </Dropdown>
				  <Dropdown isOpen={dropdownOpen3} toggle={toggle3}>
				    <DropdownToggle caret style={{backgroundColor: '#262626'}}>
				      Any Popular
				    </DropdownToggle>
				    <DropdownMenu>
				      <DropdownItem>
				        Min Popular
				      </DropdownItem>
				      <DropdownItem>
				        Max Popular
				      </DropdownItem>
				      <DropdownItem>
				      	Any Popular
				      </DropdownItem>
				    </DropdownMenu>
				  </Dropdown>
				  <Dropdown isOpen={dropdownOpen4} toggle={toggle4}>
				    <DropdownToggle caret style={{backgroundColor: '#262626'}}>
				      Any Distance
				    </DropdownToggle>
				    <DropdownMenu>
				      <DropdownItem>
				        Min Distance
				      </DropdownItem>
				      <DropdownItem>
				        Max Distance
				      </DropdownItem>
				      <DropdownItem>
				      	Any Distance
				      </DropdownItem>
				    </DropdownMenu>
				  </Dropdown>
                <form onSubmit = {handleSubmit}>
		            <input onChange = {(e) => setName(e.target.value)} value = {name}></input>
		            <button type = 'submit' className="btn btn-dark btn-lg">Buscar</button>
		        </form>
				</div>
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




