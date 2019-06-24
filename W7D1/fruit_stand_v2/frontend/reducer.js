import { ADD_FRUIT, CLEAR } from './actions';

export default fruitReducer = (state = {}, action) => {
  switch(action.type) {
    case ADD_FRUIT:
      return {
        fruits: [...oldState, action.fruit]
      }
    case CLEAR:
      return {
        fruits: []
      }
    default: 
      return state;
  }
};

export default fruitReducer;
