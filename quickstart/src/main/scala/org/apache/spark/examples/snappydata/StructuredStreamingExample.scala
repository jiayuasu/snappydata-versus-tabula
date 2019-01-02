/*
 * Copyright (c) 2018 SnappyData, Inc. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you
 * may not use this file except in compliance with the License. You
 * may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * permissions and limitations under the License. See accompanying
 * LICENSE file.
 */

package org.apache.spark.examples.snappydata

import org.apache.log4j.{Level, Logger}
import org.apache.spark.sql.streaming.ProcessingTime
import org.apache.spark.sql.{SnappySession, SparkSession}

import scala.language.postfixOps

/**
 * An example showing usage of structured streaming with SnappyData
 *
 * <p></p>
 * To run the example in local mode go to your SnappyData product distribution
 * directory and type following command on the command prompt
 * <pre>
 * bin/run-example snappydata.StructuredStreamingExample
 * </pre>
 * <p></p>
 * To run this on your local machine, you need to first run a Netcat server <br>
 * `$ nc -lk 9999`
 * <p>
 * Sample input data:
 * {{{
 * device1,45
 * device2,67
 * device3,35
 * }}}
 * For more details on streaming with SnappyData refer to:
 * http://snappydatainc.github.io/snappydata/programming_guide
 * /stream_processing_using_sql/#stream-processing-using-sql
 *
 */
object StructuredStreamingExample {

  def main(args: Array[String]) {
    // reducing the log level to minimize the messages on console
    Logger.getLogger("org").setLevel(Level.ERROR)
    Logger.getLogger("akka").setLevel(Level.ERROR)

    println("Initializing a SnappySesion")
    val spark: SparkSession = SparkSession
        .builder
        .appName(getClass.getSimpleName)
        .master("local[*]")
        .getOrCreate

    import spark.implicits._

    val snappy = new SnappySession(spark.sparkContext)

    // Create DataFrame representing the stream of input lines from connection to host:port
    val socketDF = snappy
        .readStream
        .format("socket")
        .option("host", "localhost")
        .option("port", 9999)
        .load()

    // Creating a typed DeviceData from raw string received on socket.
    val structDF = socketDF.as[String].map(s => {
      val fields = s.split(",")
      DeviceData(fields(0), fields(1).toInt)
    })

    // A simple streaming query to filter signal value and show the output on console.
    val streamingQuery = structDF
        .filter(_.signal > 10)
        .writeStream
        .format("console")
        .outputMode("append")
        .trigger(ProcessingTime("1 seconds"))
        .start

    streamingQuery.awaitTermination(timeoutMs = 15000)

    println("Exiting")
    System.exit(0)
  }

  case class DeviceData(device: String, signal: Int)
}

