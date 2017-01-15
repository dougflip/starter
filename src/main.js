import React from 'react';
import ReactDOM from 'react-dom';

class App extends React.Component {
  /* beautify ignore:start */
  render() {
    return (
      <div>
        <h1>Hello World!</h1>
      </div>
    );
  }
  /* beautify ignore:end */
}

ReactDOM.render(
  /* beautify ignore:start */
  <App />,
  /* beautify ignore:end */
  document.querySelector('#main')
);
