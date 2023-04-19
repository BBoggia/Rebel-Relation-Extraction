#!/usr/bin/env bash
curr_dir=$(pwd)

echo "Downloading datasets to ${curr_dir}/data"

mkdir -p data
mkdir -p data/datasets

wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/datasets/conll04/ -P ${curr_dir}/data/conll04
# wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/datasets/scierc/ -P ${curr_dir}/data/scierc
wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/datasets/ade/ -P ${curr_dir}/data/ade

# this download the end-to-end (joint) DocRED split
wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/jerex/public/datasets/docred_joint/ -P ${curr_dir}/data/docred_joint

# this only downloads the types.json file. See 'https://github.com/thunlp/DocRED' for download instructions
# of the original DocRED dataset
wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/jerex/public/datasets/docred/ -P ${curr_dir}/data/docred