import React from "react";
import './Home.css'

function Home (){
    return(
        <div className="content">
            <div className="ecr">
                <h4>Bienvenus Dans Notre S  ite</h4>
                <h1>Online <span>Education</span></h1>
                <h3>Here we found our annomnement and news</h3>
                <div className="newslatter">
				<form>
					<input type="text"   placeholder="Enter The annocement"/>
					<input type="submit" value="Search"/>
				</form>
			</div>
				
			</div>
		</div>
    )
}
export default Home