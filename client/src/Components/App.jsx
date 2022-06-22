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
import { TypeMenu } from './WhiskyTypes/TypeMenu';
import { TypeWhiskySee } from './WhiskyTypes/TypeWhiskySee';
import { TypeWhiskyModify } from './WhiskyTypes/TypeWhiskyModify';
import { CreateWhiskytype } from './WhiskyTypes/CreateWhiskytype';
import { PresentationWhiskyModify } from './WhiskyPresentation/PresentationWhiskyModify';
import { PresentationMenu } from './WhiskyPresentation/PresentationMenu';
import { CreatePresentation } from './WhiskyPresentation/CreatePresentation';
import { PresentationWhiskySee } from './WhiskyPresentation/PresentationWhiskySee';
import { DistilleryManage } from './DistilleryManage/DistilleryManage';
import { CreateDistillery } from './DistilleryManage/CreateDistillery';
import { ModifyDistillery } from './DistilleryManage/ModifyDistillery';
import { SeeDistillery } from './DistilleryManage/SeeDistillery';
import { ManageMoney } from './ManageMoney/ManageMoney';
import { MoneyCreate } from './ManageMoney/MoneyCreate';
import { MoneyModify } from './ManageMoney/MoneyModify';
import { MoneySee } from './ManageMoney/MoneySee';
import { SubscriptionManager } from './Subscription/SubscriptionManager';
import { SubscriptionCard } from './Subscription/SubscriptionCard';
import { SubscriptionManagerForm } from './Subscription/SubscriptionManagerForm';
import { SubscriptionSee } from './Subscription/SubscriptionSee';
import { SubscriptionModify } from './Subscription/SubscriptionModify';
import { SubscriptionCreate } from './Subscription/SubscriptionCreate';
import { ClientManage } from './ClientManage/ClientManage';
import { History } from './OrdersMenu/History';
import { UsersProblem } from './userIssues/UsersProblem';
import {Navbar,NavItem,NavLink,NavbarBrand,Nav,Collapse,NavbarText,NavbarToggler} from 'reactstrap';
import { EmployeeManage } from './EmployeeManage/EmployeeManage';
import { EmployeeCreate } from './EmployeeManage/EmployeeCreate';
import { EmployeeModify } from './EmployeeManage/EmployeeModify';
import { EmployeeSee } from './EmployeeManage/EmployeeSee';





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

                <Route exact path="/TypeMenu" element={<TypeMenu />}/>

                <Route exact path="/TypeWhiskySee" element={<TypeWhiskySee />}/>
              
                <Route exact path="/TypeWhiskyModify" element={<TypeWhiskyModify />}/>

                <Route exact path="/CreateWhiskytype" element={<CreateWhiskytype />}/>

                <Route exact path="/PresentationWhiskyModify" element={<PresentationWhiskyModify />}/>

                <Route exact path="/PresentationMenu" element={<PresentationMenu />}/>

                <Route exact path="/CreatePresentation" element={<CreatePresentation />}/>
                
                <Route exact path="/PresentationWhiskySee" element={<PresentationWhiskySee />}/>

                <Route exact path="/DistilleryManage" element={<DistilleryManage />}/>

                <Route exact path="/CreateDistillery" element={<CreateDistillery />}/>

                <Route exact path="/ModifyDistillery" element={<ModifyDistillery />}/>
                
                <Route exact path="/SeeDistillery" element={<SeeDistillery />}/>

                <Route exact path="/ManageMoney" element={<ManageMoney />}/>

                <Route exact path="/MoneyCreate" element={<MoneyCreate />}/>

                <Route exact path="/MoneyModify" element={<MoneyModify />}/>
                
                <Route exact path="/MoneySee" element={<MoneySee />}/>

                <Route exact path="/SubscriptionManager" element={<SubscriptionManager />}/>

                <Route exact path="/SubscriptionCard" element={<SubscriptionCard />}/>

                <Route exact path="/SubscriptionManagerForm" element={<SubscriptionManagerForm />}/>

                <Route exact path="/SubscriptionSee" element={<SubscriptionSee />}/>

                <Route exact path="/SubscriptionModify" element={<SubscriptionModify />}/>

                <Route exact path="/SubscriptionCreate" element={<SubscriptionCreate />}/>

                <Route exact path="/ClientManage" element={<ClientManage />}/>
                <Route exact path="/History" element={<History/>}/>
                <Route exact path="/UsersProblem" element={<UsersProblem/>}/>
                <Route exact path="/EmployeeManage" element={<EmployeeManage />}/>

                <Route exact path="/EmployeeCreate" element={<EmployeeCreate />}/>

                <Route exact path="/EmployeeModify" element={<EmployeeModify />}/>

                <Route exact path="/EmployeeSee" element={<EmployeeSee />}/>
              </Routes>
                
            </div>
      </Router>
  );
}
