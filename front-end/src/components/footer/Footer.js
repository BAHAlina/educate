import React from "react";
import './footer.css'

function Footer(){
    return(
        <div className="footer">
            <div className="container">
                <div className="row">
                    <div className="footer-col">
                        <h4>Learn<span>It</span></h4>
                        <p>
                        vous trouverez avec nous tous ce que peut aider l'eleve pour s'ameliorer.
                        </p>
                    </div>
                    <div className="footer-col">
                        <h4>Raccourcis</h4>
                        <ul>
                            <li><a href="#">Accueil</a></li>
                            <li><a href="#">Apropos de nous</a></li>
                            <li><a href="#">Annocement</a></li>
                            <li><a href="#">Nouvelles</a></li>
                            <li><a href="#">Contact nous</a></li>
                        </ul>
                    </div>
                    <div className="footer-col">
                        <h4>Services</h4>
                        <ul>
                            <li><a href="#">Ajouter une annonce</a></li>
                            <li><a href="#">chercher une annonces</a></li>
                            <li><a href="#">filtrer les annonces</a></li>
                            <li><a href="#">Envoyer un message</a></li>
                        </ul>
                    </div>
                    <div className="footer-col">
                        <h4>Rejoingnez Nous</h4>
                        <div className="social-links">
                            <a href="#"><i className="fab fa-facebook-f"></i></a>
                            <a href="#"><i className="fab fa-twitter"></i></a>
                            <a href="#"><i className="fab fa-instagram"></i></a>
                            <a href="#"><i className="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
  	        </div>
        </div>
    )
}
export default Footer