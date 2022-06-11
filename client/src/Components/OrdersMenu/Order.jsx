import React,{Fragment,useEffect} from 'react'
import axios from 'axios';
import { OrderFormulary } from '../OrdersMenu/OrderFormulary';
import { PrincipalCard } from '../PrincipalCard/PrincipalCard'
import { TableCart } from './TableCart'



export function Order() {
    
    //const [FunctionaryList,setFunctionaryList] = useState([]);
  
    useEffect(() => {
        axios.get('http://localhost:3001/Users/getUsers').then((response) => {
            //setFunctionaryList(response.data)
        })
    },[]);

  return (
    <Fragment>
    <header className="App-header">
        <div style={{ backgroundImage: 'url(require("./images/genericBackground.png"))' }}>
            <br/>

                <OrderFormulary />
                <TableCart />

        </div>
    </header>
  </Fragment>
  )
}