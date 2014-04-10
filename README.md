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
