import React from 'react';
import ReactDOM from 'react-dom';
// import { Provider } from 'react-redux';

import store from './store';
import { addOrange, addApple, clearFruit } from './actions';
// import FruitStandContainer from './components/fruit_stand_container';

import FruitStand from './components/fruit_stand';

// const App = () => (
//   <Provider store={store}>
//     <FruitStandContainer />
//   </Provider>
// );

document.addEventListener('DOMContentLoaded', () => {
  let root = document.querySelector('#root');

  ReactDOM.render(<FruitStand /> , root);
});
