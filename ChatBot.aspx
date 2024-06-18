<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatBot.aspx.cs" Inherits="demoBot.ChatBot" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Chatbot</title>
    <link href="Content/ChatBot.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Barriecito&family=Cactus+Classical+Serif&family=Caveat:wght@400;700&family=Concert+One&family=Dancing+Script:wght@700&family=Lobster&family=Merriweather&family=Montez&family=Montserrat+Alternates&family=Montserrat:ital,wght@0,400;0,500;0,700;0,800;0,900;1,700;1,800;1,900&family=Pacifico&family=Sacramento&family=Ubuntu:ital,wght@0,400;0,500;1,300&family=Ysabeau+Infant:wght@400;600&display=swap" rel="stylesheet">
    <script src="Scripts/ChatBot.js"></script>

    <style> 
img {
  width: 100px;
  height: 100px;
  background-color: #DAD773;
  border: 2px solid #B1AD25;
  border-radius: 100px;
  padding: 8px;
  position: relative;
  animation-name: example;
  animation-duration: 5s;
  animation-timing-function: linear;
  animation-delay: 2s;
  animation-iteration-count: infinite;
}

@keyframes example {
  0%   {background-color:#DAD773; left:0px; top:0px;}
  25%  {background-color:#B1AD25; left:0px; bottom:200px;}
  50%  {background-color:#DAD773; left:0px; bottom:50px;}
  75%  {background-color:#B1AD25; left:0px; bottom:200px;}
  100% {background-color:#DAD773; left:0px; top:0px;}
}

button {
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    border-radius: 20px;
    background-color: #6675fa;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
}

button {
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    border-radius: 20px;
    background-color: #6675fa;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
}

button:hover {
    background-color: #505ed8;
    transform: scale(1.05);
    box-shadow: 0 0 5px #505ed8, 0 0 10px #505ed8, 0 0 20px #505ed8;
    color: white;
}

</style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="chat-icon" onclick="toggleChat()">
            <img src="imgs/bot.png" alt="Chat Icon"/>
        </div>

        <div class="chat-container" id="chat-container" style="display: none;">
            <div id="chat-box" class="chat-box">
            </div>
            <div class="input-container">
        <input type="text" id="user-input" class="user-input" placeholder="Type your question here..."/>
        <button type="button" onclick="sendMessage(event)">Send</button>
    </div>
        </div>
    </form>
</body>
</html>

