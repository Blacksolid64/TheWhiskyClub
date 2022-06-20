import React,{Fragment} from 'react'
import { useLocation } from 'react-router-dom';
import { Link } from 'react-router-dom'

export function SubscriptionSee() {

    const {state} = useLocation();
    const subscriptionInfo =state.subscriptionInfo[0];
    console.log('Aqui recibo')
    console.log(subscriptionInfo[0])

  return (
    <Fragment>
        <header className="App-header">
            <div style={{ backgroundImage: 'url(require("./images/genericBackground.png"))' }}>
                <div className='container mx-auto'>
                    <div className="card bg-light w-100 mb-3  text-dark" >                    
                                <div className="card-body">
                                    <h1 className="card-title text-center  text-dark">{subscriptionInfo.name}</h1>
                                    <br></br>
                                    
                                    <div className="row">
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Price</label>
                                            <input type="text" className="form-control" placeholder="price" aria-label="price" value = {subscriptionInfo.price} readOnly/>
                                        </div>
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Duration</label>
                                            <input type="text" className="form-control" placeholder="duration" aria-label="duration" value = {subscriptionInfo.duration} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Discount Shop</label>
                                            <input type="text" className="form-control" placeholder="discountShop" aria-label="discountShop" value = {subscriptionInfo.discountShop} readOnly/>
                                        </div>

                                    </div>
                                    <br></br>

                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Discount Delivery</label>
                                            <input type="text" className="form-control" placeholder="discountDelivery" aria-label="discountDelivery" value = {subscriptionInfo.discountDelivery} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Special Whiskeys</label>
                                            <input type="text" className="form-control" placeholder="specialWhiskeys" aria-label="specialWhiskeys" value = {subscriptionInfo.specialWhiskeys}readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Notifications</label>
                                            <input type="text" className="form-control" placeholder="notifications" aria-label="notifications" value = {subscriptionInfo.notifications} readOnly/>
                                        </div>
                                        
                                    </div>

                                    <br></br>
                                    <div className="row">
                                        
                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Gift Whiskeys</label>
                                            <input type="text" className="form-control" placeholder="giftWhiskeys" aria-label="giftWhiskeys" value = {subscriptionInfo.giftWhiskeys} readOnly/>
                                        </div>

                                        <div className="col">
                                            <label htmlFor="text" className="form-label">Gift Count</label>
                                            <input type="text" className="form-control" placeholder="Gift_count" aria-label="Gift_count" value = {subscriptionInfo.Gift_count} readOnly/>
                                        </div>

                                    </div>

                                    <br></br>

                                    <br></br>

                                    <center>
                                        <Link to= '/SubscriptionManager' className="btn btn-dark">Regresar</Link>    
                                    </center>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
        </header>
      </Fragment>
    
  )
}
