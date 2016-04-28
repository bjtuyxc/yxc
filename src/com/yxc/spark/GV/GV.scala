package com.lnsoft.apm.util

import org.apache.spark.SparkConf
import org.apache.spark.SparkContext

object GV {
  val conf = new SparkConf().setAppName("poc3").setMaster("local");
  val sc = new SparkContext(conf);
  val sqlContext = new org.apache.spark.sql.SQLContext(GV.sc);
}