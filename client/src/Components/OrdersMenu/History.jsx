import React, { Fragment, useState, useEffect }from 'react'
import { Table,Button,Input,Select,Modal,ModalHeader,ModalBody,ModalFooter,Form,FormGroup,Label,Col} from 'reactstrap';
import axios from 'axios';
import "bootstrap/dist/css/bootstrap.min.css";
import {useLocation,useNavigate} from "react-router-dom"
import {useForm} from 'react-hook-form';

export  function History() {
	

	const [modal, setModal] = useState(false);
	const [modal2, setModal2] = useState(false);
	const [userSales,setUserSales] = useState([]);
	const [description, setDescription] = useState("");
	const [idSaleFK, setIdSaleFK] = useState(0);
	const {state} = useLocation();
  
    // Toggle for Modal
    const toggle = () => setModal(!modal);
    const toggle2 = () => setModal2(!modal2);

    async function getUserSales(){
    	console.log(state)
        const response  = await axios.post('http://localhost:3001/claim/getUserSales',state);
        setUserSales(response.data)
    }

    async function sendClaim(){
    	state.description = description
    	state.idSaleFK = idSaleFK
    	console.log(state)
        const response  = await axios.post('http://localhost:3001/claim/insertClaim',state);
        alert("You have submitted the claim")
    }

    useEffect(() => {
        //Runs only on the first render
        getUserSales()
    }, []);

	return (
    	<Fragment>
            <header className="App-header2" style={{textAlign: 'right'}}>
                <div style={{ textAlign:'center', backgroundImage: 'url(require("./images/background.png"))' }}>
                <h2>Shopping history</h2>
                	<Modal isOpen={modal}
		            	size="lg"
		                toggle={toggle}
		                modalTransition={{ timeout: 300 }}>
		                <ModalHeader toggle={toggle}>
					      <h4>Employee Evaluation</h4>
					    </ModalHeader>
		                <ModalBody>
				            <Form>
				            <FormGroup>
				              <Label>Empleado</Label>
					          <Input type="text" value="Juan Perez Soto Morena"/>
					        </FormGroup>
					        <FormGroup>
								<Label>
									Rate the employee
								</Label>
								<Input
									id="exampleSelect"
									name="select"
									type="select"
								>
								<option>
									1
								</option>
								<option>
									2
								</option>
								<option>
									3
								</option>
								<option>
									4
								</option>
								<option>
									5
								</option>
								</Input>
							</FormGroup>
							<FormGroup>
					          <Label>Comentario</Label>
					          <Input type="textarea"/>
					        </FormGroup>
					        <Button>Submit</Button>
					        </Form>
		                </ModalBody>
		            </Modal>
		            <Modal isOpen={modal2}
		            	size="lg"
		                toggle={toggle2}
		                modalTransition={{ timeout: 300 }}>
		                <ModalHeader toggle={toggle2}>
					      <h4>Reclaim Chat</h4>
					    </ModalHeader>
		                <ModalBody>
				            <Form>
				            <FormGroup>
				              <Label >Juan perez</Label>
					          <Input type="text" value="The delivery is a bad person!!!"/>
					          <Col sm={2}>
					          <Input type="date" value="2018-07-22" disabled/>
					       	  </Col>
					        </FormGroup>
							<FormGroup style={{textAlign: 'right' }} >
					          <Label>Manager Enrique</Label>
					          <Input style={{textAlign: 'right' }} type="text" value="I solved the problem"/>
					          <Col sm={2}  style={{float: 'right'}}>
					          <Input type="date" value="2018-07-22" disabled/>
					       	  </Col>
					        </FormGroup>
					        <FormGroup check>
				              <Label check>
				                <Input type="checkbox" id="checkbox2" />{' '}
				                problem resolved?
				              </Label>
				            </FormGroup>
				            <FormGroup row>
					          <Col sm={7}>
					            <Input type="text" placeholder="Message..." bsSize="lg" onChange={(e) => setDescription(e.target.value)}/>
					          </Col>
					          <Col><Button size="lg" onClick={sendClaim}>Send Message</Button></Col>
					        </FormGroup>
					        </Form>
		                </ModalBody>
		            </Modal>
                <Table striped bordered style={{backgroundColor: '#FFF'}}>
				  <thead >
				    <tr>
				      <th>
				        idSale
				      </th>
				      <th>
				       Total
				      </th>
				      <th>
				        Date
				      </th>
				      <th>
				       	DeliveryCost
				      </th>
				      <th>
				        Employee_SM_Id
				      </th>
				      <th>
				        Employee_Delivery_Id
				      </th>
				      <th>
				        Store
				      </th>
				    </tr>
				  </thead>
				  <tbody>
				  {userSales.map((item, i) => (
                    <tr>
                    {console.log(item.id)}
                        <td>{item.id}</td>
                        <td>{item.total}</td>
                        <td>{item.date.slice(0,10)}</td>
                        <td>{item.deliveryCost}</td>
                        <td>{item.E_SM_Id}</td>
                        <td>{item.E_Delivery_Id}</td>
                        <td>{item.store}</td>
                        <td><button 
                        type="button" className="btn btn-dark" 
                        onClick={toggle2} 
                    	>Reclaim
                    	</button></td>
				        <td><button 
                        type="button" className="btn btn-dark" 
                      	onClick={toggle}
                    	>Employee evaluate
                    	</button></td>
                    </tr>
                    ))}
				  </tbody>
				</Table>
                </div>   
            </header>
        </Fragment>
      )
}