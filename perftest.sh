host="fabmedical-sei.mongo.cosmos.azure.com"
username="fabmedical-sei"
password="CANKDqGNSDYXrrdLvZSD8o8yX9vnmlpv5U0wDkFKhBZhw0sOeL6K0Dua4BtKPn2FlQxz6fzjxq88jZKzJiX7NA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
