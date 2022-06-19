import React, { Fragment, useState, useEffect } from 'react'
import { useLocation } from 'react-router-dom';
import axios from 'axios';

export function TableCart() {
    const [whiskyBag,setWhiskyBag] = useState([]);
    const {state} = useLocation();


    async function getWhiskyBag(){
        console.log(state.user);
        const responseTypes = await axios.post('http://localhost:3001/whisky/watchBag',state);
        if (whiskyBag.length===0)
            setWhiskyBag(responseTypes.data)
    }
    useEffect(() => {
        //Runs only on the first render
        getWhiskyBag();
    }, []);

    return (
      <Fragment>
        <div className="card border-dark text-center ">
          <table class="table">
              <thead>
                  <tr>
                      <th>idWhiskey</th>
                      <th>Name</th>
                      <th>Price</th>
                      <th>Quantity</th>
                  </tr>
              </thead>
              <tbody>
              {whiskyBag.map((item, i) => (
                        <tr key={i}>
                            <td>{item.whiskey_id}</td>
                            <td>{}</td>
                            <td>{item.price}</td>
                            <td>{item.quantity}</td>
                        </tr>
                    ))}
            </tbody>
          </table>
        <center>
            <input type='submit'  className='btn btn-dark btn-block'  value='Comprar'/>
        </center>
        </div>
      </Fragment>  
      )
  }

  