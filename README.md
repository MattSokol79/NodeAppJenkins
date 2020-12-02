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

### Merging with Jenkins
- If you are working on a specific branch -> you might want to automatically test your work with Jenkins to ensure the project works as intended. 
- Then, if all tests pass, we probably want to merge into main:
  - Ensure the `Branches to build` -> `*/dev-env` in Jenkins so it listens to your branch, not main
  - If tests pass e.g. 
```bash
cd app/
sudo npm install
npm test
```
  - `Post-build Actions` -> Choose `Git Publisher` 
    - Push only if build succeeds
    - Force push
    - Branches -> `main`
    - Target remote name -> `origin`
- Now once the `dev-env` branch pushes anything, Jenkins will automatically test the build to make sure the code still works, and once all tests pass -> Pushes to main branch

**this is in the dev-env branch -> testing with jenkins**
**Testing for Filipe**