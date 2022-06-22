import React,{Fragment,useState,useEffect} from 'react'
import { useLocation } from 'react-router-dom';
import {useForm} from 'react-hook-form';

export function EmployeeSee() {

    const {state} = useLocation();
    const whiskyInfo = state.whiskyInfo[0];

    
    const {register,handleSubmit} = useForm();

  return (
    <Fragment>
        <header className="App-header">
            <div style={{ backgroundImage: 'url(require("./images/genericBackground.png"))' }}>
                <div className='container mx-auto'>
                    <div className="card bg-light w-100 mb-3  text-dark" >                    
                        <div className="row g-0">
                                <div className="card-body">
                                    <h1 className="card-title text-center text-dark">See Employee</h1>
                                    <br></br>
                                    <div className="row">
                                    <div className="col">
                                            <label htmlFor="text" className="form-label">Identification</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.identification}readOnly />
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Name</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.name}readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Salary</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.salary}readOnly/>
                                        </div>

                                    </div>
                                    <br></br>
                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Last Name</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.surname_1}readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Second Last Name</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.surname_2}readOnly/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Hiring Date</label>
                                            <input type="date" className="form-control" value = {whiskyInfo.hiring_date}readOnly/>
                                        </div>


                                    </div>
                                    <br></br>

                                    <div className="row">

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Age</label>
                                            <input type="number" className="form-control" value = {whiskyInfo.age}readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Phone number</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.phone}readOnly aria-label="Phone number"/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">address</label>
                                            <input type="text" className="form-control" value = {whiskyInfo.address} readOnly />
                                        </div>

                                    </div>

                                    <center>
                                            <button type="submit" className= "btn btn-dark text-center" >Modify</button>    
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </header>
      </Fragment>
    
  )
}
