# tp-elasticsearch-disney
Utilisez le script pour créer l'index Disney et importer les données.
Compatible avec Elasticsearch 7.5.

## Index : Disney 
 L'index "Disney" est constitué des temps d'attente des attractions de DisneyLand Paris. Les données sont initialement  disponible à cette URL : https://drive.google.com/drive/folders/0B2Nxi2S2JmNmNnMybnRJbGVyVTQ, dans des Google spreadsheet.
 Depuis ce Drive, deux scripts sont utilsés (non présent dans le repo pour le moment) :  
<<<<<<< HEAD
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
=======
 &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;- Le premier permet de nettoyer et d'enrichir les données  
 &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;- Le second, prend les listes de json fournies par le premier script et les mets dans un format exploitable par le Bulk
### Mapping 
 &nbsp; {  
 &nbsp;  &nbsp; "properties": {  
 &nbsp;  &nbsp;  &nbsp; "attente": {  
 &nbsp;  &nbsp;  &nbsp; &nbsp; "type": "integer"  
 &nbsp;  &nbsp;  &nbsp; },  
 &nbsp;  &nbsp;  &nbsp; "attraction": {  
 &nbsp;  &nbsp;  &nbsp; &nbsp; "type": "keyword"  
 &nbsp;  &nbsp;  &nbsp; },  
 &nbsp;  &nbsp;  &nbsp; "dateTime": {  
 &nbsp;  &nbsp;  &nbsp; &nbsp; "type": "date"  
 &nbsp;  &nbsp;  &nbsp; },  
 &nbsp;  &nbsp;  &nbsp; "jour": {  
 &nbsp;  &nbsp;  &nbsp; &nbsp; "type": "keyword"  
 &nbsp;  &nbsp;  &nbsp; },  
 &nbsp;  &nbsp;  &nbsp; "position": {  
 &nbsp;  &nbsp;  &nbsp; &nbsp; "type": "geo_point"  
 &nbsp;  &nbsp;  &nbsp; }  
 &nbsp;  &nbsp; }  
 &nbsp; }  
>>>>>>> 72debf372756a2597c58f3c82f7e19dc2df099f5






## To Do
- Ajout script Cleaning & toBulk 
- Décrire mapping 
- Ajout mapping
- Mettre à jour la Doc
- Renommer "waittime_bulk .json"
