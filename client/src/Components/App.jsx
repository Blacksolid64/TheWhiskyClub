import '../App.css';
import "bootstrap/dist/css/bootstrap.min.css"
import {
    BrowserRouter as Router,
    Routes,
    Route
  } from "react-router-dom";
import { LoginPage } from './LoginPage/LoginPage';
import { ExternalPage } from './ExternalPage/ExternalPage';
import { ClientMenu } from './ClientMenu/ClientTarget';
import { AdmiMenu } from './AdmiMenu/AdmiMenu';
import { OrderMenu } from './OrdersMenu/OrderMenu';
import { SubscriptionPage } from './Subscription/Subscription';
import { Order } from './OrdersMenu/Order';
import { ReadWhiskeys } from './Whiskeys/ReadWhiskeys';

export function App() {
  return (
      <Router>
          <div className="App" >
            
              <Routes>

                <Route exact path="/" element={<ExternalPage />}/>

                <Route exact path="/LoginPage" element={<LoginPage />}/>

                <Route exact path="/ClientMenu" element={<ClientMenu />}/>

                <Route exact path="/AdmiMenu" element={<AdmiMenu />}/>

                <Route exact path="/OrderMenu" element={<OrderMenu />}/>

                <Route exact path="/SubscriptionPage" element={<SubscriptionPage />}/>

                <Route exact path="/Order" element={<Order />}/>

                <Route exact path="/ReadWhiskeys" element={<ReadWhiskeys/>}/>
              
              </Routes>
                
            </div>
      </Router>
  );
}
