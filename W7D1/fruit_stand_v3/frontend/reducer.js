
import { ADD_FRUIT, CLEAR } from './actions';

const defaultState = {
  fruits: []
};

const reducer = (oldState = defaultState, action) => {
  switch(action.type) {
    case ADD_FRUIT:
      return {
        fruits: [...oldState.fruits, action.fruit]
      };
    case CLEAR:
      return {
        fruits: []
      };
    default:
      return defaultState;
  }
};

export default reducer;