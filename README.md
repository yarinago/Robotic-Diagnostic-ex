# Answer to question no. 2
The way to make sure application does not go out of hand and consume all the cluster resources is to use "limits" when creating the deployment (you can see the usage of limits in the value.yaml file).
Also it is highly recommended to know what resources your application needs in order to run

# Answer to question no. 3
There are a few options to store logs of application, one of them is to store them using volume.
However the preferred option is to stored them in an external source such as amazon s3 or some kind of monitoring application such as ELK, Splunk etc.