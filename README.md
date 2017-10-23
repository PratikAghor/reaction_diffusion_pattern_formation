This folder contains codes I wrote for my undergraduate thesis. 

'schnackenberg_final.edp' is a freefem++ file which takes the Schnackenberg reaction diffusion system and does time marching using fractional step method. It then uses the final steady state of the time marching as the initial condition for Newton-Raphson iterations. The solution quickly converges, confirming that the steady state was indeed reached. 

Some MATLAB scripts are written to block diagonalize the Jacobian matrix that comes out of the Newton-Raphson iterations from 'schnackenberg_final.edp'.

J is the Jacobian matrix used for Newton-Raphson iteration. 
JStar is the Jacobian in the symmetry adapted basis .

RMatrix builds a matrix R such that
JStar = R'*J*R;

To build R, i.e., to go to the symmetry adapted basis, we need to use a bit of group represenation theory. 

For details, check the full documentation herewith. If you are just interested in the bigger picture, read the file 'numerical continuation and bifurcation in the presence of symmetry (2014).pdf'. This was presented at the 'Conference on Computational PDE, Finite Element Meet 2014', TIFR-CAM, Bengalore. 
