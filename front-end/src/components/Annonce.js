import React from "react";
import Oannoune from "./Oannonce";


function Annonce(){
    const info=[
        {
            id:1,
            img :'/Images/img1.jpg',
            describtion :'Rejoignez les bac cours de math avec monsieurs Abdelhamid Smail ',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id:2,
            img :'/Images/img2.jpg',
            describtion :'Rejoignez les bac cours de math avec monsieurs Abdelhamid Smail ',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
            
        },
        {
            id:3,
            img :'/Images/img3.jpg',
            describtion :'Rejoignez les bac cours de math avec monsieurs Abdelhamid Smail ',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id : 4,
            img :'/Images/img1.jpg',
            describtion :'Rejoignez les bac cours de math avec monsieurs Abdelhamid Smail ',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id :5,
            img :'/Images/img2.jpg',
            describtion :'Rejoignez les bac cours de math avec monsieurs Abdelhamid Smail ',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id:6,
            img :'/Images/img3.jpg',
            describtion :'Rejoignez les bac cours de math avec monsieurs Abdelhamid Smail ',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id:7,
            img :'/Images/img1.jpg',
            describtion :'Rejoignez les bac cours de math avec monsieurs Abdelhamid Smail ',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id:8,
            img :'/Images/img2.jpg',
            describtion :'Rejoignez les bac cours de math avec monsieurs Abdelhamid Smail  ',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        }, 
    ]
    const ann= info.map(function(anno){
        return<Oannoune 
                img={anno.img}
                describtion={anno.describtion}
                wilaya={anno.wilaya}
                cat={anno.cat}
                blog={anno.blog}
        />

        
    })
    return(
        <div >
            <div className="titrre">
                <div className="ann"> Annonce<span>ment</span></div>
               
                
            </div>
            <div className="filter">
                    <h5>Filtrez par</h5>
                    <ul className="by">
                        <li><button>Module</button></li>
                        <li><button>wilaya</button></li>
                        <li><button>Commune</button></li>
                        <li><button>Date</button></li>
                    </ul>
                    <a className="add" href="https://docs.google.com/forms/d/e/1FAIpQLSfRYARXPjoz9hUDaDLQTYqwhHenUCl0iEaVxaVZCfsS7DUlnw/viewform?embedded=true"><button><i class="fa-sharp fa-solid fa-plus"></i></button></a>
                    <div className="ser">
            
                        <input className="search-bar" type="text" placeholder="Cherecher..."/>
                        
                    
                    </div><div className="btnn"><button><i className="fa-solid fa-magnifying-glass"></i></button></div>
            </div>
            <div className="row">
                {ann}
            </div>
        </div>
        
    )
}
export default Annonce