# SAFEST - the Static And dynamic Fault trEe analySis Tool
## Version: 1.0.0

SAFEST provides modelling and analysis of fault trees and supports both static fault trees (SFT) and dynamic fault trees (DFT).
The tool uses the Storm-dft library of the [Storm modelchecker](https://www.stormchecker.org/) in its backend.

## Dependencies
Make sure that [Docker](https://www.docker.com/) is installed on your computer and is currently running.
Docker is available for Windows, Linux and macOs.

SAFEST is known to work with the following browsers:
- Google Chrome (Recommended)
- Firefox

Follow the following steps to run SAFEST on [Linux and macOS](#running-safest-on-linux-and-macos) or on [Windows](#running-safest-on-windows).


## Running SAFEST on Linux and macOS
<p style="color:red;">It should be noted that the new version of the SAFEST tool will not automatically upload the previous version's existing project. Before installing the new version, please export the existing project.</p>


Step 1: Clone the repository.

```
git clone --branch 1.0.0 https://github.com/DGBTechnologies/SAFEST.git
```

Step 2: Make sure that Docker is running.

Step 3: Open a terminal and navigate into the SAFEST directory
```
cd path/to/SAFEST
```

Step 4: Download all necessary docker containers for SAFEST.
This step might take a while.
```
docker-compose pull
```

Step 5: Start SAFEST
```
docker compose down
docker compose up
```

Step 6: Open the link in a web-browser.
- http://127.0.0.1:8080



### To stop SAFEST 
```
cd path/to/SAFEST
docker compose down
```

### To rerun SAFEST 

Step 1:

```
cd path/to/SAFEST
docker compose down
docker compose up
```

Step 2: Open the link in a web-browser.
- http://127.0.0.1:8080




## Running SAFEST on Windows

Step 1: Download the repository and extract it to a folder.

Step 2: Make sure that Docker is running.

Step 3: Open the Windows command prompt and navigate into the SAFEST directory
```
cd path/to/SAFEST
```

Step 4: Download all necessary docker containers for SAFEST.
This step might take a while.
```
docker-compose pull
```

Step 5: Start SAFEST
```
docker compose down
docker compose up
```

Step 6: Open the link in a web-browser.
- http://127.0.0.1:8080

### To stop SAFEST 
```
cd path/to/SAFEST
docker compose down
```

### To rerun SAFEST 

Step 1:

```
cd path/to/SAFEST
docker compose down
docker compose up
```

Step 2: Open the link in a web-browser.
- http://127.0.0.1:8080