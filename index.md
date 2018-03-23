# Welcome to stocc
This is the home of the R package *stocc* for Bayesian inference of spatial occupancy data

## Installing stocc

There are two basic methods to install the stocc package, from within R itself using the devtools package or downloading a binary appropriate to your operating system. If you are using a windows machine it is possible that you will need [Rtools](http://cran.r-project.org/bin/windows/Rtools/) installed to build and install the package. There is no compiled code in stocc. 

### Using devtools (guaranteed up-to-date version)

You can obtain the stocc package using the GitHub installation function within the devtools R package. If devtools is not installed, it can be installed from CRAN by typing `install.packages("devtools")` from within the R console.

If devtools is installed, to install stocc, open the R console and type
```
> devtools::install_github("stocc", username="dsjohnson")
```

### Downloading a binary file

If you are using a Windows or Mac OSX machine, you can also download prebuilt binary files for installation. The Mac OSX version is available [here](https://github.com/dsjohnson/stocc/releases/download/v1.22/stocc.tgz). The windows version is downloaded [here](https://github.com/dsjohnson/stocc/releases/download/v1.22/stocc.zip). If you are running a Linux machine, see the following section. *Note*: make sure your browser does not try to automatically unpack the file (this is the default for Safari, go into preferences to change this feature). 

After you download the file, open R and set the working directory (e.g., using `setwd("path/to/download/dir/")`). Once this is set, run

```
> install.packages("stocc.zip", repos=NULL)
```
If you have a mac replace with "stocc.zip" with stocc.tgz".

### Downloading the source file
Source files for each version can be downloaded [here](https://github.com/dsjohnson/stocc/releases/download/v1.22/stocc.tar.gz). The desired file can be downloaded and installed in the same way as with the binaries, e.g., 

```
> install.packages("stocc.tar.gz", repos=NULL, type="source")
```

### Is it installed?

However you choose to install you should see some output that, hopefully, ends with:

```
* installing *source* package 'stocc' ...
** R
** data
** demo
Warning in do_install_source(pkg_name, instdir, pkg, desc) :
  NAs introduced by coercion
** preparing package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded
* DONE (stocc)
> 
```
In which case, everything is installed.


## Using stocc

To begin using stocc simply open the R console and type 
```
> library(stocc)
```
 
Following this you should see this output:
```
Loading required package: truncnorm
Loading required package: coda
Loading required package: lattice
Loading required package: Matrix
Loading required package: fields
Loading required package: spam
Loading required package: grid
Spam version 0.41-0 (2014-02-26) is loaded.
Type 'help( Spam)' or 'demo( spam)' for a short introduction 
and overview of this package.
Help for individual functions is also obtained by adding the
suffix '.spam' to the function name, e.g. 'help( chol.spam)'.

Attaching package: ‘spam’

The following objects are masked from ‘package:base’:

    backsolve, forwardsolve

Loading required package: maps
stocc 1.22 (5-29-2014) 
 Type 'demo(package='stocc')' to see a list of demos for this package.
 BE CAREFUL! The MCMC code can take a while to run if you start the demo.
 The raw code for the demos can be found by typing 'system.file('demo', package='stocc')'
> 
```
It will throw some errors if the required packages are not installed. Just install these separately using, e.g.,  `install.packages("coda")`. From here you can run the demo using simulated data with, e.g., `demo(simDataMCMC)`. *This command runs a full demo with MCMC, so, it might take a while!* 