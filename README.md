# Brain-Lung-Axis

A single-cell RNA-seq analysis pipeline to study the neuro-immune interaction between brain and lung.

## Overview

This project analyzes lung tissues from adult C57BL/6J male mice under different conditions (control, LPS, SLC-Gq activation + LPS) using single-cell RNA sequencing. It focuses on how the subcoeruleus nucleus influences lung immune responses via the sympathetic nervous system.

## Features

- Quality control and preprocessing of scRNA-seq data  
- Doublet detection  
- Normalization, scaling, and batch correction (Harmony)  
- Dimensionality reduction (PCA, UMAP) and clustering (Leiden)  
- Cell type annotation and marker gene visualization  
- Differential expression and enrichment analysis  
- Visualization of cell composition and gene expression  

## Requirements

- Python 3.8+  
- scanpy, anndata, seaborn, matplotlib, scipy, harmonypy, scrublet
## License

MIT License
