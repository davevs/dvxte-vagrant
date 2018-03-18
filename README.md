DVXTE Vagrant box for training
=============================
This is the DVXTE training Vagrant box repository, currently based on Lubuntu (16.04 server).

Install Virtualbox 5.2, Vagrant and at the root of this folder:
Install vagrant reload provisioning tool:
`vagrant plugin install vagrant-reload`

`ENV='other' vagrant up` Creates boxes withOUT the virtualbox guest Extensions and a basebox compatible with  other platforms.

`ENV='vbox' vagrant up` Creates boxes WITH the virtualbox guest Extensions focussed on virtualbox only.

Use the argument `--timestamp`  to see when/how long things are taking.).

When all is done: you have a fully provisioned VM that you can now export or reuse.
