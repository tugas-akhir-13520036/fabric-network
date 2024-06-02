run-channel:
	./test-network/network.sh up createChannel -ca -c mychannel -s couchdb
	cd test-network/addOrg3 && ./addOrg3.sh up -ca -c mychannel -s couchdb

run-chaincode:
	./test-network/network.sh deployCC -ccn merchant-attr-asset-transfer -ccp ../../chaincodes/merchant-attr-asset-transfer -ccl javascript

stop:
	./test-network/network.sh down

