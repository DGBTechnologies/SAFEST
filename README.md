# SAFEST

A graphical interface to interact with storm dft. 


# To run the tool:

Make sure you have already installed docker on your computer and is currently running. 

Supported browsers: Google Chrome

Step 1: Clone the repository.

```
git clone https://github.com/DGBTechnologies/SAFEST.git
```


Step 2: Set the working directory and the license key.

For Linux/Mac OS Terminal:
```
export WORK_DIR=$PWD
export LICENSE_KEY="LICENSE_KEY_STRING"
```

Step 3: Run docker compose file

```
cd SAFEST
docker-compose pull
docker compose down
docker compose up
```

Step 4: Open link 

- http://127.0.0.1:8080

