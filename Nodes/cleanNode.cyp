/// to delete a Node(and the relationships it had with other nodes)

MATCH (c { name: 'OMIS 452' })
DETACH DELETE c
