#!/bin/bash
module load slurm
declare -a zombies
for node in `sinfo -hN | grep -v -E 'down|drain' | awk '{print $1}' | sort -u`
do
        zombies=`ssh $node 'top -b1 -n1 | grep Z'`
        #zombies=$(ssh $node 'ps -ef | grep defunct | grep -v grep')
        if [[ ${#zombies} -gt 0 ]]
        then
                echo $node
                echo "$zombies"
        fi
done

