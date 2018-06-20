package com.tempdata;

//import com.image.features.GLCMTransformation;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

import com.constant.ServerConstants;

//import com.constants.ServerConstants;

import weka.classifiers.functions.LibSVM;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.converters.ConverterUtils.DataSource;


//import util.ServerConstants;

public class SvmClassifier {
static String modelpath=ServerConstants.project_url+"/svmModel.bin"; 
static String Trainingpath=ServerConstants.project_url+"/HeartDisease.arff";
//static String Trainingpath="d:/test1.arff";
static double stressResult=-1;
static int svmresult=0;
    public static void main(String[] args) {

 double featureArray[]={53.0,1.0,4.0,140.0,203.0,1.0,2.0,155.0,1.0,3.1,3.0,0.0,7.0};
       String str= applySvmClassifier(featureArray);
        System.out.println("Str :"+str);

    }
    public static String applySvmClassifier(double[] featureArray){
   
    System.out.println("Train Model : " + trainModel(Trainingpath));

    System.out.println(getSVMPredication(featureArray));

        return svmresult+"";
}

    public static void save(LibSVM model, String path) throws IOException {
        FileOutputStream fileOut = new FileOutputStream(path);
        ObjectOutputStream out = new ObjectOutputStream(fileOut);
        out.writeObject(model);
        out.close();
    }

    public ArrayList<double[]> getSVMTrainingData(String inputFilePath) {
        DataSource test;
        try {
            test = new DataSource(inputFilePath);

            Instances testData = test.getDataSet();
            if (testData.classIndex() == -1) {
                testData.setClassIndex(testData.numAttributes() - 1);
            }
            ArrayList<double[]> data = new ArrayList<double[]>();
            for (int i = 0; i < testData.numInstances(); i++) {
                Instance instance = testData.instance(i);
                data.add(instance.toDoubleArray());

            }
            return data;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    public static LibSVM trainModel(String inputFilePath) {
        // DataSource source = new DataSource("./data/Convert.arff");
        int total = 0;
        int right = 0;
        double accuracy;
        DataSource source;
        LibSVM svmClassifier = null;
        try {
            source = new DataSource(inputFilePath);
            Instances data = source.getDataSet();
            if (data.classIndex() == -1) {
                data.setClassIndex(data.numAttributes() - 1);
            }
            System.out.println(data.classIndex());
            if (svmClassifier == null) {
                svmClassifier = new LibSVM();
                // svmClassifier.setOptions(options);
                System.out.println("start training... ");
                svmClassifier.buildClassifier(data);
                File f = new File(modelpath);
                System.out.println(f.getCanonicalPath());
                SvmClassifier.save(svmClassifier,modelpath);
            }
            DataSource test = new DataSource(inputFilePath);
            Instances testData = test.getDataSet();
            if (testData.classIndex() == -1) {
                testData.setClassIndex(testData.numAttributes() - 1);
            }

            for (int i = 0; i < testData.numInstances(); i++) {
                Instance instance = testData.instance(i);

                System.out.print(testData.classAttribute().value(
                        (int) instance.classValue())
                        + " -- ");

                double result = svmClassifier.classifyInstance(instance);
                System.out.print(result + " --- ");
                System.out.println(testData.classAttribute().value((int) result));
               
                if (Double.compare(result, instance.classValue()) == 0) {
                    right++;
                }
                total++;
            }
            accuracy = ((right / (double) total) * 100);
            System.out.println("Right Decision = " + right
                    + "\nTotal Instances = " + total + "\nAccuracy = "
                    + (right / (double) total) * 100);
            System.out.println("Svm Model Updated");
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return svmClassifier;
    }

    public static LibSVM load(String path) {
        try {
            FileInputStream fileIn = new FileInputStream(path);
            ObjectInputStream in = new ObjectInputStream(fileIn);
            System.out.println("Try to load model... from " + path);
            long startTime = System.currentTimeMillis();
            Object obj = in.readObject();
            System.out.print("Load model done. "
                    + (System.currentTimeMillis() - startTime) / 1000 + "s");
            in.close();
            fileIn.close();
            if (obj instanceof LibSVM) {
                System.out.println("\nUsing model from: " + path);
                return (LibSVM) obj;
            } else {
                return null;
            }
        } catch (FileNotFoundException e1) {
            System.err.println("Warning: File not found, retrain model...");
            return null;
        } catch (ClassNotFoundException e) {
            System.err.println("Class not found, retrain model...");
            return null;
        } catch (IOException e) {
            System.err.println("Can't read object. retrain model...");
            return null;
        }
    }

    public static boolean getSVMPredication(double[] featureArray) {
        // 1=TRUE=SPAM && 0=FALSE=HAM
        boolean predication = false;
        // LibSVM svmClassifier = trainModel("./data/Convert.arff");
        LibSVM svmClassifier = SvmClassifier.load(modelpath);
        try {
            System.out.println("Svm Prediction.......");
            DataSource test = new DataSource(Trainingpath);
            Instances testData = test.getDataSet();
            int attribute = testData.numAttributes() - 1;
            Instance instance = testData.instance(0);
            for (int j = 0; j < featureArray.length; j++) {
                instance.setValue(j, featureArray[j]);
            }
            int svm_result = 0;
            double result = svmClassifier.classifyInstance(instance);
            System.out.println("Svm Prediction Result : " + (int) result);
            svmresult=(int) result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return predication;
    }

    /*
     * Predicting SVM Result Using SVM Model
     */
    public static boolean getSVMPredication(int[] featureArray, String svmModel) {
        // 1=TRUE=SPAM && 0=FALSE=HAM
        boolean predication = false;
        // LibSVM svmClassifier = trainModel("./data/Convert.arff");
        // LibSVM svmClassifier =SvmClassifier.load("./svm.model");
        LibSVM svmClassifier = SvmClassifier.load(svmModel);
        try {
            DataSource test = new DataSource("./data/Convert1.arff");
            Instances testData = test.getDataSet();
            int attribute = testData.numAttributes() - 1;
            Instance instance = testData.instance(0);

            // int[] featureArray = new int[] { 0,0,0,0,0,0,0,0 };
            for (int j = 0; j < featureArray.length; j++) {
                instance.setValue(j, featureArray[j]);
            }

            double result = svmClassifier.classifyInstance(instance);
            if (result == 0) {
                predication = true;
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return predication;
    }

    /*
     * binding email feature and svm predicted result in a single string
     */
    public static String getWritableString(int featureArray[], int svm_result) {
        String line = "\n";
        for (int i = 0; i < featureArray.length - 1; i++) {
            line += featureArray[i] + ",";
        }
        line += svm_result;
        return line;
    }
}