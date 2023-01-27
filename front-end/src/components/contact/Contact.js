import React from "react";
import './contact.css'


function Contact(){

    return(
        <div>
            <div className="contacte">
                <div className="contente">
                    <h2>Contact <span>Nous</span></h2>
                </div>
                <div className="coontainer">
                    <div className="contactinfo">
                        <div className="box">
                            <div className="icon"><i class="fa-solid fa-location-dot"></i></div>
                            <div className="texte">
                                <h3>Adresse</h3>
                                <p>4652 Sugar Camp Road, Khellil BordjBouArerridj 550123</p>
                        
                            </div>
                        </div>
                        <div className="box">
                            <div className="icon"><i class="fa-solid fa-phone"></i></div>
                            <div className="texte">
                                <h3>Téléphone</h3>
                                <p>05-55-55-55-55</p>
                        
                            </div>
                        </div>
                        <div className="box">
                            <div className="icon"><i class="fa-regular fa-envelope"></i> </div>
                            <div className="texte">
                                <h3>Email</h3>
                                <p>linabaha@gmail.com</p>
                        
                            </div>
                        </div>
                    </div>
                    <div className="contactform">
                        <div className="forme">
                            <h2>Votre Message</h2>
                            <div className="inputbox">
                                <input type="text" required="required"/>
                                <span>Nom Complet</span>
                            </div>
                            <div className="inputbox">
                                <input type="text" required="required" />
                                <span>Email</span>
                            </div>
                            <div className="inputbox">
                                <textarea required="required"></textarea>
                                <span>Ecrivez votre message ...</span>
                            </div>
                            <div className="inputbox">
                                <input type="submit"  placeholder="envoyer"/>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
export default Contact