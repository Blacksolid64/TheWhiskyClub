import React,{Fragment,useEffect,useState} from 'react'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'


export function DistilleryCard({props}) {
    //parameters for system use
    const {register,handleSubmit} = useForm();
    const [DistilleryList,setDistillery] = useState([]);
    //sends parameters to and manages another system
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

        navigate(path, {state:{whiskyInfo:whiskyInfo,store:props.store}})
    }
    
    useEffect(() => {
        axios.get('http://localhost:3001/whisky/DestileryWhisky',{params: {store:props.store}}).then((response) => {
            setDistillery(response.data)
        })
      },[]);


    const onSubmit = async(data) =>{
        try{
            if(props.action === 'delete'){
                axios.post('http://localhost:3001/whisky/deleteDestilleryWhisky',{data:data,store:props.store}).then((response) => {
                moveTo(response.data)
                })
            }else{
                console.log(data)
                axios.post('http://localhost:3001/whisky/getOneDestilleryWhisky',{data:data,store:props.store}).then((response) => {
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
                {DistilleryList.map((whisky) =>{
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
