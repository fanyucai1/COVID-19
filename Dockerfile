FROM covlineages/pangolin:latest
RUN conda install -c conda-forge nodejs
RUN mkdir -p /root/nextclade/ && mkdir -p /root/ref_fasta
COPY NC_045512.2.fa /root/ref_fasta/
RUN ln -s /opt/conda/bin/nextclade /root/nextclade/
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple seaborn matplotlib numpy
RUN conda install -c bioconda nextclade
RUN nextclade dataset get --name='sars-cov-2' --output-dir='/root/nextclade/'