# Shell helpers

Some shell scripts for easing life.

## How to use
### Create.sh
From the directory where your projects are run this:

`./create.sh newProjectName -flag`

Where:

`newProjectName` - the name of your local and remote repository (that will be created);  
`-flag` - can be `-b` for Bitbucket or `-g` for GitHub. If neither is passed the empty local folder will be created.

Variables:

`BB_USER` and `BB_PASSWORD` - your username and password from Bitbucket account accordingly.  
`GH_USER` and `GH_PASSWORD` - your username and password from GitHub account accordingly.

Keep in mind that `GH_USER` and `GH_PASSWORD` have to be defined inside single quotes:

```
GH_USER='your_username'  
GH_PASSWORD='your_password'
```

### Create-component.sh
Place this file in the root of your `React` project. Then run it `sh create-component.sh Name -s`, where:

`Name` - the name of the new component and is required;
`-s` - optional argument. It says the script to create stateless component. Without this param the statefull component will be created.
