# Usage: 

if [ $# != 2 ]; then
    echo "Usage: rsfgit clone [rsf_core|sakai_rsf]"
    exit -1;
fi

rsf_core=('PonderUtilCore' 'ServletUtil' 'RSFUtil' 'RSFComponents');
sakai_rsf=("${rsf_core[@]}" 'SakaiRSF' 'SakaiRSFSamples');
echo ${sakai_rsf[@]};

if [ $1 = 'clone' ];
then    echo 'clone';
    eval libarray=(\${$2[@]});
    for (( i=0; i<${#libarray[@]}; i++)); do
        projname=${libarray[${i}]};
        echo ${projname};
        git clone "git@github.com:rsf/${projname}.git"
    done
fi