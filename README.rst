
Covidseq
=========================

`Nextclade:https://clades.nextstrain.org <https://clades.nextstrain.org>`_

`GISAID <https://www.gisaid.org/epiflu-applications/covsurver-mutations-app/>`_

`NCBI Coronavirus genomes <https://www.ncbi.nlm.nih.gov/datasets/coronavirus/genomes/>`_

`pangolin <https://cov-lineages.org/resources/pangolin.html>`_

`cov-lineages pangolin <https://github.com/cov-lineages/pangolin>`_

`COVID-19 Genomic Epidemiology Toolkit <https://www.cdc.gov/amd/training/covid-19-gen-epi-toolkit.html>`_

## 2. 构建进化树：

`Olson Nathan D,Lund Steven P,Colman Rebecca E et al. Best practices for evaluating single nucleotide variant calling methods for microbial genomics.[J] .Front Genet, 2015, 6: 235. <https://www.frontiersin.org/articles/10.3389/fgene.2015.00235/full>`_

`O’Toole Á, Scher E, Underwood A, et al. Assignment of epidemiological lineages in an emerging pandemic using the pangolin tool[J]. Virus Evolution, 2021, 7(2): veab064. <https://academic.oup.com/ve/article/7/2/veab064/6315289>`_

pipeline
++++++++++++++++++++++

wget http://hgdownload.soe.ucsc.edu/goldenPath/wuhCor1/UShER_SARS-CoV-2/public-latest.masked.pb.gz

wget https://hgdownload.soe.ucsc.edu/goldenPath/wuhCor1/bigZips/wuhCor1.fa.gz

wget https://raw.githubusercontent.com/W-L/ProblematicSites_SARS-CoV2/master/problematic_sites_sarsCov2.vcf

`SARS-CoV-2 Phylogenetics tools UShER <https://usher-wiki.readthedocs.io/en/latest/tutorials.html>`_




command::

        mafft --thread 10 --auto --keeplength --addfragments test_samples.fa wuhCor1.fa > aligned_seqs.fa
        faToVcf -maskSites=problematic_sites_sarsCov2.vcf aligned_seqs.fa aligned_seqs.vcf
        usher -T 10 -i public-latest.all.masked.pb.gz -v aligned_seqs.vcf -o user_seqs.pb

software
==================

`IQ-TREE <http://www.iqtree.org/>`_

`virus-evolution gofasta <https://github.com/virus-evolution/gofasta>`_

`FastTree <http://www.microbesonline.org/fasttree/>`_

`lh3/minimap2 <https://github.com/lh3/minimap2>`_

`viral-ngs: genomic analysis pipelines for viral sequencing <https://viral-ngs.readthedocs.io/en/latest/index.html>`_

`Shovill Assemble bacterial isolate genomes from Illumina paired-end reads <https://github.com/tseemann/shovill>`_

`Viral deep sequencing needs an adaptive approach: IRMA, the iterative refinement meta-assembler <https://github.com/peterk87/irma>`_

`iVar: An amplicon-based sequencing framework for accurately measuring intrahost virus diversity using PrimalSeq and iVar <https://github.com/andersen-lab/ivar>`_

`V-pipe is a workflow designed for the analysis of next generation sequencing (NGS) data from viral pathogens. <https://github.com/cbg-ethz/V-pipe>`_

`fastv is an ultra-fast tool for identification of SARS-CoV-2 and other microbes from sequencing data. <https://github.com/OpenGene/fastv>`_

`Dryad - a pipeline to construct reference free core-genome or SNP phylogenetic trees for examining prokaryote relatedness in outbreaks. <https://staphb.org/staphb_toolkit/workflow_docs/dryad/>`_

`CECRET - A workflow for generating consensus sequences from single or paired-end fastq.gz or fastq reads from amplicon prepared Illumina libraries. <https://staphb.org/staphb_toolkit/workflow_docs/cecret/>`_

`Monroe - Bioinformatics pipeline for SARS-CoV-2 genome assembly and sample cluster detection. <https://staphb.org/staphb_toolkit/workflow_docs/monroe/>`_

`ARTIC on Illumina Bioinformatic Workflow <https://github.com/CDCgov/SARS-CoV-2_Sequencing/tree/master/protocols/BFX-UT_ARTIC_Illumina>`_


nextstrain
===================

`nextstrain view <https://docs.nextstrain.org/projects/cli/en/stable/commands/view/>`_



`Tracking SARS-CoV-2 variants <https://www.who.int/en/activities/tracking-SARS-CoV-2-variants/>`_


`SARS-CoV-2 Sequencing Resources <https://github.com/CDCgov/SARS-CoV-2_Sequencing>`_
