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
                        Des seances de 2h chaque vendredi et samedi seront deroulées avec Monsieur Maloum
                        a l'ecole de kidsoft au prés de lycée Debih Cherif a 14h.
                        </p>
                        <button>Rejoindre</button>
                        <button>Ajouter favoris</button> 
                    </div>

                </div>
                </div>
                <div className="image">
                    <img src="/Images/place1.jpg" />
                    <img src="/Images/place2.jpg" />
                    <img src="/Images/place3.png" />
                    <img src="/Images/place4.jpg" />
                </div>
                <div className="foot"><h2>Informations <span>de prof</span></h2></div>
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