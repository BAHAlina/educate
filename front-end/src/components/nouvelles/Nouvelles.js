import React from "react";
import New from "./New";

function Nouvelles(){
    const cadre=[
        { id:1,title:'Cours math',desc:'(Benaziz Hadjira) Bonsoir mes chers eleves , je vous informe que vous aurez demainune seance de 2h avec moi a 11h. Nous allons traiterle cours des Probabilitées.Soyez a l heure et n oubliez pas votre devoir.'},
        { id:2,title:'Cours physique',desc:'(Maloum Djamel) Bonjour a tous j espere que vous allez bien!alors la seance de demain estreportée pour le mardi 31/03/2023.Bien a vous!'},
        { id:3,title:'Cours Hist/Geo',desc:'(Messaoudi Salim) Bonsoir a tous! je vous informe que notre seance de 22/03/2023 sera remplacée par une seance de cours de philo avec madame Kourta.Bonne soirée!'},
        { id:4,title:'Cours math',desc:'(Benyahia Habiba) Bonjour,je tiens a vous informer que la seance de demain est annulée.'},
            
        
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