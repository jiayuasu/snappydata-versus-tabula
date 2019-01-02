# Troubleshooting Error Messages
Error messages provide information about problems that might occur when setting up the SnappyData cluster or when running queries. </br>You can use the following information to resolve such problems.

<!-- --------------------------------------------------------------------------- -->

The following topics are covered in this section:

* [Region {0} has potentially stale data. It is waiting for another member to recover the latest data.](#region0)

* [XCL54.T Query/DML/DDL '{0}' canceled due to low memory on member '{1}'. Try reducing the search space by adding more filter conditions to the where clause. query](#query-dml-dll)

* [{0} seconds have elapsed while waiting for reply from {1} on {2} whose current membership list is: [{3}]](#seconds-elapsed)

* [Region {0} bucket {1} has persistent data that is no longer online stored at these locations: {2}](#persistent-data)

* [ForcedDisconnectException Error: "No Data Store found in the distributed system for: {0}"](#no-data-store)
* [Node went down or data no longer available while iterating the results](#queryfailiterate).

<a id="region0"></a>
<error> **Error Message:** </error> 
<error-text>
Region {0} has potentially stale data. It is waiting for another member to recover the latest data.
My persistent id:</br>
{1}</br>
Members with potentially new data:</br>
{2}Use the "{3} list-missing-disk-stores" command to see all disk stores that are being waited on by other members.</br>
</error-text>

<diagnosis> **Diagnosis:**</br>
The above message is typically displayed during start up when a member waits for other members in the cluster to be available, as the table data on disk is not the most current. </br>
The status of the member is displayed as *waiting* in such cases when you [check the status](../howto/check_status_cluster.md) of the cluster using the `snappy-status-all.sh` command.
</diagnosis>

<action> **Solution:** </br>
The status of the waiting members change to online once all the members are online and the status of the waiting members is updated. Users can check whether the status is changed from *waiting* to *online* by using the `snappy-status-all.sh` command or by checking the [SnappyData Pulse UI](../monitoring/monitoring.md).
</action>

<!-- --------------------------------------------------------------------------- -->

<a id="query-dml-dll"></a>
<error> **Error Message:** </error> 
<error-text>
XCL54.T Query/DML/DDL '{0}' canceled due to low memory on member '{1}'. Try reducing the search space by adding more filter conditions to the where clause. query
</error-text>

<diagnosis> **Diagnosis:**</br>
This error message is reported when a system runs on low available memory. In such cases, the queries may get aborted and an error is reported to prevent the server from crashing due to low available memory.</br>
Once the heap memory usage falls below [critical-heap-percentage](../configuring_cluster/property_description.md#critical-heap-percentage) the queries run successfully.
</diagnosis>

<action> **Solution:** </br>
To avoid such issues, review your memory configuration and make sure that you have allocated enough heap memory. </br>
You can also configure tables for eviction so that table rows are evicted from memory and overflow to disk when the system crosses eviction threshold. For more details refer to best practices for [memory management](../best_practices/memory_management.md)
</action>
<!-- --------------------------------------------------------------------------- -->

<a id="seconds-elapsed"></a>
<error> **Message:** </error>
<error-text>
{0} seconds have elapsed while waiting for reply from {1} on {2} whose current membership list is: [{3}]
</error-text>

<diagnosis> **Diagnosis:**</br>
The above warning message is displayed when a member is awaiting for a response from another member on the system and response has not been received for some time.
</diagnosis>

<action> **Solution:** </br>
This generally means that there is a resource issue in (most likely) the member that is in *waiting* status. Check whether there is a garbage collection activity going on in the member being waited for. 
Due of large GC pauses, the member may not be responding in the stipulated time. In such cases, review your memory configuration and consider whether you can configure to use [off-heap memory](../best_practices/memory_management.md#snappydata-off-heap-memory).
</action>
<!-- --------------------------------------------------------------------------- -->

<a id="persistent-data"></a>
<error> **Error Message:** </error> 
<error-text>
Region {0} bucket {1} has persistent data that is no longer online stored at these locations: {2}
</error-text>

<diagnosis> **Diagnosis:**</br>
In partitioned tables that are persisted to disk, if you have any of the members offline, the partitioned table is still available, but, may have some buckets represented only in offline disk stores. In this case, methods that access the bucket entries report a PartitionOfflineException error.

<action> **Solution:** </br>
If possible, bring the missing member online. This restores the buckets to memory and you can work with them again.
</action>
<!-- --------------------------------------------------------------------------- -->

<a id="no-data-store"></a>
<error> **Error Message:** </error> 
<error-text>
ForcedDisconnectException Error: "No Data Store found in the distributed system for: {0}"
</error-text>

<diagnosis> **Diagnosis:**</br>
A distributed system member’s Cache and DistributedSystem are forcibly closed by the system membership coordinator if it becomes sick or too slow to respond to heartbeat requests. The log file for the member displays a ForcedDisconnectException with the message. </br>
One possible reason for this could be that large GC pauses are causing the member to be unresponsive when the GC is in progress. 
</diagnosis>

<action> **Solution:** </br>
To minimize the chances of this happening, you can increase the DistributedSystem property [member-timeout](../best_practices/important_settings.md#member-timeout). This setting also controls the length of time required to notice a network failure. Also, review your memory configuration and configure to use [off-heap memory](../best_practices/memory_management.md#snappydata-off-heap-memory).
</action>

<!-- --------------------------------------------------------------------------- -->

<a id="queryfailiterate"></a>
<error> **Error Message:** </error> 
<error-text>
Node went down or data no longer available while iterating the results.
</error-text>

<diagnosis> **Diagnosis:**</br>
In cases where a node fails while a JDBC/ODBC client or job is consuming result of a query, then it can result in the query failing with such an exception. 
</diagnosis>

<action> **Solution:** </br>
This is expected behaviour where the product does not retry, since partial results are already consumed by the application. Application must retry the entire query after discarding any changes due to partial results that are consumed.
</action>
