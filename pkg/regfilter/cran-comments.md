#####################################################
#####################################################
#####################################################
# R CMD check results
── R CMD check results ──────────────────────────────────────────────────────────────────────────── regfilter 2.0 ────
Duration: 1m 11.7s

0 errors ✓ | 0 warnings ✓ | 0 notes ✓

#####################################################
#####################################################
#####################################################
# CRAN check results
## Test environments
- R-hub windows-x86_64-devel (r-devel)
- R-hub ubuntu-gcc-release (r-release)
- R-hub fedora-clang-devel (r-devel)

## R CMD check results
> On windows-x86_64-devel (r-devel), ubuntu-gcc-release (r-release), fedora-clang-devel (r-devel)
  checking CRAN incoming feasibility ... NOTE
  
  New submission
  
  Possibly misspelled words in DESCRIPTION:
    al (43:261)
  Maintainer: 'Juan Martin <juanmartin@usal.es>'
    et (43:258)

> On windows-x86_64-devel (r-devel), ubuntu-gcc-release (r-release), fedora-clang-devel (r-devel)
  checking DESCRIPTION meta-information ... NOTE
  Author field differs from that derived from Authors@R
    Authors@R: 'Juan Martin [aut, cre], José A. Sáez [aut], Emilio Corchado [aut], Pablo Morales [ctb], Julian Luengo [ctb], Luis P.F. Garcia [ctb], Ana C. Lorena [ctb], Andre C.P.L.F. de Carvalho [ctb], Francisco Herrera [ctb]'
    Author:    'Juan Martin [aut, cre], José A. Sáez [aut], Emilio Corchado [aut]'

> On windows-x86_64-devel (r-devel)
  checking for detritus in the temp directory ... NOTE
  Found the following files/directories:
    'lastMiKTeXException'

0 errors ✓ | 0 warnings ✓ | 3 notes x

### Explanation: 
NOTE: This package uses the approach proposed in Martin et al. (2021). Therefore, we have added the cite in description.

NOTE: This package is a derivative work of the NoiseFiltersR package, so we have added their authors.

NOTE: It is the first time we have submitted this package. We only update the copyright in version 1.0.1 

#####################################################
#####################################################
#####################################################
# Tests results
ℹ Loading regfilter
ℹ Testing regfilter
✓ | F W S  OK | Context
✓ |         4 | regAENN                                                                                               
✓ |         4 | regBBNR                                                                                               
✓ |         4 | regCNN                                                                                                
✓ |         4 | regCVCF                                                                                               
✓ |         4 | regDF [0.4s]                                                                                          
✓ |         4 | regEF                                                                                                 
✓ |         4 | regENN                                                                                                
✓ |         4 | regFMF [0.5s]                                                                                         
✓ |         4 | regGE                                                                                                 
✓ |         4 | regHRRF [0.1s]                                                                                        
✓ |         4 | regIPF [0.3s]                                                                                         
✓ |         4 | regIRF                                                                                                
✓ |         4 | regRND [3.8s]                                                                                         
✓ |         4 | regRNN                                                                                                

══ Results ═══════════════════════════════════════════════════════════════════════════════════════════════════════════
Duration: 5.5 s

[ FAIL 0 | WARN 0 | SKIP 0 | PASS 56 ]

#####################################################
#####################################################
#####################################################
# LICENSE comment
This package is a derivative work of the NoiseFiltersR package, licensed under GPL-3, of which it uses some conveniently modified and adapted functions. This code therefore is also licensed under the terms of the GNU Public License, version 3.