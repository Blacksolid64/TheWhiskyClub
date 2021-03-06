import React,{Fragment,useEffect,useState} from 'react'
import {useForm} from 'react-hook-form';
import {useNavigate} from "react-router-dom"
import axios from 'axios'


export function SubscriptionCard({props}) {
    //receives parameters from another window
    const {register,handleSubmit} = useForm();
    const [SubscriptionList,setSubscription] = useState([]);
    //sends parameters to and manages another system
    let navigate = useNavigate()
    const moveTo = (subscriptionInfo) =>{
        let path 
        if(props.action === 'delete'){
            path = "/AdmiMenu"
        }else if(props.action === 'consult'){
            path = "/SubscriptionSee"
        }else{
            path = "/SubscriptionModify"
        }
        navigate(path, {state:{subscriptionInfo:subscriptionInfo,store:props.store}})
    }
    
    useEffect(() => {
        console.log(props.store)
        axios.get('http://localhost:3001/subscription/SuscriptionGet',{params: {store:props.store}}).then((response) => {
            setSubscription(response.data)
            console.log(response.data)
        })
      },[]);


    const onSubmit = async(data) =>{
        try{
            if(props.action === 'delete'){
                axios.post('http://localhost:3001/subscription/SuscriptionDelete',{data:data,store:props.store}).then((response) => {
                moveTo(response.data)
                })
            }else{
                console.log(data)
                axios.post('http://localhost:3001/subscription/getOneSuscription',{data:data,store:props.store}).then((response) => {
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
                <option value="DEFAULT" disabled>Subscription Whiskys</option>
                {SubscriptionList.map((subs) =>{
                    return (
                            <option key={subs.id} value={subs.id}> {subs.name}</option>
                        );
                })}
                </select>
                <br/>
                <input type="submit" className="btn btn-dark btn-block" value = {props.buttonTitle} />        
            </form>
        </Fragment>
      )
}
