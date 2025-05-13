# Crucial-Interval-Calculation (CIC)
To identify the Crucial Interval inside a minima in a free energy landscape (FEL).

To visualise the PCA into FEL, we utilise the ddtpd v1.3 tool (http://sobereva.com/73) developed by Dr Lu Tian (Mr Sob), whose work Chris greatly admires. 

This tool provides the probability densities of two values across the molecular dynamics (MD) simulation, allowing the conversion of chemical values into free energy.

However, ddtpd v1.3 only offers projections of the two values and cannot identify the crucial frames, a gap that the CIC package aims to fill.

For example:
Using ddtpd v1.3, we calculated a minima bottom at (PC1_bottom, PC2_bottom), which represents a projection point in the free energy landscape (FEL) rather than an actual point in the MD simulation. 

To define a range around this bottom, we use the following bounds: 

(1) PC1_bottom-ΔPC1 < PC1_minima < PC1_bottom+ΔPC1; and 
(2) PC2_bottom-ΔPC2 < PC2_minima < PC2_bottom+ΔPC2. 

Then please type your ranges of PC1 and PC2 into the package to let the package to calculate the Crucial Interval with the highest count of the minima frames.

Users should set the (1) length of their interval and (2) the range of your PCs. 
In this study [2], we aim to identy an interval of 1 ns, equal to 100 frames in this study, so here you can write 99 (resulting in 100 frames) or 100 (resulting in 101 frames). 


While using CIC, there is no doubt you have already used the ddtpd v1.3, so please don't forget to cite Mr Sob's work: [1] http://sobereva.com/73

And please cite the study that firstly reported the CIC: [2] Cc.Wei, C.H.Heh & S.P.Chin; Exploring the Impact of LRRK2 WD40 G2294R Mutation on Conformation and Dimerisation Dynamics: Insights from Molecular Dynamics Simulation.
