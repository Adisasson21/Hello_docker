# Hello_Docker

Create a simple python script that write anything you want to display
For example I wanted to display Hello Docker
- <b> vim getPrint.py </b> &emsp; print("Hello Docker") &emsp; #to exit and save do (esc + :wq!) 

Create a Dockerfile that contains all the requirements for the simple script.
- If you used Python packages for your script, you *must* add them to the RUN line.
- <b> vim Dockerfile </b> &emsp; *copy paste Dockerfile*  #(esc + :wq!)
   
---

That's it, we're done with the hard part.
- Let's make our first image. &emsp; #Note: You must be in the Dockerfile's folder otherwise it will say "No such file".
- <b> docker build . -t my-simple-script:v1 </b> &emsp; # The dot indicates that you want to run this (or all) Dockerfile && The -t indicates how you want to name the image
- <b> docker run <my-simple-script:v1> </b> &emsp; # After the word run, we'll mention the name of the image. In case you don't include before the tag, you'll get a random sequence and you need to specify this.

---

If you want to store your image at Docker Hub, follow these steps
- First, we need to register to Docker Hub. (remember your username & password)
- Then come back to the terminal
- <b> docker login </b> &emsp; # Here docker will ask you for the username & password
- <b> docker tag <your_image_name:*see the output from the docker build line> <username>/<your_image_name:*if you want to change the name of the image, do it here*> </b>
- <b> docker push <username>/<your_image_name> </b>
  
 If you are on your Docker Hub, press ctrl+F5 to see your new image.
