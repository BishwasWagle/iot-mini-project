# Developing and flashing the firmware for sensing temperature and sensor

Here we used the iotlab-m3 board with STM32F013RE MCU. We use the default temperature and pressure sensor in order to sense the data.

We used the inbuilt LPS331AP sensor to measure temperature and pressure data every 2 seconds interval.


## Experiment Setup
1. Submitting an experiment into the testbed 

``````
iotlab-experiment submit -n "temp-sensors" -d 120 -l 1,archi=m3:at86rf231+site=grenoble
``````

## Flashing up Firmware

1. Initializing RIOT
``````
source /opt/riot.source
``````
2. Flashing Temperature Sensor Nodes
``````
cd test/
make IOTLAB_NODE=auto flash
make IOTLAB_NODE=auto -C . term
``````
## Enter commands to start the sensor
``````
> lps
  
> lps temperature
``````

# CoAP API Experiment Submission
1. Creating a firmware
```
cd coap_api/
make
```

2. Generating channel and pan id
```
python
>>> import os,binascii,random
>>> pan_id = binascii.b2a_hex(os.urandom(2)).decode()
>>> channel = random.randint(11, 26)
>>> print('Use CHANNEL={}, PAN_ID=0x{}'.format(channel, pan_id))
Use CHANNEL=19, PAN_ID=0x4742
```

3. Submitting the firmware across 2 nodes (103 and 104)
``````
iotlab-experiment submit -n coap_api -d 60 -l grenoble,m3,103,./bin/iotlab-m3/gcoap_api.elf

iotlab-experiment submit -n coap_api -d 60 s-l grenoble,m3,104,./bin/iotlab-m3/gcoap_api.elf
``````

4. Communication Setup - Client (Node 103) and Server (Node 104)

```````
nc m3-103 20000
```````
 we performed getting IPv6 address and retrieving temperature data using CoAP

``````
nc m3-104 20000
``````
Here, we obtained the IPv6 address and set up the server for communication


# Setting Up IPv6 Networking

``````
cd RIOT/examples
``````
## Compile and submit IPv6 networking experiment
``````
make -C gnrc_networking BOARD=iotlab-m3 DEFAULT_CHANNEL=19 DEFAULT_PAN_ID=0x4742

iotlab-experiment submit -n "temp-ipv6" -d 60 -l 1,archi=m3:at86rf231+site=grenoble
(Got node as 95)

iotlab-experiment submit -n "temp-ipv6" -d 60 -l 1,archi=m3:at86rf231+site=grenoble
(Got node as 102)
``````
## Flash nodes for IPv6 networking (Nodes 95 and 102)
``````
iotlab-experiment node --flash gnrc_networking/bin/iotlab-m3/gnrc_networking.bin -i 38565
iotlab-experiment node --flash gnrc_networking/bin/iotlab-m3/gnrc_networking.bin -i 38566
``````


# Compile and flash the border router
``````
make -C gnrc_border_router ETHOS_BAUDRATE=500000 BOARD=iotlab-m3 DEFAULT_CHANNEL=19 PAN_ID=0x4742 IOTLAB_NODE=m3-95.grenoble.iot-lab.info flash
``````

# Configure the border router interfaces
ssh into the server in new terminal
``````
ip addr show | grep tap
ip -5 route (tap id+1)
sudo ethos_uhcpd.py m3-95 tap5 128::/64
``````


For further details and troubleshooting, refer to the official RIOT OS documentation and IoT-LAB resources.
