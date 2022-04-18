
Covidseq
=========================

`Nextclade:https://clades.nextstrain.org <https://clades.nextstrain.org>`_

`GISAID <https://www.gisaid.org/epiflu-applications/covsurver-mutations-app/>`_

`NCBI Coronavirus genomes <https://www.ncbi.nlm.nih.gov/datasets/coronavirus/genomes/>`_

`pangolin <https://cov-lineages.org/resources/pangolin.html>`_

`COVID-19 Genomic Epidemiology Toolkit.pdf <./COVID-19 Genomic Epidemiology Toolkit.pdf>`

## 2. 构建进化树：

[Olson Nathan D,Lund Steven P,Colman Rebecca E et al. Best practices for evaluating single nucleotide variant calling methods for microbial genomics.[J] .Front Genet, 2015, 6: 235.](https://www.frontiersin.org/articles/10.3389/fgene.2015.00235/full)


Database
++++++++++++++++++++++

wget http://hgdownload.soe.ucsc.edu/goldenPath/wuhCor1/UShER_SARS-CoV-2/public-latest.masked.pb.gz

wget https://hgdownload.soe.ucsc.edu/goldenPath/wuhCor1/bigZips/wuhCor1.fa.gz

wget https://raw.githubusercontent.com/W-L/ProblematicSites_SARS-CoV2/master/problematic_sites_sarsCov2.vcf

`SARS-CoV-2 Phylogenetics tools UShER <https://usher-wiki.readthedocs.io/en/latest/tutorials.html>`_

command::

        mafft --thread 10 --auto --keeplength --addfragments test_samples.fa wuhCor1.fa > aligned_seqs.fa
        faToVcf -maskSites=problematic_sites_sarsCov2.vcf aligned_seqs.fa aligned_seqs.vcf
        usher -T 10 -i public-latest.all.masked.pb.gz -v aligned_seqs.vcf -o user_seqs.pb
