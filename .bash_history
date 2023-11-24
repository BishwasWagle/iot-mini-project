ls
cd
ls
nano README.md
ls
git status
rm -rf .git
ls
git init
git add .
cd RIOT
git status
rm -rf .git
git status
cd ..
git status
git add .
git commit -m "pushing the codes as well as readme" -a
git push origin HEAD
git push origin master
git status
git push
git status
ls
cd test/
nano main.c 
cat main.c 
cat MakeFile 
ls
cd ..
ls
ca coap_ap
cd coap_api/
cat main.c 
/*
/**
#include <stdio.h>
#include "msg.h"
#include "net/gcoap.h"
#include "shell.h"
#include "fmt.h"
/* Include lpsxxx headers */
#include "lpsxxx.h"
#include "lpsxxx_params.h"
/* Declate lpsxxx_t sensor variable (globally) */
static lpsxxx_t sensor;
/* Declare _value variable (globally) */
static uint16_t _value = 0;
static ssize_t _encode_link(const coap_resource_t *resource, char *buf,
static ssize_t _riot_board_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx);
/* Declare cpu handler */
static ssize_t _riot_cpu_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx);
/* Declare temperature handler */
static ssize_t _temperature_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx);
/* Declare value handler */
static ssize_t _value_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx);
/* CoAP resources. Must be sorted by path (ASCII order). */
static const coap_resource_t _resources[] = {
{     (void)ctx;
}
static ssize_t _riot_cpu_handler(coap_pkt_t *pdu, uint8_t *buf, size_t len, void *ctx)
{     (void)ctx;
}
static ssize_t _temperature_handler(coap_pkt_t *pdu, uint8_t *buf, 
{     (void)ctx;
}
static ssize_t _value_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx)
{     (void)ctx;
}
static gcoap_listener_t _listener = {
};
/* Adds link format params to resource list */
static ssize_t _encode_link(const coap_resource_t *resource, char *buf,
}
void gcoap_cli_init(void)
{     gcoap_register_listener(&_listener);
}
#define MAIN_QUEUE_SIZE (4)
static msg_t _main_msg_queue[MAIN_QUEUE_SIZE];
extern int gcoap_cli_cmd(int argc, char **argv);
extern void gcoap_cli_init(void);
static const shell_command_t shell_commands[] = {
{     /* Initialize and enable the lps331ap device */;     if (lpsxxx_init(&sensor, &lpsxxx_params[0]) != LPSXXX_OK) {
}
cat gcoap_cli.c 
cat MakeFile 
cd ..
ls
cat README.md 
ls
git branch -M main
git remote add origin https://github.com/BishwasWagle/iot-mini-project.git
git push origin HEAD
ls
iotlab-experiment submit -n "temp-sensors" -d 120 -l 1,archi=m3:at86rf231+site=grenoble
iotlab-experiment submit -n "temp-sensors" -d 120 -l 1,archi=m3:at86rf231+site=paris
ls
source /opt/riot.source
iotlab-experiment submit -n "temp-sensors" -d 120 -l 1,archi=m3:at86rf231+site=paris
nano ~/.ssh/
cd ~/.ssh
ls
cd ..
ls
iotlab-experiment submit -n "temp-sensors" -d 120 -l 1,archi=m3:at86rf231+site=paris
ls
cd test
ls
iotlab-experiment submit -n "temp-sensors" -d 120 -l 1,archi=m3:at86rf231+site=paris
ls
/home/pc/Documents/IOT/iot-lab
ls
git clone https://github.com/RIOT-OS/RIOT.git
ls
cd test
mkdir test
cd test
cd coap_api
mkdir coap_api
rm -rf mkdir
ls
rm -rf coap_api/
cd ..
cd coap_api
mkdir coap_api
cd coap_api
ls
/*
/**
#include <stdio.h>
#include "msg.h"
#include "net/gcoap.h"
#include "shell.h"
#include "fmt.h"
/* Include lpsxxx headers */
#include "lpsxxx.h"
#include "lpsxxx_params.h"
/* Declate lpsxxx_t sensor variable (globally) */
static lpsxxx_t sensor;
/* Declare _value variable (globally) */
static uint16_t _value = 0;
static ssize_t _encode_link(const coap_resource_t *resource, char *buf,
static ssize_t _riot_board_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx);
/* Declare cpu handler */
static ssize_t _riot_cpu_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx);
/* Declare temperature handler */
static ssize_t _temperature_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx);
/* Declare value handler */
static ssize_t _value_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx);
/* CoAP resources. Must be sorted by path (ASCII order). */
static const coap_resource_t _resources[] = {
{     (void)ctx;
}
static ssize_t _riot_cpu_handler(coap_pkt_t *pdu, uint8_t *buf, size_t len, void *ctx)
{     (void)ctx;
}
static ssize_t _temperature_handler(coap_pkt_t *pdu, uint8_t *buf, 
{     (void)ctx;
}
static ssize_t _value_handler(coap_pkt_t* pdu, uint8_t *buf, size_t len, void *ctx)
{     (void)ctx;
}
static gcoap_listener_t _listener = {
};
/* Adds link format params to resource list */
static ssize_t _encode_link(const coap_resource_t *resource, char *buf,
}
void gcoap_cli_init(void)
{     gcoap_register_listener(&_listener);
}
#define MAIN_QUEUE_SIZE (4)
static msg_t _main_msg_queue[MAIN_QUEUE_SIZE];
extern int gcoap_cli_cmd(int argc, char **argv);
extern void gcoap_cli_init(void);
static const shell_command_t shell_commands[] = {
{     /* Initialize and enable the lps331ap device */;     if (lpsxxx_init(&sensor, &lpsxxx_params[0]) != LPSXXX_OK) {
clear
nano main.c
nano /*
ls
nano gcoap_cli.c
nano MakeFile
ls
cd ..
cd test
ls
nano MakeFile
nano main.c
nano MakeFile 
ls
cd ..
ls
cd test
ls
cd ..
ls
# Developing and flashing the firmware for sensing temperature and sensor
Here we used the iotlab-m3 board with STM32F013RE MCU. We use the default temperature and pressure sensor in order to sense the data.
We did not clone the RIOT repo because it was consuming 575MB of storage and did not allowed us to flash the firmware resulting in an error as `Disk Quota exceeded`.
So instead we used `/iot-lab/parts/RIOT/` as RIOTBASE.
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
> lps temperature start
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
d
a
iotlab-experiment submit -n "temp-sensors" -d 120 -l 1,archi=m3:at86rf231+site=paris
