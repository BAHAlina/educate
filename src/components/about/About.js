import React from "react";

import "./About.css"


function About(){
    return(
        <div className="about">
            
            <div className="main">
                <div className="imgg">
                    <img src="/Images/image2.jpg" />
                </div>
                <div className="ktiba">
                <h1>About <span>Us</span></h1>
                <p>Lorem ipsum dolor sit amet, 
                    consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua
                    . Ut enim ad minim veniam
                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                </p>
                <button>learn more</button>
                </div>
            </div>
            
            
        </div>
    )
}

export default  About