## Creating the Scratch Org
Just run the setupScratchOrg.sh script, or manually run the commands it contains.  
Be sure to have a [default DevHub](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_cli_usernames_orgs.htm) connected:
* `sfdx force:auth:web:login --setalias MyDevHubAlias --setdefaultdevhubusername`  
* `sfdx force:config:set defaultdevhubusername=MyDevHubAlias`

This can also be done directly from VS Code, opening the Command Palette and using `SFDX: Authorize a Dev Hub`.  
The documentation for Salesforce VS Code extensions is [here](https://forcedotcom.github.io/salesforcedx-vscode/).

## Setup your local environment
You'll need the following tools:
* [GIT](https://git-scm.com/downloads)
* [SFDX CLI](https://developer.salesforce.com/tools/sfdxcli)
* [Texeï sfdx plugin](https://github.com/texei/texei-sfdx-plugin)
    * `sfdx plugins:install texei-sfdx-plugin`
* [VS Code](https://code.visualstudio.com/)
* [Salesforce Extension Pack for VS Code](https://marketplace.visualstudio.com/items?itemName=salesforce.salesforcedx-vscode)


## Issues
A list of issues impacting us is listed [here](/issues.md).