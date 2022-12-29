import React from "react";
import "./NavBar.css"


function NavBar(){
    return(
        <div className="hero">
            <h2 className="logo">Learn<span>it</span></h2>
			<ul>
				<li><a href="/home">Home</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Anonneces</a></li>
				<li><a href="#">Nouvelles</a></li>
				<li><a href="#">Contact Us</a></li>
			</ul>
			<a href="/" ></a><a className="favor" href="enr" >Mes favoris</a>
			
        </div>
    )
}
export default NavBar