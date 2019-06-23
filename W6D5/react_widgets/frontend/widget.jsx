import React from 'react';
import Clock from './clock';
import Tabs from './tabs';
import Weather from './weather';

class Widget extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="ui container main__container">
        <h1>Widgets!</h1>
        <Clock />
        <Weather />
        <Tabs/>
      </div >
    );
  }
}

export default Widget;