import React,{Fragment,useEffect,useState} from 'react'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'


export function MoneyCard({props}) {
    //parameters for system use
    const {register,handleSubmit} = useForm();
    const [TypeList,setTypeList] = useState([]);
    
    //sends parameters to and manages another system
    let navigate = useNavigate()
    const moveTo = (whiskyInfo) =>{
        let path 
        if(props.action === 'delete'){
            path = "/AdmiMenu"
        }else if(props.action === 'consult'){
            path = "/MoneySee"
        }else{
            path = "/MoneyModify"
        }
        navigate(path, {state:{whiskyInfo:whiskyInfo,store:props.store}})
    }
    
    useEffect(() => {
        axios.get('http://localhost:3001/money/moneyGet',{params: {store:props.store}}).then((response) => {
            setTypeList(response.data)
        })
      },[]);


    const onSubmit = async(data) =>{
        try{
            if(props.action === 'delete'){
                console.log(data)
                axios.post('http://localhost:3001/money/deleteMoney',{data:data,store:props.store}).then((response) => {
                moveTo(response.data)
                })
            }else{
                console.log(data)
                axios.post('http://localhost:3001/money/moneyOneget',{data:data,store:props.store}).then((response) => {
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
            <option value="DEFAULT" disabled>Type Whiskys</option>
            {TypeList.map((whisky) =>{
                return (
                        <option key={whisky.id} value={whisky.id}> {whisky.name}</option>
                    );
            })}
            </select>
            <br/>
            <input type="submit" className="btn btn-dark btn-block" value = {props.buttonTitle} />        
        </form>
    </Fragment>
  )
}
