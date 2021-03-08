# Sensors

There are four interfaces that can be used to physically connect sensors to the RPi. HASviolet and
HASduck use the following convention:

- SPI for RF modules

- i2c for sensors connected using the Qwiic connect system.

- microUSB preferred for GPS devices

- GPIO as a last resort

Included in this directory are the following "alpha release quality" “proof of concept” sensor applications:

- HASviolet-atmos.py for use with the Sparkfun BME280 Atmospheric sensor (Qwiic)

- HASviolet-distance.py for use with the Sparkfun Distance Sensor (Qwiic)

- HASviolet-gps.py for use with USB accessible GPS/GLONASS

- HASviolet-sensors.py for use with all three of the aforementioned sensors simultaneously

## HASviolet-atmos.py

```
usage: HASviolet-atmos.py [-h] [-d DESTINATION]
HASviolet Atmos Sensor
-h, --help
show this help message and optional arguments:
-d DESTINATION, --destination DESTINATION
```

## HASviolet-distance.py

```
usage: HASviolet-distance.py [-h] [-d DESTINATION]
HASviolet Distance Sensor
-h, --help
show this help message and optional arguments:
-d DESTINATION, --destination DESTINATION
```

## HASviolet-gps.py

```
usage: HASviolet-gps.py [-h] [-d DESTINATION]
HASviolet GPS SensorHASviolet-distance.py
-h, --help
show this help message and optional arguments:
-d DESTINATION, --destination DESTINATION
```

## HASviolet-sensors.py

```
usage: HASviolet-sensors.py [-h] [-d DESTINATION] [-a] [-f] [-g]
HASviolet Sensor TX
-h, --help
show this help message and optional arguments:
-d DESTINATION, --destination DESTINATION
-a, --atmosphere Atmosphere Sensor
-f, --distance Distance Sensor
-f, --distance Distance Sensor
```


