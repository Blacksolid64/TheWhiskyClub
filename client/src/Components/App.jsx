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
import { WhiskyDetail } from './Whiskeys/WhiskyDetail';
import { WhiskysManage } from './WhiskysManage/WhiskysManage';
import { WhiskySee } from './WhiskysManage/WhiskySee';
import { ModifyWhisky } from './WhiskysManage/ModifyWhisky';
import { CreateWhisky } from './WhiskysManage/CreateWhisky';
import { ReportsManage } from './ReportsManage/ReportsManage';




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

                <Route exact path="/WhiskyDetail" element={<WhiskyDetail />}/>

                <Route exact path="/WhiskysManage" element={<WhiskysManage />}/>

                <Route exact path="/WhiskySee" element={<WhiskySee />}/>

                <Route exact path="/ModifyWhisky" element={<ModifyWhisky />}/>

                <Route exact path="/CreateWhisky" element={<CreateWhisky />}/>

                <Route exact path="/ReportsManage" element={<ReportsManage />}/>
              
              </Routes>
                
            </div>
      </Router>
  );
}
