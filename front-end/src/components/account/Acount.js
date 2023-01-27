import React from "react";
import './acount.css'



function Acount(){
    return(
        <div>
                <section id="my-account">
         <div className="account">
            <div className="setting">
                <img src="/Images/profil.jpg" alt=""/>
                <h1>Sarah Aitsaid</h1>
                <a href="/home">Acceuil</a> 
            </div>
            <div className="account-links">
                <div className="link">
                    <i className="fa fa-user-circle" aria-hidden="true"></i>
                    <a href="/compte">Mon Compte</a>
                </div>
                <hr/>
                <div className="link">
                    <i className="fa fa-key" aria-hidden="true"></i>
                    <a href="/mdp">Mot de passe</a>
                </div>
                <hr/>
                <div className="link">
                    <i className="fa fa-heart" aria-hidden="true"></i>
                    <a href="enr">Mes favoris</a>
                </div>
               
                <hr/>
                <div className="link">
                    <i className="fa fa-comments" aria-hidden="true"></i>
                    <a href="/send">Les messages</a>
                </div>
                <hr/>
                <div className="link">
                    <i className="fa fa-sign-out" aria-hidden="true"></i>
                    <a href="/">Déconnecté</a>
                </div>
                
               
            </div>
            

         </div>
         
    </section>
        </div>
    )
}
export default Acount