import React from "react";
import './favor.css'


function Favoris(){
    return(
        <div>
             <a className="rtr" href="/home">retoour</a>
             <div>
                <div className="laliste">
                    <ul>
                        <li><h4>Ma liste</h4></li>
                        <li>Prof</li>
                        <li>lieu</li>
                        <li>Prix</li>
                        <li>Action</li>
                    </ul>
                </div>
                <div className="colm"><div className="imag">
                    <img  src="/Images/img3.jpg"/><p>Cours math</p>
                    <img  src="/Images/img1.jpg"/><p>Cours math</p>
                    <img  src="/Images/place1.jpg"/><p>Cours math</p>
                </div>
                <div className="prof" >
                    <p className="p1">Baha lina</p>
                    <p className="p2">Baha ikram</p>
                    <p className="p3">Baha lokman</p>
                </div>
                <div className="lieu">
                    <p className="p1">Bordj</p>
                    <p className="p2">Setif</p>
                    <p className="p3">Bordj</p>

                </div>
                <div className="prix">
                    <p className="p1">100$</p>
                    <p className="p2">200$</p>
                    <p className="p3">300$</p>
                </div>
                <div className="action">
                    <div className="icon"><img src="/Images/sup.jpg"/></div>
                    <div className="icon"><img src="/Images/sup.jpg"/></div>
                    <div className="icon"><img src="/Images/sup.jpg"/></div>
                </div></div>
             </div>
        </div>
    )
}
export default Favoris