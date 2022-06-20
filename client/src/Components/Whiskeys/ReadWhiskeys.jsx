import React, { Fragment, useState, useEffect }from 'react'
import { Table,Button,Dropdown,DropdownMenu,DropdownToggle,DropdownItem,Input,Select,label} from 'reactstrap';
import axios from 'axios';
import "bootstrap/dist/css/bootstrap.min.css";
import {useLocation,useNavigate} from "react-router-dom"
import {useForm} from 'react-hook-form';

export  function ReadWhiskeys() {
	let navigate = useNavigate()
	const {register,handleSubmit} = useForm();
    const [whiskys,setwhiskys] = useState([]);
	const [whiskyTypes,setwhiskyTypes] = useState([]);
	const {state} = useLocation(); 
    

    async function getWhiskys(){
    	const response  = await axios.get('http://localhost:3001/whisky/getWhisky',{params: {store:state.store}});
    	if(whiskys.length===0)
    		setwhiskys(response.data)
    }
	async function getWhiskyType(){
		const responseTypes = await axios.get('http://localhost:3001/whisky/getWhiskyTypes',{params: {store:state.store}});
		if (whiskyTypes.length===0)
			setwhiskyTypes(responseTypes.data)
	}
    useEffect(() => {
    	//Runs only on the first render
	    getWhiskys()
		getWhiskyType()
	}, []);

    const onSubmit = async(data) =>{
        try{
        	if(data.type === "null"){
        		data.type = null;
        	}
        	if(data.distance === "null"){
        		data.distance = null;
        	}
        	if(data.price === "null"){
        		data.price = null;
        	}
        	if(data.popularity === "null"){
        		data.popularity = null;
        	}
			data["store"] = state.store;
        	const response = await axios.post('http://localhost:3001/whisky/getFilteredWhisky', data);
			console.log(response.data)
			setwhiskys(response.data);
        } catch(err){
            alert('Error searching for whisky');
        }       
    }
    return (
    	<Fragment>
            <header className="App-header2" style={{textAlign: 'right'}}>
                <div style={{ textAlign:'center', backgroundImage: 'url(require("./images/background.png"))' }}>
                <div className="d-flex justify-content-center p-5">
                <form onSubmit={handleSubmit(onSubmit)}>
                	<select {...register("type",{required:false})}>
			          <option value="null" id="d0">Any</option>
					  {/* Mapping through each Whiskey type object in our Whiskey type array
          				and returning an option element with the appropriate attributes / values.
         			*/}
     				 {whiskyTypes.map((WhiskeyType) => <option value={WhiskeyType.name}>{WhiskeyType.name}</option>)}
			        </select>
			        <select {...register("price",{required:false})}>
			          <option value="null" id="d0">Any price</option>
			          <option value="false" id="d1">Min price</option>
			          <option value="true" id="d2">Max price</option>
			        </select>
			        <select {...register("popularity",{required:false})}>
			          <option value="null" id="d0">Any Popularity</option>
			          <option value="false" id="d1">Min Popularity</option>
			          <option value="true" id="d2">Max Popularity</option>
			        </select>
			        <select {...register("distance",{required:false})}>
			          <option value="null" id="d0">Any distance</option>
			          <option value="false" id="d1">Min distance</option>
			          <option value="true" id="d2">Max distance</option>
			        </select>
                    <input type="text" className="form-control" id="name" placeholder="Whisky name"
                    {...register('name',{required:false})}
                    />
		            <button type ='submit' className="btn btn-dark btn-lg">Search</button>
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
	                        <td>{item.name}</td>
	                        <td>{item.Type}</td>
	                        <td>{item.priceByUnit}</td>
	                        <td>{item.quantity}</td>
	                        <td><button type="button" className="btn btn-dark" 
	                        onClick={(e) => (async () => {
							    navigate("/WhiskyDetail", { state: {id: item.Whiskey_id, userId: state.user, store: state.store}})
							  })()} 
	                    	>Details</button></td>
	                    </tr>
	                ))}
				  </tbody>
				</Table>
                </div>   
            </header>
        </Fragment>
      )
    }




