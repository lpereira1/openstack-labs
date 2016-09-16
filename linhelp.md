##Common Linux commands

CHOWN   chown -options user:group file
        `chown -R   root:root   /var/www/index.php`

CHMOD   chmod options permissions filename
        numeric mode:  r-w-x in octal notation
          `chmod   777      foo.sh`
          `chmod   ugo+rwx  foo.sh`
          `chmod   a+rwx    foo.sh`
        symbolic mode ugoa <+ or -> rwxXst
         r Read
         w Write
         x Execute (or access for directories)
         X OK to Execute if the file is a directory
         s Set user or group ID on execution
         t Save program text on swap device
         u User
         g Group
         o Other

CHGRP   chgrp <-options> <group>  <file or dir>
         `-R Recursive`

CP      cp <-options> <from>   <to>
        `cp     -r     /somedir/*     /anotherdir`
        -n no clobber (do not overwrite)
        -r recursive
        -u update (overwrite if file is newer)

SCP     scp -options  <FROM>                   <TO>
        scp -options  <file or dir>            <user@host:/remote-dir>
        scp -options  <user@host:/remote-dir>  <local fle or dir>

GROUPS  groups (lists all groups)

RSYNC   rsync   -options   <from>   <to>
        rsync -av  ~/  user@192.168.10.10:/somedirectory
         -v : verbose
         -r : copies data recursively (but don’t preserve timestamps and permission while transferring data
         -a : archive mode, archive mode allows copying files recursively and it also  preserves symbolic links,
              file permissions, user & group ownerships and timestamps
         -z : compress file data

TAR     tar  <-options>  <tarfile>    <file-or-dir-to-tar-or-untar>
        Same format to TAR or "UNTAR",  the difference is -c for create or -x for extract

        "TAR"   tar -cvzf    <to>                <from>
                tar -cvzf     file.tar.gz        /source/file/or/dir

        "UNTAR" tar -zxvf    <to>                <from>
                tar -xvzf    file.tar.gz     -C  /dest/file/or/dir/
                 -c  Creates a new .tar archive file.
                 -v  Verbosely show the .tar file progress.
                 -z  zip or unzip the file
                 -f  File name type of the archive file.
                 -x  Extract.
                 -C (specified directory). Extract in specified directory

FIND    find [pathname] [expression]
        find  /etc  -name filename

GREP    grep [options] pattern [filesname]
        grep -Ir "Needle in a Haystack"  /etc/*
         -I Ignore care
         -r recursive

LESS    less <filesname>  Like "more" but allows scrolling

SSH     ssh <SSH-URI>             Note SSH URI = user@domain    Note: socket format =  IPaddress:port
        ssh user@domain
         -l  login name
         -p  port number
         -L <Localhost port> : <remote socket>   Only the port address, NOT IP address of the loopback
                                                 socket is specified. The localhost  IP addr is hard coded to
                                                 be whatever IP addr localhost resolvs. See example
        ssh -L 80:192.168.20.20:80  really means  <localhost:80> forwards to <192.168.20.20:80>
        ssh -L 127.0.0.1:80>>192.168.20.20:80  <--- Here is how I WISH the command would be coded (its not)
         -R port:host:hostport   <Localhost port>:<remote socket>  <next hop SSH URI>
        Suppose you want to forward a local socket to remote socket which FORWARDs to another socket
             ssh    -R      80:192.168.20.20:80    user@somedomain.com

PS      ps -ef | more
        ps -ef | grep asterisk
         -e - generates a list of info about every process currently running
         -f - generates a few items of info for each process
         -l - generates lots of items of info for each process

KILL    kill [options] pid
        kill  -15   7243
         -1  or -HUP - "Hang Up" (modem/dial-in era?)  Most daemons are programmed to re-read their configuration when
                        hey receive this signal.  The safest kill signal there is
         -2  or -SIGINT  -  Same as CTRL+C
         -3  or -SIGQUIT   - Quit and terminate with core dump
         -9  or -KILL       - The kernel will release the process without informing the process. This is an unclean kill. Use it to
                              stop something that seems unstoppable.
         -15 or -TERM - Tell the process to kill itself. When you don't specify any signal, this signal is used.
         -25 or SIGTSTP - Pause the process, can be started
         -26 or SIGNCONT - Continue - run a stopped process

TAIL    tail [options] [filename]
        tail  -n 40  /var/log/syslog
        tail   -f    /var/log/syslog
         -f  show end of file in real time "follow" the tail
         -n  number of lines to show

USB     cd /media
        sudo mkdir usb
        sudo mount /dev/sdb1 usb
        sudo umount thing
        sudo rmdir usb
