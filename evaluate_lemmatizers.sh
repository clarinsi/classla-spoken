cd ..
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file baseline --eval_file classla-spoken/out/sst-test.baseline.pos.conllu --output_file classla-spoken/out/sst-test.baseline.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/baseline --mode predict
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file baseline --eval_file classla-spoken/out/sst-test.baseline-wolex.pos.conllu --output_file classla-spoken/out/sst-test.baseline-wolex.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/baseline --mode predict
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file baseline+ssj500 --eval_file classla-spoken/out/sst-test.baseline+ssj500.pos.conllu --output_file classla-spoken/out/sst-test.baseline+ssj500.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/baseline+ssj500 --mode predict
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file baseline+ssj500 --eval_file classla-spoken/out/sst-test.baseline+ssj500-wolex.pos.conllu --output_file classla-spoken/out/sst-test.baseline+ssj500-wolex.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/baseline+ssj500 --mode predict
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file baseline+janes --eval_file classla-spoken/out/sst-test.baseline+janes.pos.conllu --output_file classla-spoken/out/sst-test.baseline+janes.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/baseline+janes --mode predict
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file baseline+janes --eval_file classla-spoken/out/sst-test.baseline+janes-wolex.pos.conllu --output_file classla-spoken/out/sst-test.baseline+janes-wolex.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/baseline+janes --mode predict
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file baseline+ssj500+janes --eval_file classla-spoken/out/sst-test.baseline+ssj500+janes.pos.conllu --output_file classla-spoken/out/sst-test.baseline+ssj500+janes.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/baseline+ssj500+janes --mode predict
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file baseline+ssj500+janes --eval_file classla-spoken/out/sst-test.baseline+ssj500+janes-wolex.pos.conllu --output_file classla-spoken/out/sst-test.baseline+ssj500+janes-wolex.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/baseline+ssj500+janes --mode predict
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file classla_standard --eval_file classla-spoken/out/sst-test.classla_standard.pos.conllu --output_file classla-spoken/out/sst-test.classla_standard.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/classla_standard --mode predict
python -m classla.models.lemmatizer --model_dir classla-spoken/models/lemma/ --model_file classla_nonstandard --eval_file classla-spoken/out/sst-test.classla_nonstandard.pos.conllu --output_file classla-spoken/out/sst-test.classla_nonstandard.pos.lemma.conllu --gold_file classla-spoken/conllu/sst-test.conllu --pos_model_path classla-spoken/models/pos/classla_standard --mode predict # classla_standard is used because classla_nonstandard raises an error
