# classla-spoken

Pilot experiments in processing transcripts of spoken data (SST test data).

## Data preparation

The data prep is handled with the get_data.sh script. It harvests data from babushka-bench and the UD github. It further lowercases tokens of JANES and SSJ500 data. Finally, it skips tokens with spaces (normalized JANES stuff).

## Tagger training

Tagger training is covered in the train_taggers.sh script.

## Lemmatizer training

## Parser training

