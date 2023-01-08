```
~  >sfdx force:project:create -n deltatest
target dir = /Users/mchinnappan
   create deltatest/config/project-scratch-def.json
   create deltatest/README.md
   create deltatest/sfdx-project.json
   create deltatest/.husky/pre-commit
   create deltatest/.vscode/extensions.json
   create deltatest/.vscode/launch.json
   create deltatest/.vscode/settings.json
   create deltatest/force-app/main/default/lwc/.eslintrc.json
   create deltatest/force-app/main/default/aura/.eslintrc.json
   create deltatest/scripts/soql/account.soql
   create deltatest/scripts/apex/hello.apex
   create deltatest/.eslintignore
   create deltatest/.forceignore
   create deltatest/.gitignore
   create deltatest/.prettierignore
   create deltatest/.prettierrc
   create deltatest/jest.config.js
   create deltatest/package.json

~  >cd deltatest 
~/deltatest  >git init .
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /Users/mchinnappan/deltatest/.git/
~/deltatest [master] >git branch -m main
~/deltatest [main] >git add -A
~/deltatest [main] >git commit -m init
[main (root-commit) fe12d89] init
 18 files changed, 255 insertions(+)
 create mode 100644 .eslintignore
 create mode 100755 .forceignore
 create mode 100644 .gitignore
 create mode 100755 .husky/pre-commit
 create mode 100755 .prettierignore
 create mode 100755 .prettierrc
 create mode 100644 .vscode/extensions.json
 create mode 100644 .vscode/launch.json
 create mode 100644 .vscode/settings.json
 create mode 100644 README.md
 create mode 100644 config/project-scratch-def.json
 create mode 100644 force-app/main/default/aura/.eslintrc.json
 create mode 100644 force-app/main/default/lwc/.eslintrc.json
 create mode 100644 jest.config.js
 create mode 100644 package.json
 create mode 100644 scripts/apex/hello.apex
 create mode 100644 scripts/soql/account.soql
 create mode 100644 sfdx-project.json
~/deltatest [main] >git log --one-line
fatal: unrecognized argument: --one-line
~/deltatest [main] >git log --help    
~/deltatest [main] >vi ~/.gitconfig 
~/deltatest [main] >git lg 
* fe12d89 - (59 seconds ago) init - mohan-chinnappan-n (HEAD -> main)
~/deltatest [main] >!
~/deltatest [main] >!v
vi ~/.gitconfig
~/deltatest [main] >git tree       
* fe12d89 (HEAD -> main) init
~/deltatest [main] >git lg2        
* fe12d89 - Sun, 8 Jan 2023 12:59:54 -0500 (2 minutes ago) (HEAD -> main)
            init - mohan-chinnappan-n
~/deltatest [main] >git lg3
* fe12d89 - Sun, 8 Jan 2023 12:59:54 -0500 (2 minutes ago) (committed: Sun, 8 Jan 2023 12:59:54 -0500)  (HEAD -> main)
            init
            - mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>  (committer: mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>)
~/deltatest [main] >sfdx force:org:create -s -f config/project-scratch-def.json -a deltatest          
ERROR running force:org:create:  request to https://mohansun-ea-02-dev-ed.my.salesforce.com/services/data/v56.0/sobjects/ScratchOrgInfo failed, reason: getaddrinfo ENOTFOUND mohansun-ea-02-dev-ed.my.salesforce.com
~/deltatest [main] >code .
~/deltatest [main] >sfdx force:create -h
 ›   Error: Command force:create not found.
~/deltatest [main] >sfdx force -h       
USAGE
  $ sfdx force [--json] [--loglevel trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL]

FLAGS
  --json                                                                            format output as json
  --loglevel=(trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL)  [default: warn] logging level for this command invocation

TOPICS
  force analytics       work with analytics assets
  force apex            work with Apex code
  force cmdt            create and update custom metadata types and their records
  force community       create and publish an Experience Cloud site
  force data            manipulate records in your org
  force lightning       create Aura components and Lightning web components
  force limits          display current org’s limits
  force mdapi           retrieve and deploy metadata using Metadata API
  force org             manage your orgs
  force package         develop and install packages
  force package1        develop first-generation managed and unmanaged packages
  force project         set up a Salesforce DX project
  force schema          view standard and custom objects
  force source          sync your project with your orgs
  force staticresource
  force user            commands that perform user-related admin tasks
  force visualforce     create and edit Visualforce files

~/deltatest [main] >sfdx force:apex -h
work with Apex code

USAGE
  $ sfdx force apex COMMAND

TOPICS
  force apex class    create an Apex class
  force apex log      generate and retrieve Apex logs
  force apex test     work with Apex tests
  force apex trigger  create an Apex trigger

COMMANDS
  force apex execute  executes anonymous Apex code

~/deltatest [main] >sfdx force:apex:class -h
create an Apex class

USAGE
  $ sfdx force apex class COMMAND

DESCRIPTION
  If not supplied, the apiversion, template, and outputdir use default values.
  The outputdir can be an absolute path or relative to the current working directory.


COMMANDS
  force apex class create  create an Apex class

~/deltatest [main] >sfdx force:apex:class:create -h
create an Apex class

USAGE
  $ sfdx force apex class create -n <string> [-t <string>] [-d <string>] [--apiversion <string>] [--json] [--loglevel
    trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL]

FLAGS
  -d, --outputdir=<value>                                                           [default: .] folder for saving the created files
  -n, --classname=<value>                                                           (required) name of the generated Apex class
  -t, --template=<option>                                                           [default: DefaultApexClass] template to use for file creation
                                                                                    <options:
                                                                                    ApexException|ApexUnitTest|DefaultApexClass|InboundEmailService>
  --apiversion=<value>                                                              override the api version used for api requests made by this
                                                                                    command
  --json                                                                            format output as json
  --loglevel=(trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL)  [default: warn] logging level for this command invocation

~/deltatest [main] >sfdx force:apex:class:create -n HelloApple
target dir = /Users/mchinnappan/deltatest
   create HelloApple.cls
   create HelloApple.cls-meta.xml

~/deltatest [main] >sfdx force:apex:class:create -n HelloPear 
target dir = /Users/mchinnappan/deltatest
   create HelloPear.cls
   create HelloPear.cls-meta.xml

~/deltatest [main] >sfdx force:apex:class:create -n HelloPeach
target dir = /Users/mchinnappan/deltatest
   create HelloPeach.cls
   create HelloPeach.cls-meta.xml

~/deltatest [main] >ls
HelloApple.cls		HelloPeach.cls-meta.xml	README.md		jest.config.js		sfdx-project.json
HelloApple.cls-meta.xml	HelloPear.cls		config			package.json
HelloPeach.cls		HelloPear.cls-meta.xml	force-app		scripts
~/deltatest [main] >rm *.cls
~/deltatest [main] >sfdx force:apex:class:create -n HelloPeach -d force-app/main/default/classes         
target dir = /Users/mchinnappan/deltatest/force-app/main/default/classes
   create force-app/main/default/classes/HelloPeach.cls
   create force-app/main/default/classes/HelloPeach.cls-meta.xml

~/deltatest [main] >sfdx force:apex:class:create -n HelloPear -d force-app/main/default/classes
target dir = /Users/mchinnappan/deltatest/force-app/main/default/classes
   create force-app/main/default/classes/HelloPear.cls
   create force-app/main/default/classes/HelloPear.cls-meta.xml

~/deltatest [main] >sfdx force:apex:class:create -n HelloPineapple -d force-app/main/default/classes
target dir = /Users/mchinnappan/deltatest/force-app/main/default/classes
   create force-app/main/default/classes/HelloPineapple.cls
   create force-app/main/default/classes/HelloPineapple.cls-meta.xml

~/deltatest [main] >git add -A
~/deltatest [main] >git commit -m '3 fruit classes added'
[main faa2d86] 3 fruit classes added
 9 files changed, 46 insertions(+)
 create mode 100644 HelloApple.cls-meta.xml
 create mode 100644 HelloPeach.cls-meta.xml
 create mode 100644 HelloPear.cls-meta.xml
 create mode 100644 force-app/main/default/classes/HelloPeach.cls
 create mode 100644 force-app/main/default/classes/HelloPeach.cls-meta.xml
 create mode 100644 force-app/main/default/classes/HelloPear.cls
 create mode 100644 force-app/main/default/classes/HelloPear.cls-meta.xml
 create mode 100644 force-app/main/default/classes/HelloPineapple.cls
 create mode 100644 force-app/main/default/classes/HelloPineapple.cls-meta.xml
~/deltatest [main] >git lg3                                                                         
* faa2d86 - Sun, 8 Jan 2023 13:08:07 -0500 (12 seconds ago) (committed: Sun, 8 Jan 2023 13:08:07 -0500)  (HEAD -> main)
|           3 fruit classes added
|           - mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>  (committer: mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>)
* fe12d89 - Sun, 8 Jan 2023 12:59:54 -0500 (8 minutes ago) (committed: Sun, 8 Jan 2023 12:59:54 -0500) 
            init
            - mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>  (committer: mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>)
~/deltatest [main] >git diff fe12d89...faa2d86
diff --git a/HelloApple.cls-meta.xml b/HelloApple.cls-meta.xml
new file mode 100644
index 0000000..be44ae9
--- /dev/null
+++ b/HelloApple.cls-meta.xml
@@ -0,0 +1,5 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
+    <apiVersion>55.0</apiVersion>
+    <status>Active</status>
+</ApexClass>
\ No newline at end of file
diff --git a/HelloPeach.cls-meta.xml b/HelloPeach.cls-meta.xml
new file mode 100644
index 0000000..be44ae9
--- /dev/null
+++ b/HelloPeach.cls-meta.xml
@@ -0,0 +1,5 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
+    <apiVersion>55.0</apiVersion>
+    <status>Active</status>
+</ApexClass>
\ No newline at end of file
diff --git a/HelloPear.cls-meta.xml b/HelloPear.cls-meta.xml
new file mode 100644
index 0000000..be44ae9
--- /dev/null
+++ b/HelloPear.cls-meta.xml
@@ -0,0 +1,5 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
+    <apiVersion>55.0</apiVersion>
+    <status>Active</status>
+</ApexClass>
\ No newline at end of file
diff --git a/force-app/main/default/classes/HelloPeach.cls b/force-app/main/default/classes/HelloPeach.cls
new file mode 100644
index 0000000..0a288b0
--- /dev/null
+++ b/force-app/main/default/classes/HelloPeach.cls
@@ -0,0 +1,6 @@
+public with sharing class HelloPeach {
+    public HelloPeach() {
+        
+
+    }
+}
\ No newline at end of file
diff --git a/force-app/main/default/classes/HelloPeach.cls-meta.xml b/force-app/main/default/classes/HelloPeach.cls-meta.xml
new file mode 100644
index 0000000..be44ae9
--- /dev/null
+++ b/force-app/main/default/classes/HelloPeach.cls-meta.xml
@@ -0,0 +1,5 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
+    <apiVersion>55.0</apiVersion>
+    <status>Active</status>
+</ApexClass>
\ No newline at end of file
diff --git a/force-app/main/default/classes/HelloPear.cls b/force-app/main/default/classes/HelloPear.cls
new file mode 100644
index 0000000..37c7ec3
--- /dev/null
+++ b/force-app/main/default/classes/HelloPear.cls
@@ -0,0 +1,5 @@
+public with sharing class HelloPear {
+    public HelloPear() {
+
+    }
+}
\ No newline at end of file
diff --git a/force-app/main/default/classes/HelloPear.cls-meta.xml b/force-app/main/default/classes/HelloPear.cls-meta.xml
new file mode 100644
index 0000000..be44ae9
--- /dev/null
+++ b/force-app/main/default/classes/HelloPear.cls-meta.xml
@@ -0,0 +1,5 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
+    <apiVersion>55.0</apiVersion>
+    <status>Active</status>
+</ApexClass>
\ No newline at end of file
diff --git a/force-app/main/default/classes/HelloPineapple.cls b/force-app/main/default/classes/HelloPineapple.cls
new file mode 100644
index 0000000..0107b0c
--- /dev/null
+++ b/force-app/main/default/classes/HelloPineapple.cls
@@ -0,0 +1,5 @@
+public with sharing class HelloPineapple {
+    public HelloPineapple() {
+
+    }
+}
\ No newline at end of file
diff --git a/force-app/main/default/classes/HelloPineapple.cls-meta.xml b/force-app/main/default/classes/HelloPineapple.cls-meta.xml
new file mode 100644
index 0000000..be44ae9
--- /dev/null
+++ b/force-app/main/default/classes/HelloPineapple.cls-meta.xml
@@ -0,0 +1,5 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
+    <apiVersion>55.0</apiVersion>
+    <status>Active</status>
+</ApexClass>
\ No newline at end of file
~/deltatest [main] >git add -A                           
~/deltatest [main] >git commit -m 'pineapple fruit classes removed'
[main 171a81a] pineapple fruit classes removed
 2 files changed, 10 deletions(-)
 delete mode 100644 force-app/main/default/classes/HelloPineapple.cls
 delete mode 100644 force-app/main/default/classes/HelloPineapple.cls-meta.xml
~/deltatest [main] >git lg3                                        
* 171a81a - Sun, 8 Jan 2023 13:10:14 -0500 (4 seconds ago) (committed: Sun, 8 Jan 2023 13:10:14 -0500)  (HEAD -> main)
|           pineapple fruit classes removed
|           - mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>  (committer: mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>)
* faa2d86 - Sun, 8 Jan 2023 13:08:07 -0500 (2 minutes ago) (committed: Sun, 8 Jan 2023 13:08:07 -0500) 
|           3 fruit classes added
|           - mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>  (committer: mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>)
* fe12d89 - Sun, 8 Jan 2023 12:59:54 -0500 (10 minutes ago) (committed: Sun, 8 Jan 2023 12:59:54 -0500) 
            init
            - mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>  (committer: mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>)
~/deltatest [main] >git diff faa2d89...fe12d89                     
fatal: ambiguous argument 'faa2d89...fe12d89': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'
~/deltatest [main] >git diff faa2d86...fe12d89
~/deltatest [main] >git diff faa2d86..fe12d89 
diff --git a/HelloApple.cls-meta.xml b/HelloApple.cls-meta.xml
deleted file mode 100644
index be44ae9..0000000
--- a/HelloApple.cls-meta.xml
+++ /dev/null
@@ -1,5 +0,0 @@
-<?xml version="1.0" encoding="UTF-8"?>
-<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
-    <apiVersion>55.0</apiVersion>
-    <status>Active</status>
-</ApexClass>
\ No newline at end of file
diff --git a/HelloPeach.cls-meta.xml b/HelloPeach.cls-meta.xml
deleted file mode 100644
index be44ae9..0000000
--- a/HelloPeach.cls-meta.xml
+++ /dev/null
@@ -1,5 +0,0 @@
-<?xml version="1.0" encoding="UTF-8"?>
-<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
-    <apiVersion>55.0</apiVersion>
-    <status>Active</status>
-</ApexClass>
\ No newline at end of file
diff --git a/HelloPear.cls-meta.xml b/HelloPear.cls-meta.xml
deleted file mode 100644
index be44ae9..0000000
--- a/HelloPear.cls-meta.xml
+++ /dev/null
@@ -1,5 +0,0 @@
-<?xml version="1.0" encoding="UTF-8"?>
-<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
-    <apiVersion>55.0</apiVersion>
-    <status>Active</status>
~/deltatest [main] >git lg3                   
* 171a81a - Sun, 8 Jan 2023 13:10:14 -0500 (69 seconds ago) (committed: Sun, 8 Jan 2023 13:10:14 -0500)  (HEAD -> main)
|           pineapple fruit classes removed
|           - mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>  (committer: mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>)
* faa2d86 - Sun, 8 Jan 2023 13:08:07 -0500 (3 minutes ago) (committed: Sun, 8 Jan 2023 13:08:07 -0500) 
|           3 fruit classes added
|           - mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>  (committer: mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>)
* fe12d89 - Sun, 8 Jan 2023 12:59:54 -0500 (11 minutes ago) (committed: Sun, 8 Jan 2023 12:59:54 -0500) 
            init
            - mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>  (committer: mohan-chinnappan-n <mohan.chinnappan.n@gmail.com>)
~/deltatest [main] >git diff 171a81a..faa2d86
diff --git a/force-app/main/default/classes/HelloPineapple.cls b/force-app/main/default/classes/HelloPineapple.cls
new file mode 100644
index 0000000..0107b0c
--- /dev/null
+++ b/force-app/main/default/classes/HelloPineapple.cls
@@ -0,0 +1,5 @@
+public with sharing class HelloPineapple {
+    public HelloPineapple() {
+
+    }
+}
\ No newline at end of file
diff --git a/force-app/main/default/classes/HelloPineapple.cls-meta.xml b/force-app/main/default/classes/HelloPineapple.cls-meta.xml
new file mode 100644
index 0000000..be44ae9
--- /dev/null
+++ b/force-app/main/default/classes/HelloPineapple.cls-meta.xml
@@ -0,0 +1,5 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
+    <apiVersion>55.0</apiVersion>
+    <status>Active</status>
+</ApexClass>
\ No newline at end of file
~/deltatest [main] >sfdx sdg:delta -h
^C
~/deltatest [main] >sfdx plugins
@salesforce/sfdx-scanner 3.7.1
covai 0.0.1 (link) /Users/mchinnappan/sfdx-plugin-dev/covai
etcopydata 2.1.1
sfdmu 4.20.0
sfdx-git-delta 5.8.0
sfdx-mdt-plugin 0.6.2
sfdx-mohanc-plugins 0.0.222 (link) /Users/mchinnappan/sfdx-mohanc-plugins
~/deltatest [main] >sfdx sgd --help
Generate the sfdx content in source format and destructive change from two git commits

USAGE
  $ sfdx sgd COMMAND

TOPICS
  sgd source  Generate the sfdx content in source format and destructive change from two git commits

~/deltatest [main] >sfdx sgd:source --help
Generate the sfdx content in source format and destructive change from two git commits

USAGE
  $ sfdx sgd source COMMAND

COMMANDS
  sgd source delta  Generate the sfdx content in source format and destructive change from two git commits

~/deltatest [main] >sfdx sgd:source:delta --help
Generate the sfdx content in source format and destructive change from two git commits

USAGE
  $ sfdx sgd source delta -f <string> [-t <string>] [-r <filepath>] [-i <filepath>] [-D <filepath>] [-s <filepath>] [-W] [-o <filepath>] [-a
    <number>] [-d] [-n <filepath>] [-N <filepath>] [--json] [--loglevel trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL]

FLAGS
  -D, --ignore-destructive=<value>                                                  file listing paths to explicitly ignore for any destructive
                                                                                    actions
  -N, --include-destructive=<value>                                                 file listing paths to explicitly include for any destructive
                                                                                    actions
  -W, --ignore-whitespace                                                           ignore git diff whitespace (space, tab, eol) changes
  -a, --api-version=<value>                                                         salesforce metadata API version, default to sfdx-project.json
                                                                                    "sourceApiVersion" attribut or latest version
  -d, --generate-delta                                                              generate delta files in [--output] folder
  -f, --from=<value>                                                                (required) commit sha from where the diff is done [git rev-list
                                                                                    --max-parents=0 HEAD]
  -i, --ignore=<value>                                                              file listing paths to explicitly ignore for any diff actions
  -n, --include=<value>                                                             file listing paths to explicitly include for any diff actions
  -o, --output=<value>                                                              [default: ./output] source package specific output
  -r, --repo=<value>                                                                [default: .] git repository location
  -s, --source=<value>                                                              [default: .] source folder focus location related to --repo
  -t, --to=<value>                                                                  [default: HEAD] commit sha to where the diff is done
  --json                                                                            format output as json
  --loglevel=(trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL)  [default: warn] logging level for this command invocation

DESCRIPTION
  Generate the sfdx content in source format and destructive change from two git commits

~/deltatest [main] >sfdx sgd:source:delta -f fe12d89 -t 171a81a -d -o .
{
  "error": null,
  "output": ".",
  "success": true,
  "warnings": []
}
~/deltatest [main] >tree package
package
└── package.xml

0 directories, 1 file
~/deltatest [main] >cat package/package.xml 
<?xml version="1.0" encoding="UTF-8"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
    <types>
        <members>HelloPeach</members>
        <members>HelloPear</members>
        <name>ApexClass</name>
    </types>
    <version>55.0</version>
</Package>%                                                                                                                                          ~/deltatest [main] >tree destructiveChanges/destructiveChanges.xml 
destructiveChanges/destructiveChanges.xml [error opening dir]

0 directories, 0 files
~/deltatest [main] >tree destructiveChanges                       
destructiveChanges
├── destructiveChanges.xml
└── package.xml

0 directories, 2 files
~/deltatest [main] >cat destructiveChanges/destructiveChanges.xml 
<?xml version="1.0" encoding="UTF-8"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
    <version>55.0</version>
</Package>%                                                                                                                                          ~/deltatest [main] >cat destructiveChanges/package.xml           
<?xml version="1.0" encoding="UTF-8"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
    <version>55.0</version>
</Package>%                                                                                                                                          ~/deltatest [main] >git lg
* 171a81a - (7 minutes ago) pineapple fruit classes removed - mohan-chinnappan-n (HEAD -> main)
* faa2d86 - (9 minutes ago) 3 fruit classes added - mohan-chinnappan-n
* fe12d89 - (17 minutes ago) init - mohan-chinnappan-n
~/deltatest [main] >sfdx sgd:source:delta -f faa2d86 -t 171a81a -d -o .
{
  "error": null,
  "output": ".",
  "success": true,
  "warnings": []
}
~/deltatest [main] >cat destructiveChanges/package.xml                 
<?xml version="1.0" encoding="UTF-8"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
    <version>55.0</version>
</Package>%                                                                                                                                          ~/deltatest [main] >cat destructiveChanges/destructiveChanges.xml 
<?xml version="1.0" encoding="UTF-8"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
    <types>
        <members>HelloPineapple</members>
        <name>ApexClass</name>
    </types>
    <version>55.0</version>
</Package>%                                                                                                                                          ~/deltatest [main] >ls                                           
HelloApple.cls-meta.xml	HelloPear.cls-meta.xml	config			force-app		package			scripts
HelloPeach.cls-meta.xml	README.md		destructiveChanges	jest.config.js		package.json		sfdx-project.json
~/deltatest [main] >cat package/package.xml 
<?xml version="1.0" encoding="UTF-8"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
    <version>55.0</version>
</Package>%                                                                                                                                          ~/deltatest [main] >
```
