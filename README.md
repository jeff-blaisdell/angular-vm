# Angular-VM

A simple vagrant setup for local Angular development w/ Node.js

## Project Structure

* boxes (contains vagrant vms)
    * local (A vagrant setup for local node development.)
* project (contains a template angular application)

## Getting Started
* From a terminal, navigate to the `boxes/local` folder and execute `vagrant up`.  This will will create an Ubuntu VM w/ some minimal dependencies installed for Node.js development.

* The Vagrant VM is defaulted to 2 GB of RAM.  If you have more RAM available I recommend bumping this number up to make things more snappy.  This can be set within `boxes/local/Vagrantfile`

* After VM has been created run `vagrant ssh` to login to newly created VM.

* Inside VM navigate to `/opt/node-project` and issue the following commands:
    * `npm install` To install all Node.js library dependencies.  This can take awhile - the yo angular generator doesn't shy away from dependencies.
    * `bower install` To install all client side browser dependencies.
    * `grunt serve` To run a simple web server for development.
    * On host machine open a web browser and navigate to `192.168.50.4:9000`
