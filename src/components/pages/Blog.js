import React from "react";
import "./Blog.css"
import NavBar from "../navbar/NavBar";


function Blog(){
    return(
        <div>
            <NavBar/>
            <div>
                <div className="contenu"><div className="map"><img src="/Images/map.png" alt=""/></div>
                <div className="information">
                    <h1>Cours <span>Mathématique</span></h1>
                    <div className="info">
                       <h5><span>Catégorie :</span> Collége</h5>
                        <h5><span>Thème :</span> Mathématique</h5>
                        <h5><span>Modalités :</span> Offline</h5>
                        <h5><span>Tarif :</span> 50$ par heure</h5> 
                        <h5><span>Lieu :</span> Paris</h5> 
                    
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit
                            , sed do eiusmod tempor incididunt ut labore et dolore magna aliqua
                            . Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                            nisi ut aliquip ex ea commodo consequat
                        </p>
                        <button>participer</button> 
                    </div>

                </div>
                </div>
                <div className="image">
                    <img src="/Images/place1.jpg" />
                    <img src="/Images/place2.jpg" />
                    <img src="/Images/place3.png" />
                    <img src="/Images/place4.jpg" />
                </div>
                <div className="foot"><h2>Annocer <span>information</span></h2></div>
                <div className="contact">
                    <div className="left">
                        <img src="/Images/prof.jpg" />
                        <h5>Baha Lina</h5>
                        <p>prof de math</p>
                    </div>
                    <div className="right">
                        <div class="info_data">
                            <div class="data">
                                <h4>Email</h4>
                                <p>lina@gmail.com</p>
                            </div>
                            <div class="data">
                                <h4>Phone</h4>
                                <p>0001-213-998761</p>
                            </div>
                            <div class="data">
                                <h4>Adresse</h4>
                                <p>1313 Mockingbird Lane</p>
                            </div>
                        </div>
                        <a className="mesg" href="/send">Send message</a>
                    </div>
                </div>
            </div>
        </div>
    )
}
export default Blog