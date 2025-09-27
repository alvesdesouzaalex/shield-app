curl --location 'localhost:80/graphql' \
--header 'Content-Type: application/json' \
--data '{"query":"mutation {\n  updatePerson(id: 1, name: \"Alex.souza\") {\n    id\n    name\n  }\n}\n","variables":{}}'