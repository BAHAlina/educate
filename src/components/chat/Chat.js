import React from "react";
import './chat.css'


function Chat(){
    return(
        <div>
            <div className="lien">
                <a href="blog">retour</a>
            </div>
            <div className="tous"><div className="contaainer">
                <div className="header">
                    <h1>Chat</h1>
                </div>
                <div className="body">
                    <p className="message">Hello</p>
                    <p className="message user_message">Hi</p>

                </div>
                <div className="footere">
                    <div className="frm"><input type="text" name="" placeholder="Message" />
                    <button>SEND</button></div>
                </div>
            </div></div>
        </div>
    )
}
export default Chat