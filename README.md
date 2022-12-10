# classla-spoken

Pilot experiments in processing transcripts of spoken data (SST test data).

## Data preparation

The data prep is handled with the get_data.sh script. It harvests data from babushka-bench and the UD github. It further lowercases tokens of JANES and SSJ500 data. Finally, it skips tokens with spaces (normalized JANES stuff).

## Setup

We discriminate between four different models on the `pos` and the `lemma` level, and compare to the two official classla models (not trained on SST):

- baseline - only sst training data
- baseline+ssj500 - sst training data repeated 20 times + ssj500 lowercased surface layer data
- baseline+janes - sst training data repeated 4 times + janes normalized lowercased surface layer data
- baseline+ssj500+janes - sst training data repeated 20 times + janes normalized lowercased surface layer data repeated 4 times + ssj500 lowercased surface layer data
- classla_standard - the standard Slovenian model published on clarin.si
- classla_nonstandard - the non-standard Slovenian model published on clarin.si

We discriminate between two different models on the `depparse` level, and compare to the official classla model:

- baseline - only sst training data
- baseline+ssj - sst training data repeated 12 times + ssj lowercased surface layer data
- classla - the parsing model published on clarin.si

## Tagger training

Tagger training is covered in the train_taggers.sh script.

The evaluation results (evaluate taggers.sh) are these:

| model | UPOS | XPOS | UFeats | AllTags |
| - | - | - | - | - |
| [baseline](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline.pos.conllu) | 95.44 | 91.74 | 87.57 | 85.98 |
| baseline without lexicon | 94.72 | 89.55 | 89.73 | 87.15 |
| [baseline+ssj500](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline+ssj500.pos.conllu) | 96.20 | 94.09 | 89.90 | 88.53 |
| baseline+ssj500 without lexicon | 96.10 | 93.85 | 93.25 | 91.58 |
| [baseline+janes](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline+janes.pos.conllu) | 95.99 | 93.52 | 89.28 | 87.81 |
| baseline+janes without lexicon | 95.66 | 92.63 | 92.46 | 90.30 |
| [baseline+ssj500+janes](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline+ssj500+janes.pos.conllu) | 96.12 | 94.37 | 90.08 | 88.59 |
| baseline+ssj500+janes | 95.95 | 94.02 | 93.46 | 91.48 |
| [classla_standard](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.classla_standard.pos.conllu) | 85.94 | 82.02 | 80.78 | 75.72 |
| [classla_nonstandard](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.classla_nonstandard.pos.conllu) | 86.53 | 84.21 | 83.75 | 78.34 |
| stanza | 93.26 | 87.67 | 87.64 | 84.63 |

## Lemmatizer training

Lemmatizer training is covered in the train_lemmatizers.sh script. 

The evaluation results (evaluate lemmatizers.sh) are these:

| model | lemma |
| - | - |
| [baseline](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline.pos.lemma.conllu) | 97.87 |
| baseline without lexicon | 96.96 |
| [baseline+ssj500](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline+ssj500.pos.lemma.conllu) | 98.33 |
| baseline+ssj500 without lexicon | 98.07 |
| [baseline+janes](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline+janes.pos.lemma.conllu) | 98.22 |
| baseline+janes without lexicon | 97.63 |
| [baseline+ssj500+janes](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline+ssj500+janes.pos.lemma.conllu) | 98.27 |
| baseline+ssj500+janes without lexicon | 97.98 |
| [classla_standard](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.classla_standard.pos.lemma.conllu) | 97.24 |
| [classla_nonstandard](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.classla_nonstandard.pos.lemma.conllu) | 93.68 |
| stanza | 94.15 |

## Parser training

Parser training is covered in the train_parsers.sh script.

The evaluation results (evaluate_parsers.sh) are these:

| model | LAS | MLAS | BLEX |
| - | - | - | - |
| [baseline](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline.pos.lemma.depparse.conllu) | 66.11 | 53.29 | 60.78 |
| baseline without lexicon | 66.72 | 55.53 | 60.99 |
| [baseline+ssj](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.baseline+ssj.pos.lemma.depparse.conllu) | 71.13 | 59.78 | 66.77 |
| baseline+ssj without lexicon | 72.16 | 63.37 | 67.81 |
| [classla](https://github.com/clarinsi/classla-spoken/blob/main/out/sst-test.classla.pos.lemma.depparse.conllu) | 56.42 | 41.81 | 51.48 |
| stanza | 55.26 | 42.52 | 46.72 |
