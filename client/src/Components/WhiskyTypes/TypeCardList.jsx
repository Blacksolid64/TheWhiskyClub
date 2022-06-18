import React,{Fragment,useEffect,useState} from 'react'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'


export function TypeCardList({props}) {

    const {register,handleSubmit} = useForm();
    const [TypeList,setTypeList] = useState([]);

    let navigate = useNavigate()
    const moveTo = (whiskyInfo) =>{
        let path 
        if(props.action === 'delete'){
            path = "/TypeMenu"
        }else if(props.action === 'consult'){
            path = "/TypeWhiskySee"
        }else{
            path = "/TypeWhiskyModify"
        }
        console.log('Aqui recibo')
        console.log(whiskyInfo)
        navigate(path, {state:{whiskyInfo:whiskyInfo}})
    }
    
    useEffect(() => {
        axios.get('http://localhost:3001/whisky/typeWhisky').then((response) => {
            setTypeList(response.data)
        })
      },[]);


    const onSubmit = async(data) =>{
        try{
            if(props.action === 'delete'){
                console.log(data)
                axios.post('http://localhost:3001/whisky/deleteTypeWhisky',data).then((response) => {
                moveTo(response.data)
                })
            }else{
                console.log(data)
                axios.post('http://localhost:3001/whisky/getOneTypeWhisky',data).then((response) => {
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