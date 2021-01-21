## Correr o DRBD

Para cada VM:

  1. `sudo drbdadm up d1`
  2. `sudo drbdadm primary --force d1`
  3. Esperar que estejam sync (`sudo drbdadm status`)
  4. `sudo systemctl restart target`

## Correr os Clusters

Para cada VM:

   1. `sudo systemctl start iscsi`
   2. `sudo iscsiadm -m node` (ver se os nodos aparecem)
     ` sudo iscsiadm --mode node --logoutall=all`
   3. `sudo iscsiadm -m node -l`
   4. Ver se aparece o disco (`sudo lsblk --scsi`)
   5. `sudo systemctl start multipathd`
   6. Ver se multipath esta a dar (`sudo multipath -l`)
   
Apenas na 1ª vez, quando queremos efetuar o setup:

   7. `sudo systemctl stop firewalld `
   8. `sudo systemctl disable firewalld`
   9. `sudo systemctl start pcsd.service`
   10. `sudo systemctl enable pcsd.service`
   11. `sudo systemctl enable corosync`
   12. `sudo systemctl enable pacemaker`
   13. `sudo pcs property set stonith-enabled=false`
   14. `sudo pcs host auth cluster1 cluster2 cluster3`
