# artMS case study

# PH CANCER-----

# ph-global analysis----
setwd("~/github/alexproteomics/R4Core/day2-session2/artms_cs_ph-cancer/")

artmsQualityControlEvidenceBasic(evidence_file = "data/evidence.txt", 
                                 keys_file = "data/keys.txt", 
                                 prot_exp = "PH")

artmsQualityControlEvidenceExtended(evidence_file = "evidence.txt", 
                                    keys_file = "keys.txt")

artmsQualityControlSummaryExtended(summary_file = "summary.txt", 
                                   keys_file = "keys.txt")

artmsQuantification(yaml_config_file = "config-phglobal.yaml")

artmsAnalysisQuantifications(log2fc_file = "quant-phglobal-pre/phglobal-results.txt", 
                             modelqc_file = "quant-phglobal-pre/phglobal-results_ModelQC.txt", 
                             species = "human")

# ph-sites analysis-----

# protein to site evidence file conversion
artmsProtein2SiteConversion(evidence_file = "data/evidence.txt",
                            ref_proteome_file = "data/uniprot_canonical.fasta",
                            output_file = "data/phsites-evidence.txt",
                            mod_type = "PH")

artmsQuantification(yaml_config_file = "config-phsites.yaml", 
                    display_msstats = TRUE)

artmsAnalysisQuantifications(log2fc_file = "quant-phsites-pre/phsites-results.txt", 
                             modelqc_file = "quant-phsites-pre/phsites-results_ModelQC.txt", 
                             species = "human", 
                             isPtm = "ptmsites")


