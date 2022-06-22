import React,{Fragment,useState, useEffect } from 'react'
import {UncontrolledAccordion,AccordionItem,AccordionHeader,AccordionBody,Accordion,Label,Input,Row,Col} from 'reactstrap';
import { useLocation } from 'react-router-dom';
import axios from 'axios';
import { Link } from 'react-router-dom';
import {useForm} from 'react-hook-form';

export function WhiskyDetail() {
    const {register,handleSubmit} = useForm();
    const [commentary,setCommentary] = useState("");
    const {state} = useLocation();
    const Whiskyid = state.id
    const Userid = state.userId
    const varStore = state.store
    console.log(Whiskyid);
    const [whisky, setwhisky] = useState([]);
    const [commentaries, setCommentaries] = useState([]);
    async function getWhisky(){
        const response  = await axios.post('http://localhost:3001/whisky/selectWhiskeyDetailed',state);
        if(whisky.length===0)
            setwhisky(response.data)
    }
    async function sendCommentary(){
        state.description = commentary
        const response  = await axios.post('http://localhost:3001/claim/insertCommentary',state);
        alert("Your commentary was sended")
        getCommentaries()
    };

    async function getCommentaries(){
        const response  = await axios.post('http://localhost:3001/claim/getCommentaries',state);
        setCommentaries(response.data)
        
    }
    useEffect(() => {
        //Runs only on the first render
        getWhisky()
        getCommentaries()
    }, []);
    const onSubmit = async(data) =>{
        try{
            //state
            data.Whiskyid = Whiskyid
            data.Userid = Userid
            data.store = varStore
            const response = await axios.post('http://localhost:3001/whisky/addProductCart', data);
            alert("Whiskey added to cart");
        } catch(err){
            alert('Error searching for whisky');
        }       
    }
  return (
    <Fragment>
        <header className="App-header">
            <div style={{ backgroundImage: 'url(require("./images/genericBackground.png"))' }}>
            {whisky.map((item, i) => (
                <div className='container mx-auto'>
                    <div className="card bg-dark w-100 mb-3" >                    
                        <div className="row g-0">
                            <div className="col-md-4">
                            <img src={item.Image} className="img-fluid rounded-start" alt="..."/>
                            </div>
                            <div className="col-md-8">
                                <div className="card-body">
                                    <h1 className="card-title text-center"></h1>
                                    <br></br>
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Type</label>
                                            <input type="text" className="form-control" placeholder="Whiskey Type" aria-label="Type Whisky" value = {item.Type} readOnly/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age</label>
                                            <textarea type="text" style={{resize:'none'}} className="form-control" placeholder="Whiskey Age" aria-label="Aged Whisky" value = {item.Age_in_years} readOnly/>
                                        </div>

                                    </div>
                                    <br></br>

                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Distillery</label>
                                            <input type="text" className="form-control" placeholder="Distillery" aria-label="Distillery" value = {item.Distillery} readOnly/>
                                        </div>
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Presentation</label>
                                            <input type="text" className="form-control" placeholder="Presentation" aria-label="Presentation" value = {item.Presentation} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price</label>
                                            <input type="text" className="form-control" placeholder="Price" aria-label="Price" value = {item.priceByUnit}readOnly/>
                                        </div>
                                        
                                    </div>

                                    <br></br>
                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">In inventory</label>
                                            <input type="text" className="form-control" placeholder="In inventory" aria-label="In inventory" value = {item.quantity} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Description</label>
                                            <input type="text" className="form-control" placeholder="Description" aria-label="Description" value = {item.description} readOnly/>
                                        </div>

                                    </div>

                                    <div>
                                        <div className="col">
                                        <form onSubmit={handleSubmit(onSubmit)}>
                                            <label htmlFor="text" className="form-label">Amount to add to cart</label>
                                            <input type="number" className="form-control" id="amountCar" placeholder="Amount to add to cart" aria-label="Cart"
                                            {...register('amountCar',{required:true})}/>
                                            <button type ='submit' className="btn btn-dark btn-lg">add to Cart</button>
                                        </form>
                                        </div>
                                    </div>

                                    <br></br>

                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                ))}
                <center><Label style={{color: "white", backgroundColor: 'black'}}>Reviews:</Label></center>
                {commentaries.map((item, i) => (
                <center>
                <Row style={{backgroundColor:'black' ,padding: '5px 5px 5px 5px'}}>
                Commentary date: {item.ReviewDate.slice(0, 10)}
                
                <div>
                  <UncontrolledAccordion defaultOpen="0">
                    <AccordionItem>
                      <AccordionHeader targetId="1">
                        <strong>
                            {`${item.name} ${item.surname_1} ${item.surname_2}`} 
                        </strong>
                      </AccordionHeader>
                      <AccordionBody accordionId="1">
                        {item.description}
                      </AccordionBody>
                    </AccordionItem>
                    </UncontrolledAccordion>
                </div>
                </Row>
                </center>
                ))}
                <Row style={{padding: '20px 20px 20px 20px'}}>
                    <Col>
                        <Input bsSize="lg" onChange={(e) => setCommentary(e.target.value)}/>
                    </Col>
                    <Col sm={2}>
                        <button type ='button' className="btn btn-dark btn-lg" onClick={sendCommentary}>Comentar</button>
                    </Col>
                </Row>
            </div>
        </header>
      </Fragment>
  )
}
//const {state} = useLocation();