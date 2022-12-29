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
                    <button className="nbr1"><a href={props.blog}>More details</a></button>
                    <button className="save"><img src="/Images/bookmark.png"/></button>
                </div>
            </div>
        </div>
    )
}
export default Oannoune