/// already created nodes, how to merge:
MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 452' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 452' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 452' }),(p:Course { name: 'OMIS 475' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name


//PREREQS
//OMIS 340
MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 340' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 340' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 421:
MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 421' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 421' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 425:
MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 425' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 425' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 440:
MATCH (c:Course { name: 'OMIS 340' }),(p:Course { name: 'OMIS 440' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 442:
MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 442' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 442' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 443:
MATCH (c:Course { name: 'OMIS 442' }),(p:Course { name: 'OMIS 443' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 444:
MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 444' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 444' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 449:
MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 449' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 449' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 450:
MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 450' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 450' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 452:
// MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 452' })
// MERGE (c)-[r:PREREQ]->(p)
// RETURN c.name, type(r), p.name

//OMIS 455:
MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 455' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 455' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 460:
MATCH (c:Course { name: 'OMIS 351' }),(p:Course { name: 'OMIS 460' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 338' }),(p:Course { name: 'OMIS 460' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 462:
MATCH (c:Course { name: 'OMIS 452' }),(p:Course { name: 'OMIS 462' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 465:
MATCH (c:Course { name: 'OMIS 340' }),(p:Course { name: 'OMIS 465' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 471:
MATCH (c:Course { name: 'OMIS 340' }),(p:Course { name: 'OMIS 471' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 472:
MATCH (c:Course { name: 'OMIS 452' }),(p:Course { name: 'OMIS 472' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 473:
MATCH (c:Course { name: 'OMIS 452' }),(p:Course { name: 'OMIS 473' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 474:
MATCH (c:Course { name: 'OMIS 452' }),(p:Course { name: 'OMIS 474' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 475:
// MATCH (c:Course { name: 'OMIS 452' }),(p:Course { name: 'OMIS 475' })
// MERGE (c)-[r:PREREQ]->(p)
// RETURN c.name, type(r), p.name

//OMIS 478:
MATCH (c:Course { name: 'OMIS 340' }),(p:Course { name: 'OMIS 478' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 482:
MATCH (c:Course { name: 'OMIS 452' }),(p:Course { name: 'OMIS 482' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 324' }),(p:Course { name: 'OMIS 482' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

//OMIS 498:

MATCH (c:Course { name: 'OMIS 340' }),(p:Course { name: 'OMIS 498' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 452' }),(p:Course { name: 'OMIS 498' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 442' }),(p:Course { name: 'OMIS 498' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 455' }),(p:Course { name: 'OMIS 498' })
MERGE (c)-[r:PREREQ]->(p)
RETURN c.name, type(r), p.name


//COREQS

MATCH (c:Course { name: 'OMIS 300' }),(p:Course { name: 'OMIS 338' })
MERGE (c)-[r:COREQ]->(p)
RETURN c.name, type(r), p.name

MATCH (c:Course { name: 'OMIS 300' }),(p:Course { name: 'OMIS 351' })
MERGE (c)-[r:COREQ]->(p)
RETURN c.name, type(r), p.name


