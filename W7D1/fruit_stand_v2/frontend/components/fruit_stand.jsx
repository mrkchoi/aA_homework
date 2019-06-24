import React from 'react';

// const FruitStand = (props) => {
//   return (
//     <div>
//       connected!
//     </div>
//   )
// }

class FruitStand extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      fruits: []
    }
  }

  addFruit(fruit) {
    this.setState({
      fruits: [...this.state.fruits, fruit]
    });
  }

  clearFruit() {
    this.setState({
      fruits: []
    });
  }

  render() {
    return (
      <div>
        <button className="ui button basic" onClick={() => {this.addFruit('apple')}}>+ Apple</button>
        <button className="ui button basic" onClick={() => {this.addFruit('orange')}}>+ Orange</button>
        <button className="ui button basic" onClick={() => {this.clearFruit()}}>Clear</button>
        
        <ul>
          {this.state.fruits.map((fruit, idx) => {
            return <li key={idx}>{fruit}</li> 
          })
          }
        </ul>
      </div>
    )
  }
}


export default FruitStand;
