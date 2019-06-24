import { connect } from 'react-redux';
import { addOrange, addApple, clearFruits } from '../actions';
import FruitStand from './fruit_stand';

const mapStateToProps = state => ({
  fruits: state.fruits
});

const mapDispatchToProps = dispatch => ({
  addOrange: () => dispatch(addOrange()),
  addApple: () => dispatch(addApple()),
  clearFruits: () => dispatch(clearFruits())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FruitStand);
