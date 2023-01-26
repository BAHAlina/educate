import React from "react";
import './new.css'


function New(props){
    return(
        <div className="col-md-3">
            <div className="cadre">
                
                    <i className="fa-regular fa-bell"></i>
				    <h5 className="titre">{props.title}</h5>
				    <div class="pra">
					<p>{props.desc}
                    </p>
                    
                
            </div>
            </div>
        </div>
    )
}
export default New