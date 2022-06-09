import '../App.css';
import "bootstrap/dist/css/bootstrap.min.css"
import {
    BrowserRouter as Router,
    Routes,
    Route
  } from "react-router-dom";
//import { Test } from './test/test';
import { LoginPage } from './LoginPage/LoginPage';
import { ExternalPage } from './ExternalPage/ExternalPage';


export function App() {
  return (
      <Router>
          <div className="App" >
            
              <Routes>

                <Route exact path="/" element={<ExternalPage />}/>

                  <Route exact path="/LoginPage" element={<LoginPage />}/>
              
              </Routes>
                
            </div>
      </Router>
  );
}
