import React from 'react';

class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      time: new Date()
    }
  }

  tick() {
    this.setState({
      time: new Date()
    });
  }

  componentDidMount() {
    setInterval(() => this.tick(), 1000);
  }


  render() {    
    return (
      <div>
        <h2>Clock</h2>

        <div className="clock__container">
          <div className="clock__inner">
            <h3>Time:</h3>
            <p>
              {this.state.time.getHours()}:
              {this.state.time.getMinutes()}:
              {this.state.time.getSeconds() < 10 ?
                '0' + this.state.time.getSeconds(): 
                this.state.time.getSeconds()
              } PDT</p>
          </div>
          <div className="clock__inner">
            <h3>Date:</h3>
            <p>{ this.state.time.toDateString() }</p>
          </div>
        </div>
      </div>
      
    );
  }
}

export default Clock;