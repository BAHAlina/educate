import React from "react";
import './acount.css'


function Mdp(){
    return(
        <div>
            <section id="password-settings">
        <div className="settings">
            <div className="coor">
                <i className="fa fa-cogs" aria-hidden="true"></i>
                <h1>Paramètre Du Password</h1>
                <img src="/Images/profil.jpg" alt=""/>
            </div>
            <div className="form">
                <div className="form-input">
                    <label for="user-name">Nom d'utilisateur:</label>
                    <input id="user-name" type="text" placeholder="user-name" />
                </div>
                <div className="form-input">
                    <label for="mot-act">Mot de passe actuel:</label>
                    <input id="mot-act" type="password" placeholder="Mot de passe actuel" />
                </div>
                <div className="form-input">
                    <label for="nv-mot">Nouveau mot de passe:</label>
                    <input id="nv-mot" type="password" placeholder="Nouveau mot de passe"/>
                </div>
                <div className="form-input">
                    <label for="confirmation">Confirmez le mot de passe:</label>
                    <input id="confirmation" type="password" placeholder="confirmation du mot de passe" />
                </div>
                <div className="buttons">
                    <a className="orange" href="/acount">Enregister</a>
                    <a className="white" href="/acount">Retour</a>
                </div>
            </div>
        </div>
    </section>
        </div>
    )
}
export default Mdp