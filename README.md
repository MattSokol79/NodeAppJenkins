# Sparta NodeJs Sample App Dev and CI with Jenkins

This repo will be a dev env you can copy and setup by running `vagrant up`.

## Pre-requisites
- Virtual Box
- Vagrant
- Ruby
- Bundler (Testing)

## Instructions & Step by step
1. Clone this repo
2. In terminal/bash, run `vagrant up` in the folder containing Vagrantfile
3. Go to `192.168.10.100` in browser URL to see the site working 
4. Can also see the fibonacci generator on `192.168.10.100/fibonacci/{index}` and posts on `192.168.10.100/posts` 

### Running the tests
Now tests need to be run that confirm the VM is setup correctly and it works.

#### Integration tests
Tests to test that all of the requirements were met whilst inside the VM
```bash
cd tests
bundle install
rake spec
```

#### Unit tests
Testing the build
```bash
cd app/
sudo npm install
npm test
```

