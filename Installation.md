# My environment

In order to run the Quarto or Jupyter notebooks I use the following tools:
* [Anaconda](https://www.anaconda.com/download) for Python and all the major packages (Matplotlib, Jupyter, etc..). I'm using Python version 3.12.7.
* [Visual Studio Code](https://code.visualstudio.com/Download) with the following packages installed: 
  * Python and related
  * Jupyter and related.
  * Quarto.
* [Quarto](https://quarto.org/docs/download/) to run the design examples and generate a pdf or HTML report. All the pdf files have been generated with Quarto.
* ngspice circuit simulator. I'm using [ngspice version 4.3](https://sourceforge.net/projects/ngspice/files/ng-spice-rework/old-releases/43/), but the examples should also run with the latest realease. SInce we are using the EKV 2.6 compact model this requires a specific osdi file. Please check the [detailed installation of ngspice](ngspice_installation.md).

I generate the pdf from Quarto using MikTeX which is my LaTeX environment. This is why I specified
```yaml
pdf-engine: pdflatex
```
in the YAML block with document level options header.
