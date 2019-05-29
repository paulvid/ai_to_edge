processes=`ps -ef | grep jupyter | wc -l`

if (( $processes == 2 )) ; then
    echo "Jupyter is already running!"
elif (( $processes == 1 )) ; then
    jupyter notebook --no-browser --ip=0.0.0.0 --port=8080 --NotebookApp.token=
else
    echo "Invalid number of processes, relaunch your session!"
fi


