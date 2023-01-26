import React from 'react';

import NavBar from './navbar/NavBar';
import Home from './home/Home';
import About from './about/About';
import Annonce from './Annonce';
import Nouvelles from './nouvelles/Nouvelles';
import Contact from './contact/Contact';
import Footer from './footer/Footer';



function App() {
  return (
    <div className="App">
      <NavBar />
      <Home />
      <About  />
      <Annonce />
      <Nouvelles/>
      <Contact />
      <Footer />
      
    </div>
  );
}

export default App;
