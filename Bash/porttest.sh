#!/bin/bash
#ssl_ports=()
#for port in {31000..32000}; do
#	echo "checking $port"
#	ncat --ssl -z localhost $port
#	if [[ $? -eq 0 ]]; then
#		ssl_ports+=($port)
#		echo "Found Port $port"
#	fi
#done
#echo "all ssl/tls ports: ${ssl_ports[@]}"

#An ugraded script that automatically submits the data to the port and captures the ouput into an array which will later be echoed. Note openssl can also be used in place of ncat

#!/bin/bash
RSA_KEYS=()
PORTS=()

for i in {31000..32000}; do
	ncat --ssl -z localhost $i
	if [[ $? -eq 0 ]]; then
		PORTS+=($i)
		VAR=$(echo "kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx" | ncat --ssl localhost $i)
		[[ "$VAR" =~ .*RSA.* ]] && RSA_KEYS+=("$VAR")
	fi
done

echo -e "Port found: ${PORTS[@]}\nRSA keys found: "
for keys in "${RSA_KEYS[@]}"; do
	echo -e "------\n$keys"
done

