# classla-spoken

Pilot experiments in processing transcripts of spoken data (SST test data).

## Data preparation

The data prep is handled with the get_data.sh script. It harvests data from babushka-bench and the UD github. It further lowercases tokens of JANES and SSJ500 data. Finally, it skips tokens with spaces (normalized JANES stuff).

## Setup

We discriminate between four different models on the `pos` and the `lemma` level:

- baseline - only sst training data
- baseline+ssj500 - sst training data repeated 20 times + ssj lowercased surface layer data
- baseline+janes - sst training data repeated 4 times + janes normalized lowercased surface layer data
- baseline+ssj500+janes - sst training data repeated 20 times + janes normalized lowercased surface layer data repeated 4 times + ssj lowercased surface layer data
- classla_standard - the standard Slovenian model published on clarin.si
- classla_nonstandard - the non-standard Slovenian model published on clarin.si

## Tagger training

Tagger training is covered in the train_taggers.sh script.

The evaluation results are these:

| model | UPOS | XPOS | UFeats | AllTags |
| - | - | - | - | - |
| baseline | 94.95 | 89.61 | 89.81 | 87.18 |
| baseline+ssj500 | 96.07 | 93.71 | 93.00 | 91.43 |
| baseline+janes | 95.72 | 92.42 | 92.20 | 90.21 |
| baseline+ssj500+janes | 96.03 | 94.03 | 93.21 | 91.42 |
| classla_standard | 85.94 | 82.02 | 80.78 | 75.72 |
| classla_nonstandard | 86.53 | 84.21 | 83.75 | 78.34 |

## Lemmatizer training

Lemmatizer training is covered in the train_lemmatizers.sh script. 

The evaluation results are these:

## Parser training


