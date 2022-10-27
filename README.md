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
| baseline | 94.95 | 89.61 | 89.81 | 87.18 |
| baseline+ssj500 | 96.07 | 93.71 | 93.00 | 91.43 |
| baseline+janes | 95.72 | 92.42 | 92.20 | 90.21 |
| baseline+ssj500+janes | 96.03 | 94.03 | 93.21 | 91.42 |
| classla_standard | 85.94 | 82.02 | 80.78 | 75.72 |
| classla_nonstandard | 86.53 | 84.21 | 83.75 | 78.34 |
| stanza | 93.26 | 87.67 | 87.64 | 84.63 |

## Lemmatizer training

Lemmatizer training is covered in the train_lemmatizers.sh script. 

The evaluation results (evaluate lemmatizers.sh) are these:

| model | lemma |
| - | - |
| baseline | 97.22 |
| baseline+ssj500 | 98.07 |
| baseline+janes | 97.71 |
| baseline+ssj500+janes | 98.09 |
| classla_standard | 96.63 |
| classla_nonstandard | 93.68 |
| stanza | 94.15 |

## Parser training

Parser training is covered in the train_parsers.sh script.

The evaluation results (evaluate_parsers.sh) are these:

| model | LAS | MLAS | BLEX |
| - | - | - | - |
| baseline | 67.11 | 55.71 | 61.59 |
| baseline+ssj | 72.14 | 63.26 | 67.97 |
| classla | 56.00 | 40.47 | 50.65 |
| stanza | 55.26 | 42.52 | 46.72 |
