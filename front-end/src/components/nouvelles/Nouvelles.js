import React from "react";
import New from "./New";

function Nouvelles(){
    const cadre=[
        { id:1,title:'Cours math',desc:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'},
        { id:2,title:'Cours phys',desc:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'},
        { id:3,title:'Rempacement',desc:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'},
        { id:4,title:'Annulation',desc:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'},
            
        
    ]
    const news= cadre.map(function(neews){
        return<New
                title={neews.title}
                desc={neews.desc}
        />
    })
    return(
        <div>
            <div className="nouv">Nouve<span>lles</span></div>
            <div className="row">
                {news}
            </div>

        </div>
    )
}
export default Nouvelles