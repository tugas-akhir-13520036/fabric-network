run-channel:
	./test-network/network.sh up createChannel -ca -c mychannel -s couchdb
	cd test-network/addOrg3 && ./addOrg3.sh up -ca -c mychannel -s couchdb

run-chaincode:
	./test-network/network.sh deployCC -ccn access-decision-asset-transfer -ccp ../../chaincodes/access-decision-asset-transfer -ccl javascript
	./test-network/network.sh deployCC -ccn channel-policy-asset-transfer -ccp ../../chaincodes/channel-policy-asset-transfer -ccl javascript
	./test-network/network.sh deployCC -ccn merchant-attr-asset-transfer -ccp ../../chaincodes/merchant-attr-asset-transfer -ccl javascript

all:
	make run-channel
	make run-chaincode

stop:
	./test-network/network.sh down

