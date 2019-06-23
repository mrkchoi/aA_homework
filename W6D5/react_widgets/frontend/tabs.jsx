import React from 'react'

class Tabs extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [
        {
          title: 'one',
          content: 'I am the first'
        },
        {
          title: 'two',
          content: 'Second pane here'
        },
        {
          title: 'three',
          content: 'Third pane here'
        },
      ],
      active: 0
    }
  }

  updateActive(idx) {
    this.setState({
      active: idx
    })
  }

  render() {
    return (
      <React.Fragment>
        <h2>Tabs</h2>
        <div className="tab__main">
          <header className='tabheader_container'>
            <ul>
              <li 
                className="tab_numbers" 
                onClick={() => this.updateActive(0)}>
                  {this.state.active === 0 ? <strong>one</strong> : 'one'}
              </li>
              <li 
                className="tab_numbers" 
                onClick={() => this.updateActive(1)}>
                {this.state.active === 1 ? <strong>two</strong> : 'two'}
              </li>
              <li 
                className="tab_numbers" 
                onClick={() => this.updateActive(2)}>
                {this.state.active === 2 ? <strong>three</strong> : 'three'}
              </li>
            </ul>
          </header>
          <section className="tab_content">
            <p>
              { this.state.data[this.state.active].content }
            </p>
          </section>
        </div>
      </React.Fragment>
    )
  }
}

export default Tabs;
