# SnappyData VS Tabula

This repository contains an experimental comparison between [SnappyData](https://www.snappydata.io/) and [Tabula](https://github.com/jiayuasu/tabula).

The experiment studies the performance of Synopsis Data Engine of SnappyData 1.0.2.1 Enterprise version. OLAP column-stored is used here.

* Example SQL scripts are provided in /experiment/ folder.
* All other files except the /experiment/ folder are the original enterprise version binary files from SnappyData offical website. Please respect SnappyData's copyright.


## Connect to SnappyData Client

Locate the following information of your SnappyData cluster:

**client-bind-address**: en4119507l.cidse.dhcp.asu.edu

**default port**: 1527

## Create NYCtaxi

```
./bin/snappy run -file=./experiment/create-nyc.sql -param:input=../../experiment/testdata-nyc.csv --client-bind-address=en4119507l.cidse.dhcp.asu.edu
```

Change the input path to a proper path

## Create sample table

```
./bin/snappy run -file=./experiment/createsample-nyc.sql -param:frac=0.1 --client-bind-address=en4119507l.cidse.dhcp.asu.edu
```

Change the frac to a proper number

## Query

```
./bin/snappy run -file=./experiment/query-nyc.sql --client-bind-address=en4119507l.cidse.dhcp.asu.edu
```

## Drop sample

```
./bin/snappy run -file=./experiment/dropsample-nyc.sql --client-bind-address=en4119507l.cidse.dhcp.asu.edu
```

## Drop all

```
./bin/snappy run -file=./experiment/dropall-nyc.sql --client-bind-address=en4119507l.cidse.dhcp.asu.edu
```
