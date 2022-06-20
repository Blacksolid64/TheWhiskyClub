import React,{Fragment,useEffect,useState} from 'react'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'


export function CardList({props}) {

    const {register,handleSubmit} = useForm();
    const [WhiskysList,setWhiskysList] = useState([]);

    let navigate = useNavigate()
    const moveTo = (whiskyInfo) =>{
        let path 
        if(props.action === 'delete'){
            path = "/AdmiMenu"
        }else if(props.action === 'consult'){
            path = "/WhiskySee"
        }else{
            path = "/ModifyWhisky"
        }
        navigate(path, {state:{whiskyInfo:whiskyInfo,store:props.store}})
    }
     
    useEffect(() => {
        axios.get('http://localhost:3001/whisky/getWhisky',{params: {store:props.store}}).then((response) => {
            setWhiskysList(response.data)
        })
      },[]);


    const onSubmit = async(data) =>{
        try{
            if(props.action === 'delete'){
                axios.post('http://localhost:3001/whisky/deleteWhisky',{data:data,store:{store:props.store}}).then((response) => {
                moveTo(response.data)
                })
            }else{
                console.log(data)
                axios.post('http://localhost:3001/whisky/getOneWhisky',{data:data,store:{store:props.store}}).then((response) => {
                moveTo(response.data)
                })
              } 
            
        } catch(err){
            alert('An error occurred')
        }
    }
    console.log("here")
    console.log(props.store)
  return (
    <Fragment>
        <form onSubmit={handleSubmit(onSubmit)}>
            <select className="form-select" defaultValue={'DEFAULT'} aria-label="Whiskys"{...register('id',{required:true})}> 
            <option value="DEFAULT" disabled>Whiskys</option>
            {WhiskysList.map((whisky) =>{
                return (
                        <option key={whisky.Whiskey_id} value={whisky.Whiskey_id}> {whisky.name+" in store: "+whisky.Store}</option>
                    );
            })}
            </select>
            <br/>
            <input type="submit" className="btn btn-dark btn-block" value = {props.buttonTitle} />        
        </form>
    </Fragment>
  )
}
