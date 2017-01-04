# deLaRive API

**HTTP based REST API**

## Status
Request:

`GET /status HTTP/1.1`

Answer:

```
{
	dlr:{
		name:"deLaRive",
		version:"0.0.2",
		power:"on",
		light:"42"
	},
	wifi:{
		ssid:"myHomeWifi",
		strength:"72"		
	}
}
```
`dlr` - Info about the deLaRive :

* `name` The name of the deLaRive
* `version` The version installed on the deLaRive
* `power` Either ***on***, ***idle*** or ***off***
* `light` The relative brightness of the bulb in percent

`wifi` - Info about the current wifi connection:

* `ssid` The ssid of the wifi
* `strength` The connection strength in dB


## Set 

Here you can set certain paramaters and values of the deLaRive

```
POST /set/dlr HTTP/1.0

name=deLaRive-LivingRoom1&light=80
```