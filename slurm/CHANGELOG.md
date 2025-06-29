

https://github.com/dstdev/ansible-roles/tree/cwr_dev

New vars in slurm/defaults/main.yaml 
  - slurm_build_rpms | bool 
  - slurm_rpmbuild_user | non-privleged user id  
  - slurm_rpmbuild_user_home | home path + rpmbuild base 
  - slurm_download_url | github or schedmd 

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



  