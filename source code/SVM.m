
model1=svmtrain(Yeast_f1_train_label,Yeast_f1_train_feature,'-c 120 -g 1000 -b 1');
[predictions_f1,accuracy1,dec_values1]=svmpredict(Yeast_f1_test_label,Yeast_f1_test_feature,model1,'-b 1');

[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f1,Yeast_f1_test_label);
aa = [ACC,SN,SP,PPV,NPV,F1,MCC];

%fold-2
model2=svmtrain(Yeast_f2_train_label,Yeast_f2_train_feature,'-c 120 -g 1000 -b 1');
[predictions_f2,accuracy2,dec_values2]=svmpredict(Yeast_f2_test_label,Yeast_f2_test_feature,model2,'-b 1');

[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f2,Yeast_f2_test_label);
bb = [ACC,SN,SP,PPV,NPV,F1,MCC];

%fold-3
model3=svmtrain(Yeast_f3_train_label,Yeast_f3_train_feature,'-c 120 -g 1000 -b 1');
[predictions_f3,accuracy3,dec_values3]=svmpredict(Yeast_f3_test_label,Yeast_f3_test_feature,model3,'-b 1');

[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f3,Yeast_f3_test_label);
cc = [ACC,SN,SP,PPV,NPV,F1,MCC];

%fold-4
model4=svmtrain(Yeast_f4_train_label,Yeast_f4_train_feature,'-c 120 -g 1000 -b 1');
[predictions_f4,accuracy4,dec_values4]=svmpredict(Yeast_f4_test_label,Yeast_f4_test_feature,model4,'-b 1');

[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f4,Yeast_f4_test_label);
dd = [ACC,SN,SP,PPV,NPV,F1,MCC];

%fold-5
model5=svmtrain(Yeast_f5_train_label,Yeast_f5_train_feature,'-c 120 -g 1000 -b 1');
[predictions_f5,accuracy5,dec_values5]=svmpredict(Yeast_f5_test_label,Yeast_f5_test_feature,model5,'-b 1');

[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f5,Yeast_f5_test_label);
ee = [ACC,SN,SP,PPV,NPV,F1,MCC];

R=[];
R=[aa;bb;cc;dd;ee];  