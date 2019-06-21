import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    // your code here
    this.state = {
      result: 0,
      num1: '',
      num2: ''
    };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);

    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);

    this.clear = this.clear.bind(this);
  }

  // your code here
  setNum1(e) {
    let val = e.target.value;
    this.setState({
      num1: val
    });
  }

  setNum2(e) {
    let val = e.target.value;
    this.setState({
      num2: val
    });
  }

  add(e) {
    let num1 = parseInt(this.state.num1);
    let num2 = parseInt(this.state.num2);

    this.setState({
      result: num1 + num2
    });
  }

  subtract(e) {
    let num1 = parseInt(this.state.num1);
    let num2 = parseInt(this.state.num2);

    this.setState({
      result: num1 - num2
    });
  }

  multiply(e) {
    let num1 = parseInt(this.state.num1);
    let num2 = parseInt(this.state.num2);

    this.setState({
      result: num1 * num2
    });
  }

  divide(e) {
    let num1 = parseInt(this.state.num1);
    let num2 = parseInt(this.state.num2);

    this.setState({
      result: num1 / num2
    });
  }

  clear(e) {
    this.setState({
      result: 0,
      num1: '',
      num2: ''
    });
  }


  render() {
    let { result, num1, num2 } = this.state;
    return (
      <div>
        <h1>{result}</h1>
        <form>
          <input type="text" value={num1} onChange={this.setNum1}/>
          <input type="text" value={num2} onChange={this.setNum2}/>
          <button onClick={this.clear}>clear</button>
        </form>
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }
}

export default Calculator;