package com.lnsotf.apm.transformer

import org.apache.spark.mllib.regression.LabeledPoint
import org.apache.spark.mllib.tree.RandomForest
import org.apache.spark.mllib.tree.model.RandomForestModel
import org.apache.spark.rdd.RDD
import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.Row
import com.lnsoft.apm.util.GV
import org.apache.spark.mllib.linalg.DenseVector

/**
 * duration是时间区间
*/
class RandomForest(labeleColName : String, duration : Double) extends Serializable{
  var labeleCol : Int = 0;
  var schema : org.apache.spark.sql.types.StructType = null;
  
  def signOriginData(r : Row) : LabeledPoint = {
    val labele = r.getDouble(labeleCol);
    val timestampCol = schema.fieldIndex("timestamp");
    val wtidCol = schema.fieldIndex("wtid");
    val length = schema.length - 1;
    var arr : Array[Double] = new Array[Double](length - 2);
    var j = 0;
    for(i <- 0 to length) {
      if(i != timestampCol && i != wtidCol && i != labeleCol) {
        arr(j) = r.getDouble(i);
        j = j + 1;
      }
    }
    new LabeledPoint(labele, new DenseVector(arr));
  }
  
  //def run(originData : RDD[(Int,Long,Array[Double])]) : DataFrame = {
  def run(originData : DataFrame) : DataFrame = {
    // 加载数据
//    val data = MLUtils.loadLibSVMFile(GV.sc, "data/mllib/sample_libsvm_data.txt")
    schema = originData.schema;
    labeleCol = schema.fieldIndex(labeleColName);
    val data = originData.map(signOriginData);
    // 将数据随机分配为两份，一份用于训练，一份用于测试
    val splits = data.randomSplit(Array(0.7, 0.3));
    val (trainingData, testData) = (splits(0), splits(1));
    // 随机森林训练参数设置
    //分类数
    val numClasses = 2;
    // categoricalFeaturesInfo 为空，意味着所有的特征为连续型变量
    val categoricalFeaturesInfo = Map[Int, Int]();
    //树的个数
    val numTrees = 3;
    //特征子集采样策略，auto 表示算法自主选取
    val featureSubsetStrategy = "auto";
    //纯度计算
    val impurity = "gini";
    //树的最大层次
    val maxDepth = 4;
    //特征最大装箱数
    val maxBins = 32;
    //训练随机森林分类器，trainClassifier 返回的是 RandomForestModel 对象
    val model = RandomForest.trainClassifier(trainingData, numClasses, categoricalFeaturesInfo,
     numTrees, featureSubsetStrategy, impurity, maxDepth, maxBins);
    // 测试数据评价训练好的分类器并计算错误率
    val labelAndPreds = testData.map { point =>
      val prediction = model.predict(point.features)
      (point.label, prediction)
    };
    val testErr = labelAndPreds.filter(r => r._1 != r._2).count.toDouble / testData.count();
    println("Test Error = " + testErr);
    println("Learned classification forest model:\n" + model.toDebugString);
    // 将训练后的随机森林模型持久化
    model.save(GV.sc, "myModelPath");
    //加载随机森林模型到内存
    val sameModel = RandomForestModel.load(GV.sc, "myModelPath");
    null;
  }
}
