# Not all traceroutes are created equal 
This lab is intended to have two goals:

1. Explore how different traceroute techniques can impact the discovered path
2. Get you accustomed to the environment used throughout the class laboratories

## Requirements

For simplicity of execution, the lab requires the installation of docker, vscode, and wireshark. That being said, these are highly recommended but not strictly required. All source coude is available and everything can be installed from scratch. But in that case, you will be on your own.

## Setting things up

Clone the repository and switch to the downloaded folder:

```bash
git clone https://github.com/wontoniii/traceroutes.git
cd traceroutes
```

Open the folder in vscode:
```bash
code ./
```

At this point, you want to re-open the folder in docker. To do so, invoke vscode's command line (cmd + shift + p in MacOS) and select `Dev Containers: Rebuild and Reopen in Container`. The window should restart and, once ready, you will be ready to develop inside the docker container.

At this point, open the jupyter notebook located in `/home/traceroute_lab/notebooks/traceroute.ipynb` and follow the instructions contained in the file.

## Potential issues

* Depending on your configuration, you might need to select a python kernel. I suggest using the one located in `/usr/bin/`
* If you find more problems, submit a [github issue](https://github.com/wontoniii/traceroutes/issues)

## Submission

To prepare the submission:

1. answer the questions found at the bottom of the notebook, you can do so using the markdown cells;
2. export the notebook in pdf format (DO NOT SUBMIT THE NOTEBOOK ITSELF);
3. upload the generated pdf on the course's portal.

You should submit what you have at the end of the class.
