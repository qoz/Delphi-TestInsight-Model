# Working example of using TestInsight and DUnitX for unit testing in Delphi
Built in Delphi Berlin 10.2


## Requirements:
[TestInsight](https://bitbucket.org/sglienke/testinsight/wiki/Home)
DUnitX: Choose to install with Delphi's installer

## Steps:
Create a new unit : New > Other > DUnit Project
Select checkboxes to create setup, teardown, and tests

### Then used this guide to build this app:
https://parnassus.co/unit-testing-with-testinsight/


## Other Links:

http://docwiki.embarcadero.com/RADStudio/Berlin/en/DUnitX_Overview

https://bitbucket.org/sglienke/testinsight/wiki/Home

https://community.embarcadero.com/index.php/blogs/entry/developer-skill-sprint-unit-testing-with-dunitx

http://delphi.org/2014/02/delphi-unit-testing-tools/


### Further reading
VSoftTechnologies/Delphi-Mocks
https://github.com/VSoftTechnologies/Delphi-Mocks


### Discovered from a google search that 
    Assert.AreEqual 
needs to be 

    Assert.AreEqual<Double> 

to handle double types

https://www.finalbuilder.com/resources/blogs/postid/697/introducing-dunitx


### Misc Links
David Millington's Google +  (developer of TestInsight):
https://plus.google.com/107032218922460039706
