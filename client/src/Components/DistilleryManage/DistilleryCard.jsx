import React,{Fragment,useEffect,useState} from 'react'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'


export function DistilleryCard({props}) {

    const {register,handleSubmit} = useForm();
    const [DistilleryList,setDistillery] = useState([]);

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
        navigate(path, {state:{whiskyInfo:whiskyInfo}})
    }
    
    useEffect(() => {
        axios.get('http://localhost:3001/whisky/DestileryWhisky').then((response) => {
            setDistillery(response.data)
            console.log(response.data)
        })
      },[]);


    const onSubmit = async(data) =>{
        try{
            if(props.action === 'delete'){
                axios.post('http://localhost:3001/whisky/deleteDestilleryWhisky',data).then((response) => {
                moveTo(response.data)
                })
            }else{
                console.log(data)
                axios.post('http://localhost:3001/whisky/getOneDestilleryWhisky',data).then((response) => {
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
