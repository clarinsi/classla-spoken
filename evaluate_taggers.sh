python remove_annotations.py < conllu/sst-test.conllu > conllu/sst-test.empty.conllu
cd ..
python -m classla.models.tagger --save_dir classla-spoken/models/pos/ --save_name baseline --eval_file classla-spoken/conllu/sst-test.empty.conllu --output_file classla-spoken/out/sst-test.baseline.pos.conllu --gold_file classla-spoken/conllu/sst-test.conllu --shorthand sl_ssj --mode predict
python -m classla.models.tagger --save_dir classla-spoken/models/pos/ --save_name baseline+ssj500 --eval_file classla-spoken/conllu/sst-test.empty.conllu --output_file classla-spoken/out/sst-test.baseline+ssj500.pos.conllu --gold_file classla-spoken/conllu/sst-test.conllu --shorthand sl_ssj --mode predict
python -m classla.models.tagger --save_dir classla-spoken/models/pos/ --save_name baseline+janes --eval_file classla-spoken/conllu/sst-test.empty.conllu --output_file classla-spoken/out/sst-test.baseline+janes.pos.conllu --gold_file classla-spoken/conllu/sst-test.conllu --shorthand sl_ssj --mode predict
python -m classla.models.tagger --save_dir classla-spoken/models/pos/ --save_name baseline+ssj500+janes --eval_file classla-spoken/conllu/sst-test.empty.conllu --output_file classla-spoken/out/sst-test.baseline+ssj500+janes.pos.conllu --gold_file classla-spoken/conllu/sst-test.conllu --shorthand sl_ssj --mode predict
python -m classla.models.tagger --save_dir classla-spoken/models/pos/ --save_name classla_standard --eval_file classla-spoken/conllu/sst-test.empty.conllu --output_file classla-spoken/out/sst-test.classla_standard.pos.conllu --gold_file classla-spoken/conllu/sst-test.conllu --shorthand sl_ssj --mode predict
python -m classla.models.tagger --save_dir classla-spoken/models/pos/ --save_name classla_nonstandard --eval_file classla-spoken/conllu/sst-test.empty.conllu --output_file classla-spoken/out/sst-test.classla_nonstandard.pos.conllu --gold_file classla-spoken/conllu/sst-test.conllu --shorthand sl_ssj --mode predict
