# Affinity Modes
In this section, the various modes available for colocation of related data and computation is discussed.

You can run the SnappyData store in the following modes:

* [Local Mode](affinity_modes/local_mode.md): Used mainly for development, where the client application, the executors, and data store are all running in the same JVM

* [Embedded SnappyData Store Mode](affinity_modes/embedded_mode.md): The Spark computations and in-memory data store run colocated in the same JVM

* [SnappyData Smart Connector Mode](affinity_modes/connector_mode.md): Allows you to work with the SnappyData store cluster from any compatible Spark distribution