include: "rules/common.smk"



# -----------------------------------------------


rule all:
    input:
        ##expand('raw/qc/fastqc/{sample}_{pair}_001_fastqc.{ext}', sample=sample_names, pair=['R1', 'R2'], ext=['html', 'zip']),
        #expand('trm/{sample}_{pair}.fq.gz', sample=sample_names, pair=['R1','R2']), 
	    ##expand('bbmap/{sample}.{ext}', sample=sample_names, ext=['bam', 'bam.bai']),
	    ##'ref/genome/1/summary.txt',
	    ##expand('bbmap/{sample}.bam', sample=ids['sample']),
	    ##expand('bbmap/{sample}.done', sample=ids['sample']),
	    ###expand('bbmap/{id}.{ext}', id=ids['sample'], ext=['bam', 'bam.bai']),
	    ##'vars/bam.list',
	    ##'vars/ta_init.vcf',
	    ##expand('vars/ta{type}.vcf', type=['SubInDel', 'InDel', 'Sub']),
        #expand('vars/ta{type}.zarr/.zgroup', type=['SubInDel', 'InDel', 'Sub']),
        #'vars/tapopsOrd.txt',
        #expand('vars/ta{vartype}Bypop.vcf', vartype=['SubInDel', 'InDel', 'Sub']),
	    #expand('vars/ta{vartype}/al.done', vartype=['SubInDel', 'InDel', 'Sub']),
	    #expand('vars/ta{type}/stats/vcftools/king.done', type=['SubInDel', 'InDel', 'Sub']),
	    #expand('vars/ta{vartype}/stats/gemma/vars_seg.gemma.scafbp', vartype=['SubInDel', 'InDel', 'Sub']), ### output for rule alStats and input for rule gemma
	    ##expand('vars/ta{vartype}/stats/gemma/ta{vartype}.mg', vartype=['SubInDel', 'InDel', 'Sub']),
	    #expand('vars/taSubInDel/stats/gemma/taSubInDel.{sets}.mg', sets=['ldp', 'seg']),
	    ####expand('vars/taSubInDel/stats/gemma/taSubInDel.pheno', vartype=['SubInDel', 'InDel', 'Sub']),
	    ###'vars/taSubInDel/stats/gemma/relmat/ctrd.done',#
	    #expand('vars/taSubInDel/stats/gemma/taSubInDel.{sets}.stdzd.relmat', sets=['ldp', 'seg']),
	    #expand('vars/taSubInDel/stats/gemma/taSubInDel.{sets}.ctrd.relmat', sets=['ldp', 'seg']),
	    #expand('vars/taSubInDel/stats/gemma/taSubInDel.{sets}.typ.txt', sets=['ldp', 'seg']),
	    #'vars/taSubInDel.seg.vcf', 
	    #'vars/taSubInDel.ldp.vcf',
	    #expand('vars/ta{type}/figs/vcftools/plots.done', type=['SubInDel', 'InDel', 'Sub']),
        #'vars/taSubInDel/stats/ngsRelate/stats.txt',
	    #'vars/taSubInDel/relStats.done',









# -----------------------------------------------


include: "rules/hts.smk"
include: "rules/vars.smk"
include: "rules/vcftls.smk"
include: "rules/stats.smk"




