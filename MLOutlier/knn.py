# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import pandas as pd

from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.neighbors import KNeighborsClassifier

data=pd.read_csv("/Users/HP/.spyder-py3/apndcts.csv")

predictors =data.iloc[:,0:7]

target =data.iloc[:,7]

predictors_train, predictors_test, target_train, target_test= train_test_split(predictors,target, 
                                                                                test_size = 0.3, random_state=123)

nn=KNeighborsClassifier(n_neighbors = 3)

model= nn.fit(predictors_train, target_train)

nn.score(predictors_test, target_test)

