# Code Book

This code book summarizes the resulting data fields in 'tidy.txt'.

## Identifiers

* 'subject' - The ID of the test subject. Its range is from 1 to 30.
* 'activity' - Activity name

## Measurements

1. "tBodyAccMeanX"               
2. "tBodyAccMeanY"               
3. "tBodyAccMeanZ"               
4. "tBodyAccStdX"                
5. "tBodyAccStdY"                
6. "tBodyAccStdZ"                
7. "tGravityAccMeanX"            
8. "tGravityAccMeanY"            
9. "tGravityAccMeanZ"            
10. "tGravityAccStdX"             
11. "tGravityAccStdY"             
12. "tGravityAccStdZ"             
13. "tBodyAccJerkMeanX"           
14. "tBodyAccJerkMeanY"           
15. "tBodyAccJerkMeanZ"           
16. "tBodyAccJerkStdX"            
17. "tBodyAccJerkStdY"            
18. "tBodyAccJerkStdZ"            
19. "tBodyGyroMeanX"              
20. "tBodyGyroMeanY"              
21. "tBodyGyroMeanZ"              
22. "tBodyGyroStdX"               
23. "tBodyGyroStdY"               
24. "tBodyGyroStdZ"               
25. "tBodyGyroJerkMeanX"          
26. "tBodyGyroJerkMeanY"          
27. "tBodyGyroJerkMeanZ"          
28. "tBodyGyroJerkStdX"           
29. "tBodyGyroJerkStdY"           
30. "tBodyGyroJerkStdZ"           
31. "tBodyAccMagMean"             
32. "tBodyAccMagStd"              
33. "tGravityAccMagMean"          
34. "tGravityAccMagStd"           
35. "tBodyAccJerkMagMean"         
36. "tBodyAccJerkMagStd"          
37. "tBodyGyroMagMean"            
38. "tBodyGyroMagStd"             
39. "tBodyGyroJerkMagMean"        
40. "tBodyGyroJerkMagStd"         
41. "fBodyAccMeanX"               
42. "fBodyAccMeanY"               
43. "fBodyAccMeanZ"               
44. "fBodyAccStdX"                
45. "fBodyAccStdY"                
46. "fBodyAccStdZ"                
47. "fBodyAccMeanFreqX"           
48. "fBodyAccMeanFreqY"           
49. "fBodyAccMeanFreqZ"           
50. "fBodyAccJerkMeanX"           
51. "fBodyAccJerkMeanY"           
52. "fBodyAccJerkMeanZ"           
53. "fBodyAccJerkStdX"            
54. "fBodyAccJerkStdY"            
55. "fBodyAccJerkStdZ"            
56. "fBodyAccJerkMeanFreqX"       
57. "fBodyAccJerkMeanFreqY"       
58. "fBodyAccJerkMeanFreqZ"       
59. "fBodyGyroMeanX"              
60. "fBodyGyroMeanY"              
61. "fBodyGyroMeanZ"              
62. "fBodyGyroStdX"               
63. "fBodyGyroStdY"               
64. "fBodyGyroStdZ"               
65. "fBodyGyroMeanFreqX"          
66. "fBodyGyroMeanFreqY"          
67. "fBodyGyroMeanFreqZ"          
68. "fBodyAccMagMean"             
69. "fBodyAccMagStd"              
70. "fBodyAccMagMeanFreq"         
71. "fBodyBodyAccJerkMagMean"     
72. "fBodyBodyAccJerkMagStd"      
73. "fBodyBodyAccJerkMagMeanFreq" 
74. "fBodyBodyGyroMagMean"        
75. "fBodyBodyGyroMagStd"         
76. "fBodyBodyGyroMagMeanFreq"    
77. "fBodyBodyGyroJerkMagMean"    
78. "fBodyBodyGyroJerkMagStd"     
79. "fBodyBodyGyroJerkMagMeanFreq"

## Activity during the test (Labels)

1. "WALKING": subject was walking 
2. "WALKING_UPSTAIRS": subject was walking up a staircase
3. "WALKING_DOWNSTAIRS": subject was walking down a staircase
4. "SITTING": subject was sitting
5. "STANDING": subject was standing
6. "LAYING": subject was laying down
 
## Show a few variables of the dataset

```r
str(allData.mean)
```

```
'data.frame':	180 obs. of  81 variables:
 $ subject                     : Factor w/ 30 levels "1","2","3","4",..: 1 1 1 1 1 1 2 2 2 2 ...
 $ activity                    : Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 1 2 3 4 5 6 1 2 3 4 ...
 $ tBodyAccMeanX               : num  0.277 0.255 0.289 0.261 0.279 ...
 $ tBodyAccMeanY               : num  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
 $ tBodyAccMeanZ               : num  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
 ...
 $ fBodyBodyGyroJerkMagMeanFreq: num  0.191 0.114 0.19 0.185 0.334 ...
```
 
## Show a few rows of the dataset

```r
head(allData.mean)
```

```
  subject           activity tBodyAccMeanX tBodyAccMeanY tBodyAccMeanZ ... fBodyBodyGyroJerkMagMeanFreq
1       1            WALKING     0.2773308  -0.017383819    -0.1111481 ...                    0.1906634
2       1   WALKING_UPSTAIRS     0.2554617  -0.023953149    -0.0973020 ...                    0.1142773
3       1 WALKING_DOWNSTAIRS     0.2891883  -0.009918505    -0.1075662 ...                    0.1900007
4       1            SITTING     0.2612376  -0.001308288    -0.1045442 ...                    0.1847759
5       1           STANDING     0.2789176  -0.016137590    -0.1106018 ...                    0.3344987
6       1             LAYING     0.2215982  -0.040513953    -0.1132036 ...                    0.1764859
```

## Summary of variables

```r
summary(allData.mean)
```

```
    subject                  activity  tBodyAccMeanX     tBodyAccMeanY       tBodyAccMeanZ   ... 
 1      :  6   WALKING           :30   Min.   :0.2216  Min.   :-0.040514   Min.   :-0.15251  ...
 2      :  6   WALKING_UPSTAIRS  :30   1st Qu.:0.2712  1st Qu.:-0.020022   1st Qu.:-0.11207  ...
 3      :  6   WALKING_DOWNSTAIRS:30   Median :0.2770  Median :-0.017262   Median :-0.10819  ...
 4      :  6   SITTING           :30   Mean   :0.2743  Mean   :-0.017876   Mean   :-0.10916  ...
 5      :  6   STANDING          :30   3rd Qu.:0.2800  3rd Qu.:-0.014936   3rd Qu.:-0.10443  ... 
 6      :  6   LAYING            :30   Max.   :0.3015  Max.   :-0.001308   Max.   :-0.07538  ...
 (Other):144                                           
 
fBodyBodyGyroJerkMagMeanFreq
Min.   :-0.18292            
1st Qu.: 0.05423            
Median : 0.11156            
Mean   : 0.12592            
3rd Qu.: 0.20805            
Max.   : 0.42630 
```
