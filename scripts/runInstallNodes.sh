
#Run on host
#Run installNodes on each node

NUMBER_OF_NODES=4

port=3022
for ((i=0; i<NUMBER_OF_NODES; i++));
do
	echo $'\n ===>Connecting to port '$port'<=== \n' 
	cat installNodes.sh | ssh -p $port admin@localhost
	((port++))
done