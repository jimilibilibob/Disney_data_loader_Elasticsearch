curl -X PUT http://localhost:9200/attraction

curl -X PUT http://localhost:9200/attraction/_mapping \
  -H "Content-Type: application/json" \
  -d '
    {
      "properties": {
          "nom": {
            "type": "text"
          },
          "description": {
            "type": "text"
          },
          "parc": {
            "type": "keyword"
          },
          "taille": {
            "type": "integer"
          },
          "age": {
            "type": "keyword"
          }
        }
      }' 

curl --output output_attraction.txt -s -H "Content-Type: application/json" -XPOST localhost:9200/_bulk --data-binary "@attraction_bulk.json"  