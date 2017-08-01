until nc -z localhost 27017
do
    echo "Waiting for Mongo to start..."
    sleep 0.5
done
