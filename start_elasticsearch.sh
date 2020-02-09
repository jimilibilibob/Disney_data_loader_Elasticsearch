curl -X PUT http://localhost:9200/disney

curl -X PUT http://localhost:9200/disney/_mapping \
 -H "Content-Type: application/json" \
 -d '
    {
     "properties": {
          "attente": {
            "type": "integer"
          },
          "attraction": {
            "type": "keyword"
          },
          "dateTime": {
            "type": "date"
          },
          "jour": {
            "type": "keyword"
          },
          "position": {
            "type": "geo_point"
          }
        }
      }' 

for file in ./*; do
    if [[ $file == *".json" ]]; then
        echo $file
        curl --output output.txt -s -H "Content-Type: application/json" -XPOST localhost:9200/_bulk --data-binary "@$file"  
    fi
done
