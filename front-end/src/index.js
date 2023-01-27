import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './components/App';
import {
    createBrowserRouter,
    RouterProvider,
  } from "react-router-dom";
import Blog from './components/pages/Blog';
import Login from './components/login/Login';
import Chat from './components/chat/Chat';
import Favoris from './components/favoris/Favoris';
import Acount from './components/account/Acount';
import Compte from './components/account/Compte';
import Mdp from './components/account/Mdp';
import About from './components/about/About';

  const router = createBrowserRouter([
    {
      path: "/sign",
      element: <App/>,
    },
    {
      path: "/acount",
      element: <Acount/>,
    },
    {
      path: "/home",
      element: <App/>,
    },
    {
      path: "/",
      element: <Login/>,
    },
    {
      path: "blog",
      element: <Blog/>,
    },
    {
      path: "/send",
      element: <Chat/>,
    },
    {
      path: "enr",
      element: <Favoris/>,
    },
    {
      path: "/compte",
      element: <Compte/>,
    },
    {
      path: "/mdp",
      element: <Mdp/>,
    },
    
    
  ]);

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  
    <RouterProvider router={router} />
  
);


