

https://github.com/dstdev/ansible-roles/tree/cwr_dev

New vars in slurm/defaults/main.yaml 
  - slurm_build_rpms | bool 
  - slurm_rpm_install 
  - slurm source_install 
  - slurm_rpmbuild_user | non-privleged user id  
  - slurm_rpmbuild_user_home | home path + rpmbuild base 
  - slurm_download_url | github or schedmd 
  - slurm_local_repo_name: 
  - slurm_local_repo_host: 
  - slurm_rpm_repo_scp_path: scp command to put rpms on repo  
  - slurm_rpm_final_path: 


New run path when slurm_build_rpms is true 
 
   slurm/tasks/main.yaml
   slurm/tasks/rpmbuild.yaml
     - creates new slurm build user 

   slurm/tasks/install_dev_reqs.yaml 
   slurm/tasks/rpmbuild_pmix.yaml
     - does rpm build - rpms in "{{ slurm_rpmbuild_user_home }}/rpmbuild"
   
   slurm/tasks/rpmbuild_slurm.yaml
     - does rpm build - rpms in "{{ slurm_rpmbuild_user_home }}/rpmbuild"
   
   slurm/tasks/cleanup.yaml"
  
   end_play 

New install method vars: 
slurm_rpm_install and slurm_source_install
slurm_rpm_install and slurm_source_install are mutually exclusive 
slurm_rpm_install will install rpms from local RPM repo 
slurm_source_install follows the existing source install path 

New failure check
the latest version of slurm on the rpm repo must match the stated 
install path on the 

