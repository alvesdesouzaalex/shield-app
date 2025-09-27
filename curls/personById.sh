curl --location 'localhost:80/graphql' \
--header 'Content-Type: application/json' \
--data '{"query":"query {\n  personById(id: 1) {\n    id\n    name\n  }\n}\n","variables":{}}'