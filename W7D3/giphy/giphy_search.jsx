import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

// import { fetchSearchGiphys } from './util/api_util';
import { receiveSearchGiphys } from './actions/giphy_actions';
import { fetchSearchGiphys } from './actions/giphy_actions';

window.receiveSearchGiphys = receiveSearchGiphys;
window.fetchSearchGiphys = fetchSearchGiphys;

document.addEventListener('DOMContentLoaded', () => {
  let store = configureStore();
  window.store = store;

  ReactDOM.render(
    <Root store={store}/>, 
    document.getElementById('root')
  );
});
