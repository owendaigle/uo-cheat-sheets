We need to design a health check system with a heart rate sensor, an activity tracker, an armband, and a cell phone. 

 
The following is taken directly from the assignment:
```
The devices (i.e., the heart rate sensor, the activity tracker and the blood pressure
measurer) assess the health status and the activity level of the patient continuously. In
particular, they measure the heart rate, the activity level and the blood pressure and
send this information continuously to the mobile phone through a wireless (Bluetooth)
connection. The phone runs a software application called Health Check App that
receives all the data and process the data.
Below, we first describe the details of the devices (item 1, 2, and 3 in the above list):
1) Heart Rate Sensor
The heart rate sensor (HRS) operates in two modes: (1) Standard, and (2) Sensitive.
When the sensor is in the Standard mode, it sends a signal containing the measured
heart rate every minute to the phone application, but when it is in the Sensitive mode, it
sends a signal containing the entire record obtained from the heart performance every
30 seconds.
2) Activity Tracker
The activity tracker measures the activity level of the patients and sends a signal to the
mobile phone every 30 seconds. The patient’s activity level can be one of the following:
High Activity, Moderate Activity, and Low Activity.
3) Blood Pressure Device
The blood pressure device is located on the patient arm and collect the blood pressure
data on demand. Specifically, if the health check app sends a command to the blood
pressure device to perform a measurement, it returns a message containing the blood
pressure values.
Requirements
All requirements were captured using user stories as the development team is using the
Scrum agile process. During requirements collection, the stakeholders identified one
epic user story that they further decomposed into 8 user stories. All user stories are
shown below
```

I need to create an activity diagram to model the overall behaviour of the system.

I also need a UML state machine for the heart rate sensor.