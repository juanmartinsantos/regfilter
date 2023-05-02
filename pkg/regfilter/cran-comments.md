#####################################################
#####################################################
#####################################################
# R CMD check results
── R CMD check results ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── regfilter 1.0.1 ────
Duration: 1m 11.3s

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
❯ On windows-x86_64-devel (r-devel)
  checking for detritus in the temp directory ... NOTE
  Found the following files/directories:
    'lastMiKTeXException'

❯ On ubuntu-gcc-release (r-release), fedora-clang-devel (r-devel)
  checking HTML version of manual ... NOTE
  Skipping checking HTML validation: no command 'tidy' found

0 errors ✔ | 0 warnings ✔ | 2 notes ✖

#####################################################
#####################################################
#####################################################
# Tests results
ℹ Loading regfilter
ℹ Testing regfilter
✓ | F W S  OK | Context
✓ |        20 | regAENN [0.2s]                                                                                                                                              
✓ |        20 | regBBNR [0.6s]                                                                                                                                              
✓ |        18 | regCNN [0.5s]                                                                                                                                               
✓ |        20 | regCVCF [0.6s]                                                                                                                                              
✓ |        20 | regDF [6.0s]                                                                                                                                                
✓ |        20 | regEF [0.8s]                                                                                                                                                
✓ |        20 | regENN [0.1s]                                                                                                                                               
✓ |        18 | regFMF [6.6s]                                                                                                                                               
✓ |        20 | regGE [0.2s]                                                                                                                                                
✓ |        18 | regHRRF [1.2s]                                                                                                                                              
✓ |        20 | regIPF [2.9s]                                                                                                                                               
✓ |        18 | regIRF [0.2s]                                                                                                                                               
✓ |        20 | regRND [1.8s]                                                                                                                                               
✓ |        18 | regRNN [0.7s]                                                                                                                                               

══ Results ═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Duration: 22.5 s

[ FAIL 0 | WARN 0 | SKIP 0 | PASS 270 ]

#####################################################
#####################################################
#####################################################
# LICENSE comment
This package is a derivative work of the NoiseFiltersR package, licensed under GPL-3, of which it uses some conveniently modified and adapted functions. This code therefore is also licensed under the terms of the GNU Public License, version 3.
