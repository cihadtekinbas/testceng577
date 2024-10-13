{\rtf1\ansi\ansicpg1252\cocoartf2818
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red64\green11\blue217;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c32309\c18666\c88229;\csgray\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs28 \cf2 \CocoaLigature0 #!/bin/bash\cf3 \
\cf2 # This file test.sh is a sample script to run the many jobs by making use of multiple cores\cf3 \
\cf2 # To have output file defined as slurm-%A_%a, run your script with sbatch -o slurm-%A_%a.out test.sh\cf3 \
\cf2 # command where %A is the id of the submitted jobs and %a is \{0..ntasks\}\cf3 \
\cf2 # To have one output file for all simultaneous task, run your script with sbatch test.sh\cf3 \
\
\cf2 # set the partition where the job will run\cf3 \
\cf2 #SBATCH --partition=577Q\cf3 \
\
\cf2 # The following line defines the name of the submitted job\cf3 \
\cf2 #SBATCH --job-name=slurm_test\cf3 \
\
\cf2 # The default output file if we run the script with the command sbatch test.sh\cf3 \
\cf2 #SBATCH --output=slurm_output-%j.txt\cf3 \
\
\cf2 # set the number of nodes and processes per node\cf3 \
\cf2 # That is, we will run this many tasks simultaneously\cf3 \
\cf2 #SBATCH --nodes=1\cf3 \
\cf2 #SBATCH --ntasks=4\cf3 \
\
\cf2 # mail alert at start, end and abortion of execution\cf3 \
\cf2 # The user will be mailed when the job starts and stops or aborts\cf3 \
\cf2 # --mail-type=<type> where <type> may be BEGIN, END, FAIL, REQUEUE or ALL (for any change of job state)\cf3 \
\cf2 #SBATCH --mail-type=ALL\cf3 \
\
\cf2 # send mail to this address\cf3 \
\cf2 #SBATCH --mail-user=<user_name>@ceng.metu.edu.tr\cf3 \
\
\cf2 # Launch the command/application\cf3 \
mpirun ~/a.out\
}