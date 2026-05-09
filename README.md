# Convex Optimization Applications

This is a colection of convex optimization projects implemented in MATLAB as part of my convex optimization course (winter semester 2024-2025). 

Note: While the documentation for each of the following projects is in Greek, there are a handful of calculations and figures in each one, therefore non-Greek-speaking readers can still get a sense of the results. 

## Project 1

This project focuses on locating the interval containing the minimum of a convex function $f(x)$ where $x \in [\alpha, \beta]$, with emphasis on minimizing the total number of objective function evaluations. Four classical bracketing methods are implemented and compared: the bisection method, the golden section method, the Fibonacci method, and the derivative-based bisection method.

These methods are tested on the following three functions:

- $f_1(x) = (x-2)^2 + x \cdot \ln(x+3)$
- $f_2(x) = e^{-2x} + (x-2)^2$
- $f_3(x) = e^x \cdot (x^3-1) + (x-1) \cdot \sin(x)$

You can read the documentation of this project [here](Project%20%231/project1.docs.md).

## Project 2

This project focuses on minimizing a multivariate function $f : \mathbb{R}^n \to \mathbb{R}$ without constraints using algorithms based on iterative descent strategies. Three optimization methods are implemented and compared: the steepest descent method, Newton's method, and the Levenberg-Marquardt method. The objective function is: $f(x,y) = x^5 e^{-x^2-y^2}$. You can read the documentation of this project [here](Project%20%232/project2.docs.md).

## Project 3

This project focuses on minimizing a constrained multivariate function $f : \mathbb{R}^n \to \mathbb{R}$ using the projected steepest descent method. A key aspect of this project is investigating how the choice of initial point, step size ($\gamma_k$), and projection parameter ($s_k$) affect algorithm convergence. The interplay between these parameters and their impact on solution quality and iteration count is analyzed in detail. The objective function is: $f(x) = \frac{1}{3}x_1^2 + 3x_2^2, \quad x = [x_1, x_2]^T$. You can read the documentation of this project [here](Project%20%233/project3.docs.md).
