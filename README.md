# tp-elasticsearch-disney
Utilisez le script pour créer l'index Disney et importer les données.
Compatible avec Elasticsearch 7.5.

## Index : Disney 
 L'index "Disney" est constitué des temps d'attente des attractions de DisneyLand Paris. Les données sont initialement  disponible à cette URL : https://drive.google.com/drive/folders/0B2Nxi2S2JmNmNnMybnRJbGVyVTQ, dans des Google spreadsheet.
 Depuis ce Drive, deux scripts sont utilsés (non présent dans le repo pour le moment) :
      - Le premier permet de nettoyer et d'enrichir les données
      - Le second, prend les listes de json fournies par le premier script et les mets dans un format exploitable par le Bulk
### Mapping 
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
      }  






## To Do
- Ajout script Cleaning & toBulk 
- Décrire mapping 