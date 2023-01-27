import React from "react";
import './annoce.css'


function Oannoune(props){
    return(
        <div className="col-md-3">
           <div className="card">
                <div className="headcard"><img src={props.img}/></div> 
                <div className="bodycard">
                    <p>{props.describtion}</p>
                    <p><span>Wilaya : </span>{props.wilaya}</p>
                    <p><span>Theme : </span>{props.cat}</p>
                    <a href={props.blog}><button className="nbr1">Voir Plus</button></a>
                    <button className="save"><img src="/Images/bookmark.png"/></button>
                </div>
            </div>
        </div>
    )
}
export default Oannoune