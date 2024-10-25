# SAFEST - the Static And dynamic Fault trEe analySis Tool
## Version: 2.0.0

SAFEST provides modelling and analysis of fault trees and supports both static fault trees (SFT) and dynamic fault trees (DFT).
The tool uses the Storm-dft library of the [Storm modelchecker](https://www.stormchecker.org/) in its backend.

## Prerequisites
1. [Docker](https://www.docker.com/) must be installed on your computer - Docker installation videos are available on youtube for [Windows](https://www.youtube.com/watch?v=ZyBBv1JmnWQ), [Linux](https://www.youtube.com/watch?v=5_EA3rBCXmU) and [macOS](https://www.youtube.com/watch?v=-EXlfSsP49A).

2. Docker must be running – verify it by running the following command in a Terminal or Command Prompt(CMD).
    ```
    docker info 
    ```

## System Requirements
OS: 64-bit Windows 10/11, Linux, MacOS\
Memory: 8GB RAM (Recommended 16GB)\
Storage: 15 GB available space\
Browsers: Google Chrome (Recommended), Firefox

## Running SAFEST on Linux and macOS

### Installation

Step 1: Download the [zip](https://github.com/DGBTechnologies/SAFEST/archive/refs/heads/2.0.0.zip) file, and unzip it.

Step 2: To navigate to the folder, run the following command in the terminal.
```
cd path_to_SAFEST
```
Step 3: To install, run the following command in the terminal.
```
sh install.sh
```

### Start
Step 1: To navigate to the folder, run the following command in the terminal.
```
cd path_to_SAFEST
```
Step 2: To start, run the following command in the terminal.
```
sh start.sh
```
Step 3: Open the link http://127.0.0.1:8080 in a browser window

### Stop
Step 1: To navigate to the folder, run the following command in the terminal.
```
cd path_to_SAFEST
```
Step 2: To stop, run the following command in the terminal.
```
sh stop.sh
```

## Running SAFEST on Windows


### Installation

Step 1: Download the [zip](https://github.com/DGBTechnologies/SAFEST/archive/refs/heads/2.0.0.zip) file, and unzip it.

Step 2: Run install.bat file.


### Start
Step 1: Run start.bat file.

Step 2: Open the link http://127.0.0.1:8080 in a browser window

### Stop
Run stop.bat file.
