wget -O conllu/sst-test.conllu https://raw.githubusercontent.com/UniversalDependencies/UD_Slovenian-SST/master/sl_sst-ud-test.conllu
wget -O conllu/sst-train.conllu https://raw.githubusercontent.com/UniversalDependencies/UD_Slovenian-SST/master/sl_sst-ud-train.conllu
wget -O conllu/janes-train.conllu https://raw.githubusercontent.com/clarinsi/babushka-bench/master/datasets/sl/janes-tag/train_normed.conllu
wget -O conllu/janes-test.conllu https://raw.githubusercontent.com/clarinsi/babushka-bench/master/datasets/sl/janes-tag/test_normed.conllu
wget -O conllu/janes-dev.conllu https://raw.githubusercontent.com/clarinsi/babushka-bench/master/datasets/sl/janes-tag/dev_normed.conllu
wget -O conllu/ssj500-train.conllu https://raw.githubusercontent.com/clarinsi/babushka-bench/master/datasets/sl/ssj500k/train.conllu
wget -O conllu/ssj500-dev.conllu https://raw.githubusercontent.com/clarinsi/babushka-bench/master/datasets/sl/ssj500k/dev.conllu
wget -O conllu/ssj500-test.conllu https://raw.githubusercontent.com/clarinsi/babushka-bench/master/datasets/sl/ssj500k/test.conllu
wget -O conllu/ssj-train.conllu https://raw.githubusercontent.com/UniversalDependencies/UD_Slovenian-SSJ/master/sl_ssj-ud-train.conllu
wget -O conllu/ssj-dev.conllu https://raw.githubusercontent.com/UniversalDependencies/UD_Slovenian-SSJ/master/sl_ssj-ud-dev.conllu
wget -O conllu/ssj-test.conllu https://raw.githubusercontent.com/UniversalDependencies/UD_Slovenian-SSJ/master/sl_ssj-ud-test.conllu

python lowercase_surface.py < conllu/ssj500-train.conllu > conllu/ssj500-train.lc.conllu
python lowercase_surface.py < conllu/ssj500-test.conllu > conllu/ssj500-test.lc.conllu
python lowercase_surface.py < conllu/ssj500-dev.conllu > conllu/ssj500-dev.lc.conllu
python lowercase_surface.py < conllu/ssj-train.conllu > conllu/ssj-train.lc.conllu
python lowercase_surface.py < conllu/ssj-test.conllu > conllu/ssj-test.lc.conllu
python lowercase_surface.py < conllu/ssj-dev.conllu > conllu/ssj-dev.lc.conllu
python lowercase_surface.py < conllu/janes-train.conllu > conllu/janes-train.lc.conllu
python lowercase_surface.py < conllu/janes-test.conllu > conllu/janes-test.lc.conllu
python lowercase_surface.py < conllu/janes-dev.conllu > conllu/janes-dev.lc.conllu

# merge ssj500 and sst data
cat conllu/ssj500-train.lc.conllu conllu/ssj500-dev.lc.conllu conllu/ssj500-test.lc.conllu > conllu/ssj500-all.conllu
rm -rf conllu/sst+ssj500-train.conllu
for i in {1..20};do cat conllu/sst-train.conllu >> conllu/sst+ssj500-train.conllu; done
cat conllu/ssj500-all.conllu >> conllu/sst+ssj500-train.conllu

# merge janes and sst data
cat conllu/janes-train.lc.conllu conllu/janes-dev.lc.conllu conllu/janes-test.lc.conllu > conllu/janes-all.conllu
cat conllu/sst-train.conllu conllu/sst-train.conllu conllu/sst-train.conllu conllu/sst-train.conllu conllu/janes-all.conllu > conllu/sst+janes-train.conllu
