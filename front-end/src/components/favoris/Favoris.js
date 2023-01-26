import React from "react";
import './favor.css'


function Favoris(){
    return(
        <div>
                <a className="rtr" href="/home">retoour</a>
                <section id="fav-page">
                    <div className="nav-bare">
                        <span>Ma Liste</span>
                        <span>Le Prof</span>
                        <span>Le Prix</span>
                        <span>L'action</span>
                    </div>
                    <div className="fav-row">
                        <div>
                             <img src="/Images/img3.jpg" />
                             <p>Mathématique course</p>
                        </div>
                        <p>Baha Lina</p>
                        <span>100$</span>
                        <i class="fa-sharp fa-solid fa-trash"></i>
                    </div>
                    <div className="fav-row">
                        <div>
                            <img src="/Images/img3.jpg" />
                            <p>Mathématique course</p>
                        </div>
                        <p>Baha Lina</p>
                        <span>100$</span>
                        <i class="fa-sharp fa-solid fa-trash"></i>
                    </div>
                    <div className="fav-row">
                        <div>
                             <p>Mathématique course</p>
                             <img src="/Images/img3.jpg" />
                        </div>
                        <p>Baha Lina</p>
                        <span>100$</span>
                        <i class="fa-sharp fa-solid fa-trash"></i>
                    </div>
                    <div className="fav-row">
                        <div>
                             <p>Mathématique course</p>
                             <img src="/Images/img3.jpg" />
                        </div>
                        <p>Baha Lina</p>
                        <span>100$</span>
                        <i class="fa-sharp fa-solid fa-trash"></i>
                    </div>
                </section>
               
        </div>
        
             
             
    )
}
export default Favoris