FROM covlineages/pangolin:latest
RUN conda install -c conda-forge nodejs
RUN mkdir -p /root/nextclade/ && mkdir -p /root/ref_fasta
COPY NC_045512.2.fa /root/ref_fasta/
RUN ln -s /opt/conda/bin/nextclade /root/nextclade/
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple seaborn matplotlib numpy
RUN conda install -c bioconda nextclade
RUN nextclade dataset get --name='sars-cov-2' --output-dir='/root/nextclade/'
RUN cd /usr/bin/ && wget https://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/faToVcf && chmod 777 faToVcf
RUN conda install -c bioconda fasttree usher mafft minimap2 samtools bwa bowtie bowtie2 ivar quast iqtree PRINSEQ fastv