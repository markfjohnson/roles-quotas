# Roles and Quotas demo examples

## Manage a cluster wide Quota for the 'Sparky' role
The role quota defines the total minimum resources available for the role.  In this case we are defining CPU and Memory quotas for the Sparky role through the JSON file ```sparky_node_reservation.json``` contained in this directory.

To set the quota you will use the ```http://{master_ip}:5050/reserve``` REST API call as shown below to pass the defining reservation JSON.

```
curl -d @sparky_node_reservation.json -X POST http://server1:5050/reserve

```

To modify the quota definition for the role requires first deleting the role reservation for 'sparky' as shown below, then you can re-add the 'sparky' reservation using the command above.

```
curl -X DELETE http://server1:5050/quota/sparky
```

The two step process is because the '/reserve' API does not support an UPDATE type operation.

## Map a user to a specific Mesos role
{Describe the Mesos permissions required to link a user to a role}

## Run a Spark Job using the 'sparky' role framework
In this example we will run a spark Job using a user which has the 'sparky' role defined.

{XXXX show the details of running the spark job with the sparky role}