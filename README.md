# MIKES MELOIDOGYNE ASSEMBLY WORKFLOW



### some modules of the workflow require installation independently


#### one of these is blobtools


#### BLOBTOOLS installation

##### to install blobtools run the following commands from the working directory of the WORKFLOW
##### ie, from the directory above data/, reports/, etc, in this case, M_hap_assembly/

git clone https://github.com/DRL/blobtools.git

##### then cd to the blobtools directory

cd blobtools/

##### the NCBI tax database needs installing next

wget ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/taxdump.tar.gz -P data/
tar zxf data/taxdump.tar.gz -C data/ nodes.dmp names.dmp
./blobtools nodesdb --nodes data/nodes.dmp --names data/names.dmp


