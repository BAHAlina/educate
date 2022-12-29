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
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit
                        , sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        </p>
                    </div>
                    <div className="footer-col">
                        <h4>Liens</h4>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">Annocement</a></li>
                            <li><a href="#">Nouvelles</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>
                    <div className="footer-col">
                        <h4>Services</h4>
                        <ul>
                            <li><a href="#">offline</a></li>
                            <li><a href="#">online</a></li>
                            <li><a href="#">gratuit</a></li>
                            <li><a href="#">payant</a></li>
                        </ul>
                    </div>
                    <div className="footer-col">
                        <h4>follow us</h4>
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