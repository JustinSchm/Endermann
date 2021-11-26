# Endermann

    -------------------------------
    This is the ENDERWEB!

    A simple design, but its made with love <3
 
    The "Trust me" Button is a small EasterEgg 
    from our Team, trust me and Click on it, or 
    simply just Copy the Link. 
    It takes you to a funny Dog Clip :D
    -------------------------------

    ______________________________
    
    --README FROM JOBENDERMANN--

    1. Button and html
    2. Dockerfile
    ______________________________

    1. Button and html

    <§DOCTYPE html>
    <§html>
      <§head>
        <§meta charset="utf-8">
        <§title>Welcome to ENDERMANN!</title>
      <§/head>
      <§body>
        <§img src="https://www.bechtle.com/assets/bens/img/brands/logo-bechtle.png">
      <§h1>WELCOME TO ENDERMANN!</h1>
      <§a href="https://www.youtube.com/watch?v=a3Z7zEc7AXQ"> <button>Trust me ;)</button> <a>
      <§/body>
    <§/html>
    ~

    ------------------------------
    (This html was changed so github.com does not display the web design!) 
    (simply remove all the § to get the working html)
    ------------------------------
    _______________________________
      
    2. Dockerfile
    FROM nginx:latest
    ADD index.html /usr/share/nginx/html

    ________________________________
