
<!-- README.md is generated from README.Rmd. Please edit that file -->
RPSimulator
===========

The goal of RPSimulator is to mimic (Andrew Webb's RPS simulation)\[<https://github.com/grey-area/rps-automata>\]

Installation
------------

``` r
devtools::install_github('beemyfriend/RPSimulator')
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
#how many colors are we working with?
nclr = 3

#keep note of your seed. Some animations aren't very exciting...
set.seed(1)

sim <- RPSimulator::runRPS(nrow = 100,
                           ncol = 100,
                           nclr = nclr,
                           iterations = 100,
                           threshold = 3)
```

``` r
RPSimulator::plotRPS(rastList = sim,
                     nclr = nclr,
                     filePath = 'path/to/example.gif')
```

![An animation of RPS simulation](example.gif)
