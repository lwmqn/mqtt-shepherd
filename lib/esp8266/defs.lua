local defs = {}

function defs.oidToKey (oid)
end

function defs.keyToOid (key)
end

function defs.ridToKey (rid)
end

function defs.keyToRid (key)
end

local OID = {
    'lwm2mSecurity' = 0,
    'lwm2mServer' = 1,
    'accessControl' = 2,
    'device' = 3,
    'connMonitor' = 4,
    'firmware' = 5,
    'location' = 6,
    'connStatistics' = 7,
    'lockAndWipe' = 8,
    'swUpdate' = 9,
    'cellularConn' = 10,
    'apnConnProfile' = 11,
    'wlanConn' = 12,
    'bearerSelection' = 13,
    'devCapMgmt' = 14,
    'cmdhPolicy' = 2048,
    'activeCmdhPolicy' = 2049,
    'cmdhDefaults' = 2050,
    'CmdhDefEcValues' = 2051,
    'cmdhDefEcParamsValues' = 2052,
    'CmdhLimits' = 2053,
    'CmdhNetworkAccessRules' = 2054,
    'CmdhNwAccessRule' = 2055,
    'CmdhBuffer' = 2056,
    'digitalInput' = 3200,
    'digitalOutput' = 3201,
    'analogInput' = 3202,
    'analogOutput' = 3203,
    'genericSensor' = 3300,
    'illumSensor' = 3301,
    'presenceSensor' = 3302,
    'tempSensor' = 3303,
    'humidSensor' = 3304,
    'pwrMea' = 3305,
    'actuation' = 3306,
    'setPoint' = 3308,
    'loadCtrl' = 3310,
    'lightCtrl' = 3311,
    'pwrCtrl' = 3312,
    'accelerometer' = 3313,
    'magnetometer' = 3314,
    'barometer' = 3315
}

local RID = {
    'manuf' = 0,
    'model' = 1,
    'serial' = 2,
    'firmware' = 3,
    'reboot' = 4,
    'factoryReset' = 5,
    'availPwrSrc' = 6,
    'pwrSrcVoltage' = 7,
    'pwrSrcCurrent' = 8,
    'battLevel' = 9,
    'memFree' = 10,
    'errorCode' = 11,
    'devType' = 17,
    'hwVer' = 18,
    'swVer' = 19,
    'battStatus' = 20,
    'memTotal' = 21,
    'objectInstanceHandle' = 4000,
    'objectVersion' = 4001,
    'dInState' = 5500,
    'counter' = 5501,
    'dInPolarity' = 5502,
    'debouncePeriod' = 5503,
    'edgeSelection' = 5504,
    'counterReset' = 5505,
    'dOutState' = 5550,
    'dOutpolarity' = 5551,
    'aInCurrValue' = 5600,
    'minMeaValue' = 5601,
    'maxMeaValue' = 5602,
    'minRangeValue' = 5603,
    'maxRangeValue' = 5604,
    'resetMinMaxMeaValues' = 5605,
    'aOutCurrValue' = 5650,
    'sensorValue' = 5700,
    'units' = 5701,
    'xValue' = 5702,
    'yValue' = 5703,
    'zValue' = 5704,
    'compassDirection' = 5705,
    'colour' = 5706,
    'appType' = 5750,
    'sensorType' = 5751,
    'instActivePwr' = 5800,
    'minMeaActivePwr' = 5801,
    'maxMeaActivePwr' = 5802,
    'minRangeActivePwr' = 5803,
    'maxRangeActivePwr' = 5804,
    'cumulActivePwr' = 5805,
    'activePwrCal' = 5806,
    'instReactivePwr' = 5810,
    'minMeaReactivePwr' = 5811,
    'maxMeaReactivePwr' = 5812,
    'minRangeReactivePwr' = 5813,
    'maxRangeReactivePwr' = 5814,
    'cumulReactivePwr' = 5815,
    'reactivePwrCal' = 5816,
    'pwrFactor' = 5820,
    'currCal' = 5821,
    'resetCumulEnergy' = 5822,
    'eventId' = 5823,
    'startTime' = 5824,
    'durationInMin' = 5825,
    'criticalLevel' = 5826,
    'avgLoadAdjPct' = 5827,
    'dutyCycle' = 5828,
    'onOff' = 5850,
    'dimmer' = 5851,
    'onTime' = 5852,
    'mstateOut' = 5853,
    'setPointValue' = 5900,
    'busyToClearDelay' = 5903,
    'clearToBusyDelay' = 5904,
    'hostDeviceManuf' = 5905,
    'hostDeviceMdl' = 5906,
    'hostDeviceUID' = 5907,
    'hostDeviceSwVer' = 5908
}

MDEFS.RSPCODE = new Enum({
    'OK': 200,
    'Created': 201,
    'Deleted': 202,
    'Changed': 204,
    'Content': 205,
    'BadRequest': 400,
    'Unauthorized': 401,
    'NotFound': 404,
    'MethodNotAllowed': 405,
    'Conflict': 409,
    'InternalServerError': 500
});

MDEFS.CMD = new Enum({
    'read': 0,
    'write': 1,
    'discover': 2,
    'writeAttrs': 3,
    'execute': 4,
    'observe': 5,
    'notify': 6,
    'unknown': 255
});

function nwkMgr.startAsStation (ssid, pwd, interval, repeats, callback)
    print("Setting up wifi mode as a STATION")
    wifi.setmode(wifi.STATION)
    wifi.sta.config(ssid, pwd)
    wifi.sta.connect()

    nwkMgr.requestIp(interval, repeats, callback)
end

function nwkMgr.mac ()
    return wifi.sta.getmac()
end


return defs
