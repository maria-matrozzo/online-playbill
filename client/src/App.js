import './App.css';
import {Route, Switch} from "react-router-dom";
import Shows from './Shows';
import Show from './Show';

function App() {
  return (
    <Switch>
      <Route extact path="/" component={Shows}/>
      <Route extact path="/shows/:id" component={Show}/>
    </Switch>
  );
}

export default App;
