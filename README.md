# Running your matlab project via Singularity Containers

To run your matlab code with container via GNU octave (https://www.gnu.org/software/octave/index)

## Getting Started

* Download ``octave.sif``  and `` magifsquare.m ``  files placed in octave folder from [here](https://drive.google.com/drive/folders/1mfxZJ-7A-4lDlCkarUCxEf2hBIxQGO69?usp=sharing)
* Import these files  to your secure HPC environment (i.e. TSD, Bianca, Computerome, or similar).
 



* The main aim is running magicsquare.m file within container. For this aim two different alternatives have been proposed:



     
 ##  With GNU Octave
    

    
 1. Run the container in shell mode by binding the path of the corresponding mfile (magicsquare.m in this case)
    
 ```
    singularity shell --no-home  --bind  path/of/mfile:/execute  octave.sif
```

2- Type ``octave`` and add the path where your code is. For instance, in our case the script (magicsquare.m)  is placed in  /execute. Hence all you need to do is adding this directory to octave as

 ```
 addpath('/execute')  
 
 ```

Then you can readily run your matlab code to call your function such as:   ``magicsquare(5)``

And you can observe the corresponding output


ans =

   17   24    1    8   15
   23    5    7   14   16
    4    6   13   20   22
   10   12   19   21    3
   11   18   25    2    9





