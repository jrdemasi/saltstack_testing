#saltstack_testing

This repository contains a simple docker stack with a salt master and two minions (minion1 and minion2).  The salt and pillar directories are bind mounted to /srv/salt and /srv/pillar.  Additionally, there is an empty code directory that also gets bind mounted so you can inject any custom scripts you may want to test.  To apply changes to all minions: `salt '*' state.apply`

## Features
* Support for Linux users and groups with tagging
* All included states have a proper init and files are kept with the state
* `base` env is assumed, but organization supports adding multiple environments easily
* Strong separation of data and code - in production a setup like this allows ops to write logic, and assuming it's fairly well tested, non-ops people can get access to modify the data only to fulfill some of their own requests
