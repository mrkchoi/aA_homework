import React from 'react';

const FruitStand = ({ fruits, addApple, addOrange, clearFruit }) => {
  return (
    <div>
      <button className="ui button basic" onClick={addApple}>+ Apple</button>
      <button className="ui button basic" onClick={addOrange}>+ Orange</button>
      <button className="ui button basic" onClick={clearFruit}>Clear</button>

      <ul>
        {fruits.map((fruit, idx) => {
          return <li key={idx}>{fruit}</li>
        })
        }
      </ul>
    </div>
  )
}

// class FruitStand extends React.Component {
//   constructor(props) {
//     super(props);

//     this.state = {
//       fruits: []
//     }
//   }

//   addFruit(fruit) {
//     this.setState({
//       fruits: [...this.state.fruits, fruit]
//     });
//   }

//   clearFruit() {
//     this.setState({
//       fruits: []
//     });
//   }

//   render() {
//     return (
//       <div>
//         <button className="ui button basic" onClick={() => {this.addFruit('apple')}}>+ Apple</button>
//         <button className="ui button basic" onClick={() => {this.addFruit('orange')}}>+ Orange</button>
//         <button className="ui button basic" onClick={() => {this.clearFruit()}}>Clear</button>
        
//         <ul>
//           {this.state.fruits.map((fruit, idx) => {
//             return <li key={idx}>{fruit}</li> 
//           })
//           }
//         </ul>
//       </div>
//     )
//   }
// }


export default FruitStand;
