# 🐋 Elastic/Kibana Docker Suite

### How To Build
------

#### Mac/Linux
`docker-compose build && docker-compose up`

#### Windows (Powershell)
`(docker-compose build) -and (docker-compose up)`
> Reference this page for Docker issues: https://connexta.atlassian.net/wiki/spaces/GSR/pages/662995034/Docker+Compose+GSR#DockerComposeGSR-WindowsUsers

`Add the -d flag to run as a background process (detached)`

### How To Index Your Own Data
`curl -H "Content-Type: application/json" -XPOST "http://localhost:9200/index_name/type_name/_bulk?pretty" --data-binary "@data_file_here.json"`

### Remove An Index
From Kibana, execute the following deletion call in the `Dev Tools`
```
DELETE /index_name_here
```

### Notes

> All data is automatically mounted from the /elasticsearch/data` directory and is _pre-indexed_. View the data from Kibana on http://localhost:5601 and execute the following query:

```
GET /_search
{
    "query": {
        "match_all": {}
    }
}
```
