# Linear-Systems-of-Equations

This program solves a system of 3 linear equations in 3 variables (x, y, z).  

It determines if the system has:

- A unique solution
- No unique solution (inconsistent fr)
- Infinite solutions

## Compile

```bash
gfortran three_planes.f95 -o three_planes
````

## Run

```bash
./three_planes
```

Example input:

```
1 1 1 6
0 1 2 9
2 4 -3 -1
```

Example output:

(Just take up to 4//5 decimal places)

```
Unique solution:
 x =   0.444444448    
 y =    2.11111116    
 z =    3.44444442 
```
