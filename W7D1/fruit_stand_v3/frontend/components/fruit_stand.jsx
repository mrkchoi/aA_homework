import React, { Component } from 'react';

const FruitStand = ({ fruits, addOrange, addApple, clearFruits }) => (
  <div>
    <button 
      className="ui button basic" 
      onClick={addOrange}>
        + Orange
    </button>
    <button 
      className="ui button basic" 
      onClick={addApple}>
        + Apple
    </button>
    <button 
      className="ui button basic" 
      onClick={clearFruits}>
        Clear
    </button>

    <br/>

    <ul>
      {fruits.map((fruit, idx) => {
        return <li key={idx}>{fruit}</li>
      })}
    </ul>
  </div>
);

// class FruitStand extends Component {
//   constructor(props) {
//     super(props);
//     this.state = {
//       fruits: []
//     }
//   }

//   addFruit(fruitName) {
//     this.setState({
//       fruits: [...this.state.fruits, fruitName]
//     });
//   }

//   clearFruits() {
//     this.setState({
//       fruits: []
//     });
//   }
  
//   render() {
//     return (
//       <div>
//         <button 
//           className="ui button basic" 
//           onClick={() => {this.addFruit("Orange")}}>
//             + Orange
//         </button>
//         <button 
//           className="ui button basic" 
//           onClick={() => {this.addFruit("Apple")}}>
//             + Apple
//         </button>
//         <button 
//           className="ui button basic" 
//           onClick={() => {this.clearFruits()}}>
//             Clear
//         </button>

//         <br/>

//         <ul>
//           {this.state.fruits.map((fruit, idx) => {
//             return <li key={idx}>{fruit}</li>
//           })}
//         </ul>
//       </div>
//     )
//   }
// }

export default FruitStand;