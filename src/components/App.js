import React from 'react';

import NavBar from './navbar/NavBar';
import Home from './home/Home';
import About from './about/About';
function App() {
  return (
    <div className="App">
      <NavBar />
      <Home />
      <About img='/image2.jpg' />
    </div>
  );
}

export default App;
