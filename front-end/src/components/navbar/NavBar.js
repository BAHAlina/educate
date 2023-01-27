import React from "react";
import "./NavBar.css"


function NavBar(){
    return(
        <div className="hero">
            <h2 className="logo">Learn<span>it</span></h2>
			<ul>
				<li><a href="/home">Acceuil</a></li>
				<li><a href="">A Propos</a></li>
				<li><a href="#">Annonces</a></li>
				<li><a href="#">Nouvelles</a></li>
				<li><a href="#">Contactez Nous</a></li>
			</ul>
			<div className="fvr"><a className="favor" href="enr" >Mes favoris</a>
			<a className="favor" href="/acount" ><i className="fa-solid fa-user"></i></a>
			<a className="favor" href="/" ><i className="fa-solid fa-right-from-bracket"></i></a></div>
			
        </div>
    )
}
export default NavBar