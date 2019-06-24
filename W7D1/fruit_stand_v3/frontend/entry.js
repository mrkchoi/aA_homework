import React from 'react';
import ReactDOM from 'react-dom';

import { Provider } from 'react-redux';
import { store } from './store';

import FruitStandContainer from './components/fruit_stand_container';

const App = () => (
  <Provider store={store}>
    <FruitStandContainer />
  </Provider>
);

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />, 
    document.getElementById('root')
  );
});
