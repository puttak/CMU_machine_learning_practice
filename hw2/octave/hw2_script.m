% Point to data directory here% By default, we are pointing to '../data/'data_dir = ['/Users/yuxingchen/Desktop/hw2/', filesep(), 'data'];% Load vocabulary file into cell array% You will not need the vocabulary for any of the homework questions.% It is provided for your reference.% Uncomment the next line if csv2cell function is not installed% pkg install -forge io% pkg load io% vocabulary = csv2cell([data_dir, filesep(), 'vocabulary.csv']);% Load data filesXTrain = csvread([data_dir, filesep(), 'XTrain.csv']);yTrain = csvread([data_dir, filesep(), 'yTrain.csv']);XTrainSmall = csvread([data_dir, filesep(), 'XTrainSmall.csv']);yTrainSmall = csvread([data_dir, filesep(), 'yTrainSmall.csv']);XTest = csvread([data_dir, filesep(), 'XTest.csv']);yTest = csvread([data_dir, filesep(), 'yTest.csv']);% TODO: Test logProd function, defined in logProd.m% TODO: Test NB_XGivenY function, defined in NB_XGivenY.m% TODO: Test NB_YPrior function, defined in NB_YPrior.m% TODO: Test NB_Classify function, defined in NB_Classify.m% TODO: Test classificationError function, defined in classificationError.m% TODO: Run experiments outlined in HW2 PDF