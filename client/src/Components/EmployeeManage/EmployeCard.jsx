import React,{Fragment,useEffect,useState} from 'react'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'


export function EmployeCard({props}) {

    const {register,handleSubmit} = useForm();
    const [EmployeeList,setEmployee] = useState([]);

    let navigate = useNavigate()
    const moveTo = (whiskyInfo) =>{
        let path 
        if(props.action === 'delete'){
            path = "/AdmiMenu"
        }else if(props.action === 'consult'){
            path = "/SeeDistillery"
        }else{
            path = "/ModifyDistillery"
        }
        console.log('Aqui recibo')
        console.log(whiskyInfo)
        navigate(path, {state:{whiskyInfo:whiskyInfo,store:props.store}})
    }
    
    useEffect(() => {
        axios.get('http://localhost:3001/users/EmployeeGet',{params: {store:props.store}}).then((response) => {
            setEmployee(response.data)
            console.log(response.data)
        })
      },[]);


    const onSubmit = async(data) =>{
        try{
            if(props.action === 'delete'){
                axios.post('http://localhost:3001/users/deleteEmployee',{data:data,store:props.store}).then((response) => {
                moveTo(response.data)
                })
            }else{
                console.log(data)
                axios.post('http://localhost:3001/users/getOneEmployee',{data:data,store:props.store}).then((response) => {
                moveTo(response.data)
                })
              } 
            
        } catch(err){
            alert('An error occurred')
        }
    }


    return (
        <Fragment>
            <form onSubmit={handleSubmit(onSubmit)}>
                <select className="form-select" defaultValue={'DEFAULT'} aria-label="Whiskys"{...register('id',{required:true})}> 
                <option value="DEFAULT" disabled>Presentation Whiskys</option>
                {EmployeeList.map((employee) =>{
                    return (
                            <option key={employee.id} value={employee.id}> {employee.name}</option>
                        );
                })}
                </select>
                <br/>
                <input type="submit" className="btn btn-dark btn-block" value = {props.buttonTitle} />        
            </form>
        </Fragment>
      )
}
