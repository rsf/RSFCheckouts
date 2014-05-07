RSFCheckouts
============

Shell scripts to help with the process of checking out buildable versions of RSF projects

All of the RSF projects have had there branches re-arranged so that 

master renamed to the previous branch i.e. 0.7 or 1.2
the 0.8 branch was then renamed to trunk

Now master = trunk, which is where tags and branches will be created from

1. git clone git@github.com:rsf/SakaiRSF
2. git branch -m master 0.7
3. git push origin 0.7
4. git checkout -b 0.8 origin/0.8
5. git branch -m 0.8 master
6. git push origin master -f
7. git push origin :0.8

The current versions stand as:

Some help for release will follow but all of these release correctly to 
sonatype snapshots.

(POM-6 / POM-7-SNAPSHOT)
RSF-POMs 

(1.3.1-SNAPSHOT)
PonderUtilCore 
ServletUtil 

(0.8.1-SNAPSHOT)
RSFUtil 

(8.8.0-SNAPSHOT)
RSFComponents (This currently has test errors and isn't released at the moment)

(These last 2 components depend directly on Sakai so can't be released separately)
SakaiRSF 
SakaiRSFComponents
