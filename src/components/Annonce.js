import React from "react";
import Oannoune from "./Oannonce";


function Annonce(){
    const info=[
        {
            id:1,
            img :'/Images/img1.jpg',
            describtion :'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id:2,
            img :'/Images/img2.jpg',
            describtion :'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
            
        },
        {
            id:3,
            img :'/Images/img3.jpg',
            describtion :'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id : 4,
            img :'/Images/img1.jpg',
            describtion :'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id :5,
            img :'/Images/img2.jpg',
            describtion :'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id:6,
            img :'/Images/img3.jpg',
            describtion :'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id:7,
            img :'/Images/img1.jpg',
            describtion :'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            wilaya:'Bejaia',
            cat:'math',
            blog:'/blog'
        },
        {
            id:8,
            img :'/Images/img2.jpg',
            describtion :'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
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
                    <h5>Filter by</h5>
                    <ul className="by">
                        <li><button>Module</button></li>
                        <li><button>wilaya</button></li>
                        <li><button>Commune</button></li>
                        <li><button>Date</button></li>
                    </ul>
                    <div className="ser">
            
                        <input className="search-bar" type="text" placeholder="Search..."/>
                        
                    
                    </div><div className="btnn"><button><i className="fa-solid fa-magnifying-glass"></i></button></div>
            </div>
            <div className="row">
                {ann}
            </div>
        </div>
        
    )
}
export default Annonce