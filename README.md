# isos

Designed to serve up browsable ISO files

Probably need privileged due to using automount

The docker directory /mnt/ISOs is a NFS mount with ISO files in it
etc/smb.conf has the mounts defined
private directory is used to store smbpassword file

    docker run \
       -d \
       -it \
       --name isos \
       --restart=unless-stopped \
       --privileged \
       -v /mnt/ISOs/:/mnt/raw_iso:ro \
       -v ${PWD}/etc/smb.conf:/etc/samba/smb.conf \
       -v ${PWD}/private:/var/lib/samba/private \
       -p 139:139 \
       -p 445:445 \
       martinjohn/isos
