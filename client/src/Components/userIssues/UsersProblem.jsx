import React, { Fragment, useState, useEffect }from 'react'
import { Table,Button,Input,Select,Modal,ModalHeader,ModalBody,ModalFooter,Form,FormGroup,Label,Col} from 'reactstrap';
import axios from 'axios';
import "bootstrap/dist/css/bootstrap.min.css";
import {useLocation,useNavigate} from "react-router-dom"
import {useForm} from 'react-hook-form';

export  function UsersProblem() {
	const [modal, setModal] = useState(false);
	const [modal2, setModal2] = useState(false);
	const [userClaims, setUserClaims] = useState([]);
	const {state} = useLocation();
    // Toggle for Modal
    const toggle = () => setModal(!modal);
    const toggle2 = () => setModal2(!modal2);

    async function getUserClaims(){
    	console.log(state)
        const response  = await axios.post('http://localhost:3001/claim/getUserClaims',state);
        setUserClaims(response.data)
    }

    useEffect(() => {
        //Runs only on the first render
        getUserClaims()
    }, []);
	return (
    	<Fragment>
            <header className="App-header2" style={{textAlign: 'right'}}>
                <div style={{ textAlign:'center', backgroundImage: 'url(require("./images/background.png"))' }}>
                <h2>User Issues</h2>
                	<Modal isOpen={modal}
		            	size="lg"
		                toggle={toggle}
		                modalTransition={{ timeout: 300 }}>
		                <ModalHeader toggle={toggle}>
					      <h4>Employee</h4>
					    </ModalHeader>
		                <ModalBody>
				            <Form>
				            <FormGroup>
				              <Label>Employee</Label>
					          <Input type="text" value="Juan Perez Soto Morena" disabled/>
					        </FormGroup>
					        <FormGroup>
								<Label>
									Employee qualification
								</Label>
								<Input type="text" value="1" disabled/>
								<Label>
									Average qualification
								</Label>
								<Input type="text" value="3.5" disabled/>
							</FormGroup>
							<FormGroup>
					          <Label>Client commentary</Label>
					          <Input type="textarea" disabled/>
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
					            <Input type="text" placeholder="Message..." bsSize="lg" />
					          </Col>
					          <Col><Button size="lg">Send Message</Button></Col>
					        </FormGroup>
					        </Form>
		                </ModalBody>
		            </Modal>
                <Table striped bordered style={{backgroundColor: '#FFF'}}>
				  <thead >
				    <tr>
				      <th>
				        id Claim
				      </th>
				      <th>id Sale</th>
				      <th>
				        user name
				      </th>
				      <th>
				        Store
				      </th>
				      <th>
				        Date
				      </th>
				      <th>
				       	Description
				      </th>
				      <th>
				        resolved
				      </th>
				      <th>
				        goodTerms
				      </th>
				    </tr>
				  </thead>
				  <tbody>
				  {userClaims.map((item, i) => (
                    <tr>
                        <td>{item.id}</td>
                        <td>{item.idSaleFK}</td>
                        <td>{item.name}</td>
                        <td>{item.store}</td>
                        <td>{item.dateClaim.slice(0,10)}</td>
                        <td>{item.descriptionClaim}</td>
                        <td>{String(item.resolved)}</td>
                        <td>{String(item.goodTerms)}</td>
                        <td><button 
                        type="button" className="btn btn-dark" 
                        onClick={toggle2} 
                    	>Response
                    	</button></td>
				        <td><button 
                        type="button" className="btn btn-dark" 
                      	onClick={toggle}
                    	>Employee
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