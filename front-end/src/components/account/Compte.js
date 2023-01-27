import React from "react";
import './acount.css'



function Compte(){
    return(
        <div>
            <section id="Setting-page">
        <div className="Setting">
            <div className="coor">
                <i className="fa fa-cogs" aria-hidden="true"></i>
                <h1>Paramètre de Compte</h1>
                <img src="/Images/profil.jpg" alt=""/>
            </div>
            <div className="form">
                <div className="form-input">
                    <label for="first-name">Nom</label>
                    <input id="first-name" type="text" placeholder="First Name"/>
                </div>
                <div className="form-input">
                    <label for="last-name">Prénom</label>
                    <input id="last-name" type="text" placeholder="Last Name"/>
                </div>
                <div className="form-input">
                    <label for="emai">Email</label>
                    <input id="email" type="email" placeholder="Email"/>
                </div>
                <div className="form-input">
                    <label for="number">Numéro Téléphone</label>
                    <input id="number" type="tel" placeholder="Phone Number"/>
                </div>
                <div className="form-input">
                    <label for="adr">Addesse</label>
                    <input id="adr" type="text" placeholder="Your Addesse"/>
                </div>
                <div className="form-input">
                    <label for="job">Designation</label>
                    <input id="job" type="text" placeholder="Designation"/>
                </div>
            </div>
            <div className="bio">
                <h3>Ma Bio</h3>
                <p>Debra Carroll sait que les étudiants qui réussissent deviennent des adultes qui réussissent. C'est sa 15e année à l'école élémentaire Edison et sa 10e année d'enseignement en quatrième année. Jusqu'à présent, la quatrième année est sa classe préférée pour enseigner! Mme Carroll a été enseignante de l'année du district scolaire unifié de Newell en 2011 et a reçu sa certification du Conseil national en 2013
                </p>
            </div>
            <div className="buttons">
                <a class="orange" href="/acount">Mise a jour</a>
                <a class="white" href="/compte">Annuler</a>
            </div>
        </div>
    </section>
        </div>
    )
}
export default Compte 