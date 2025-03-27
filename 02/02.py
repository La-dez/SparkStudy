
from pyspark.sql import *
data_location = "../data/Fire_Department_20250326.csv"

if __name__ == "__main__":
    spark = SparkSession.builder \
        .appName("Hello Spark") \
        .getOrCreate()

    data_list = [("Ravi", 28),
                 ("David", 45),
                 ("Abdul", 37)
                 ]

    df = spark.createDataFrame(data_list).toDF("Name","Age")
    df.show()


fire_df = spark.