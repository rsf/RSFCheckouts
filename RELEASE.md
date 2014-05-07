To release these artifacts to maven central, this is what I had to do.

- Get an account on OSS by following the guide here
 https://docs.sonatype.org/display/Repository/Sonatype+OSS+Maven+Repository+Usage+Guide
 - Getting an account on their jira
 - Requesting commit on this uk.ponder space
 - Generating a gpg key and pushing it (https://docs.sonatype.org/display/Repository/How+To+Generate+PGP+Signatures+With+Maven)

In your .m2/settings.xml you'll need to be able to commit to this github repo (called rsf-github in the poms), config for the nexus repos and for gpg for sonatype-oss-release (detailed on that web page).

<settings>
    <servers>
        <server>
            <id>rsf-github</id>
            <username></username>
            <password></password>
        </server>

<profiles> 
... (Profile for gpg)

When that's all finally setup you can try to release. Because of the unusual naming I used a ruby script that automated the prompts.

git clone https://github.com/jonespm/maven-release-stuff

Then you have to make sure you have ruby and the gems that it needs. You can run this script from any directory.

For instance I run
rsfgit.sh clone sakai_rsf
cd RSF-POMs
/path/to/maven-release-stuff/release-prepare.rb

It says it's about to release the next version. If it doesn't hang you're good, it does the prepare, then you can do the perform.

If the script freezes, there's some input or something that's it's waiting for.

Check your settings.xml, make sure there are no snapshots.

- What to do if it says there's SNAPSHOTS
I'm not sure if snapshots matters or not, but what I've been doing is editing the properties, removing the -SNAPSHOT, then after the release is done correcting the properties to the correct next version. 

You probably will need to do this.

(TODO: Clarify this as needed)

