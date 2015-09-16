#MemPy September 2015 Presentation
##Setup
A Vagrantfile is included that will setup a virtualbox machine with all of the dependencies required to follow along in the presentation. If you don't have Vagrant, [download it now](http://www.vagrantup.com).
To get started, run the following commands:

1. Download the code from [Github](https://github.com/uom-caeser/mempy-sept2015). If you don't want to use the git command line, download the [zip file](https://github.com/uom-caeser/mempy-sept2015/archive/master.zip) instead.

    ```
    git clone https://github.com/uom-caeser/mempy-sept2015.git
    cd mempy-sept2015
    vagrant up
    ```
2. After Vagrant finishes setting up the machine, log in to it with `vagrant ssh`.
3. in the vagrant machine, run the following commands to move to the workspace directory and start the notebook:

    ```
    cd workspace
    ipython notebook --ip 0.0.0.0 --no-browser
    ```
4. On your host machine, open a web browser and navigate to localhost:8888. You should see the IPython interface.
