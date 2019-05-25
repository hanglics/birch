#QA
# python eval_bert.py 2 0.83 0.2 0 > run.QA.cv.0
# python eval_bert.py 2 0.83 0.2 1 > run.QA.cv.1
# python eval_bert.py 2 0.83 0.4 2 > run.QA.cv.2
# python eval_bert.py 2 0.83 0.2 3 > run.QA.cv.3
# python eval_bert.py 2 0.83 0.2 4 > run.QA.cv.4
# cat run.QA.cv.* > run.QA.cv

#MB 5 folders
# python eval_bert.py 2 0.66 0.1 0 test 
# python eval_bert.py 2 0.59 0.1 1 test 
# python eval_bert.py 2 0.67 0.1 2 test 
# python eval_bert.py 2 0.55 0.1 3 test 
# python eval_bert.py 2 0.59 0.1 4 test
# cat run.MB.cv.test.* > run.MB.cv

#MB 2 folders
# python eval_bert.py 2 0.63 0.1 0 test
# python eval_bert.py 2 0.56 0.1 1 test
# cat run.MB.cv.test.* > run.MB.foder1.cv

# python3 compare_runs.py --base run.robust04.rm3 --comparison run.QA.cv --qrels
# qrels.robust04.txt --metric map

# python3 compare_runs.py --base run.robust04.rm3 --comparison run.MB.cv --qrels
# qrels.robust04.txt --metric map

## CAR-Core17 5 folders alpha
# python eval_bert.py 3 0.6 0 0 0 test
# python eval_bert.py 3 0.6 0 0 1 test
# python eval_bert.py 3 0.5 0 0 2 test
# python eval_bert.py 3 0.5 0 0 3 test
# python eval_bert.py 3 0.6 0 0 4 test
# cat run.car_core17_test.cv.test.* > run.car_core17_test.cv.a

## CAR-Core17 5 folders alpha + beta
# python eval_bert.py 3 0.6 0.8 0 0 test
# python eval_bert.py 3 0.6 0.9 0 1 test
# python eval_bert.py 3 0.5 0.8 0 2 test
# python eval_bert.py 3 0.5 0.8 0 3 test
## python eval_bert.py 3 0.6 0.7 0 4 test
# cat run.car_core17_test.cv.test.* > run.car_core17_test.cv.b

## CAR-Core17 5 folders alpha + beta + gamma
# python eval_bert.py 3 0.6 0.8 0 0 test
# python eval_bert.py 3 0.6 0.7 0.4 1 test
# python eval_bert.py 3 0.6 0.7 0.4 2 test
# python eval_bert.py 3 0.5 0.4 0.6 3 test
# python eval_bert.py 3 0.6 0.7 0 4 test
# cat run.car_core17_test.cv.test.* > run.car_core17_test.cv.c

 python eval_bert.py --experiment car_core17_test --index_path /tuna1/indexes/lucene-index.core17.pos+docvectors+rawdocs --collection core17 --qrels qrels.core17.txt --bm25_res core17_bm25_rm3_cv_sent.txt --folds_path core17-5-folds.json 3 0.6 0 0 0 all
 python eval_bert.py --experiment car_core17_test --index_path /tuna1/indexes/lucene-index.core17.pos+docvectors+rawdocs --collection core17 --qrels qrels.core17.txt --bm25_res core17_bm25_rm3_cv_sent.txt --folds_path core17-5-folds.json 3 0.6 0.9 0 0 all
 python eval_bert.py --experiment car_core17_test --index_path /tuna1/indexes/lucene-index.core17.pos+docvectors+rawdocs --collection core17 --qrels qrels.core17.txt --bm25_res core17_bm25_rm3_cv_sent.txt --folds_path core17-5-folds.json 3 0.6 0.7 0.4 0 all