import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      searchTerm: 'golden retriever'
    }

    this.handleInput = this.handleInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.props.fetchSearchGiphys('golden+retreiver');
  }

  handleInput(e) {
    this.setState({
      searchTerm: e.target.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    let searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    return (
      <div>
        <h1>Giphy Search</h1>

        <form onSubmit={this.handleSubmit}>
          <label>Search term:
            <input 
              type="text" 
              value={this.state.searchTerm} 
              onChange={this.handleInput}/>
          </label>

          <input type="submit" value="Search"/>
        </form>

        <br/>

        <GiphysIndex giphys={this.props.giphys}/>

      </div>
    );
  }
}

export default GiphysSearch;