## Concepts

### Preparing for Delta deployment  Steps
- Create a SFDX Project **deltatest**
- Commit the project into git
- Let us see the git commit log
- Let us create 3 classes ```HelloPeach HelloPear, HelloPineapple```
- Let us commit this change into git
- Let us see the git log for these changes
- Using git diff to view the diff between these 2 SHAs fe12d89 and faa2d86
- Let us remove the ```HelloPineapple``` class and commit it into git
- Let us see the git logs
- Let us view the diff between these SHAs faa2d89 and fe12d89
- Let us add the new class HelloMango
- Commit it into git
- Let us view the git log
- Let us run the sgd:source:delta to create package.xml and destructiveChanges.xml


### About the changes you make in the Org UI
 
- In the scratch org add Apex Class **HelloOrange.cls** using UI
- In the scratch org add Apex Class **HelloPineapple.cls** using UI
- Bring down the these additions into local folder by ```source:pull```
- Commit these changes into git 



