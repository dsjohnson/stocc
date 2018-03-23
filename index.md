# Welcome to stocc
This is the home of the R package *stocc* for Bayesian inference of spatial occupancy data

## Installing stocc

There are two basic methods to install the stocc package, from within R itself using the devtools package or downloading a binary appropriate to your operating system. If you are using a windows machine it is possible that you will need [Rtools](http://cran.r-project.org/bin/windows/Rtools/) installed to build and install the package. There is no compiled code in stocc. 

### Installing stable development version (perfered method) 
If you want to install the latest stable version you can use the `devtools` package. This is probably the best place to get the package because I'm usually tardy with getting it up to CRAN. Anyway do this...

```
library(devtools)
devtools::install_github("dsjohnson/stocc")
```

Hopefully, you see something like this and you are good to go:
```
Downloading GitHub repo dsjohnson/stocc@master
from URL https://api.github.com/repos/dsjohnson/stocc/zipball/master
Installing stocc
'/Library/Frameworks/R.framework/Resources/bin/R' --no-site-file  \
  --no-environ --no-save --no-restore --quiet CMD INSTALL  \
  '/private/var/folders/ww/yvtgz2cx6f12xf741z6hf4hh0000gr/T/Rtmp7FRuiq/devtools63a65be41711/dsjohnson-stocc-c0a1936'  \
  --library='/Users/djohnson/Library/R' --install-tests 

* installing *source* package ‘stocc’ ...
** R
** data
** demo
** preparing package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded
* DONE (stocc)
Reloading installed stocc
stocc 1.31 (2018-03-22) 
 Type 'demo(package='stocc')' to see a list of demos for this package.
 BE CAREFUL! The MCMC code can take a while to run if you start the demo.
 The raw code for the demos can be found by typing 'system.file('demo', package='stocc')'
 >
 ```

### Downloading a binary file

If you are using a Windows or Mac OSX machine, you can also download prebuilt binary files for installation. The Mac OSX version is available [here](https://github.com/dsjohnson/stocc/releases/download/v1.31/stocc_1.31.tgz). The windows version is downloaded [here](https://github.com/dsjohnson/stocc/releases/download/v1.31/stocc_31.zip). If you are running a Linux machine, see the following section. *Note*: make sure your browser does not try to automatically unpack the file (this is the default for Safari, go into preferences to change this feature). 

After you download the file, open R and set the working directory (e.g., using `setwd("path/to/download/dir/")`). Once this is set, run

```
> install.packages("stocc.zip", repos=NULL)
```
If you have a mac replace with "stocc.zip" with stocc.tgz".

## Using stocc

To begin using stocc simply open the R console and type 
```
> library(stocc)
```
 
Following this you should see this output:
```
stocc 1.31 (2018-03-22) 
 Type 'demo(package='stocc')' to see a list of demos for this package.
 BE CAREFUL! The MCMC code can take a while to run if you start the demo.
 The raw code for the demos can be found by typing 'system.file('demo', package='stocc')'
> 
```
It will throw some errors if the required packages are not installed. Just install these separately using, e.g.,  `install.packages("coda")`. From here you can run the demo using simulated data with, e.g., `demo(simDataMCMC)`. *This command runs a full demo with MCMC, so, it might take a while!* 
