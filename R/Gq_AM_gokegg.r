library(org.Hs.eg.db)
library(org.Mm.eg.db)
library(AnnotationDbi)
library(DESeq2)
library(pheatmap)
library(ggplot2)
library(clusterProfiler)
genes = read.csv("DEG.csv", header = TRUE, sep = ",")

genes$ENTREZID <- mapIds(org.Mm.eg.db, 
                         keys = genes$Symbol, 
                         column = "ENTREZID", 
                         keytype = "SYMBOL",   
                         multiVals = "first")
enrich.go <- enrichGO(gene = genes$Symbol,
                       OrgDb = 'org.Mm.eg.db',
                         keyType = 'SYMBOL',
                           ont = 'ALL',
                             pAdjustMethod = 'fdr',
                               pvalueCutoff = 1, qvalueCutoff = 1)
write.table(enrich.go, 'enrich_go_DEG_total.csv', sep = ',', row.names = FALSE, quote = FALSE)


enrich.kegg <- enrichKEGG(gene = genes$ENTREZID, 
                          organism = "mmu", 
                          pvalueCutoff = 1, qvalueCutoff = 1)
write.table(enrich.kegg, 'enrich_KEGG_DEG_total.csv', sep = ',', row.names = FALSE, quote = FALSE)




