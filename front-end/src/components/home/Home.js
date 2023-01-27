import React from "react";
import './Home.css'

function Home (){
    return(
        <div className="content">
            <div className="ecr">
                <h2>Bienvenus Dans Notre Plateforme <span>Educative</span></h2>
                
                <h3>Rejoingez nous pour decouvrir plus d'informations sur les cours de soutiens!!
                            Cherchez l'annonce</h3>
                <div className="newslatter">
				<form>
					<input type="text"   placeholder="Entrer l'annocement"/>
					<input type="submit" value="Chercher"/>
				</form>
			</div>
				
			</div>
		</div>
    )
}
export default Home