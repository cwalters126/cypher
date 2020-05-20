
// IS Certifications:

MATCH (cert1:Certification { name: 'IS Certification' }),(p:Course { name: 'OMIS 352' })
MERGE (cert1)-[r:FULFILLED_BY]->(p)
RETURN cert1.name, type(r), p.name

MATCH (cert1:Certification { name: 'IS Certification' }),(p:Course { name: 'OMIS 449' })
MERGE (cert1)-[r:FULFILLED_BY]->(p)
MATCH (cert1:Certification { name: 'IS Certification' }),(p:Course { name: 'OMIS 460' })
MERGE (cert1)-[r:FULFILLED_BY]->(p)

MATCH (cert1:Certification { name: 'IS Certification' }),(p:Course { name: 'OMIS 475' })
MERGE (cert1)-[r:FULFILLED_BY]->(p)
MATCH (cert1:Certification { name: 'IS Certification' }),(p:Course { name: 'OMIS 462' })
MERGE (cert1)-[r:FULFILLED_BY]->(p)

// DA Cert:

MATCH (cert3:Certification { name: 'DA Certification' }),(p:Course { name: 'OMIS 324' })
MERGE (cert3)-[r:FULFILLED_BY]->(p)
MATCH (cert3:Certification { name: 'DA Certification' }),(p:Course { name: 'OMIS 472' })
MERGE (cert3)-[r:FULFILLED_BY]->(p)
MATCH (cert3:Certification { name: 'DA Certification' }),(p:Course { name: 'OMIS 473' })
MERGE (cert3)-[r:FULFILLED_BY]->(p)
MATCH (cert3:Certification { name: 'DA Certification' }),(p:Course { name: 'OMIS 474' })
MERGE (cert3)-[r:FULFILLED_BY]->(p)
MATCH (cert3:Certification { name: 'DA Certification' }),(p:Course { name: 'OMIS 482' })
MERGE (cert3)-[r:FULFILLED_BY]->(p)

// OM Cert:

MATCH (cert2:Certification { name: 'OM Certification' }),(p:Course { name: 'OMIS 327' })
MERGE (cert2)-[r:FULFILLED_BY]->(p)
MATCH (cert2:Certification { name: 'OM Certification' }),(p:Course { name: 'OMIS 444' })
MERGE (cert2)-[r:FULFILLED_BY]->(p)
MATCH (cert2:Certification { name: 'OM Certification' }),(p:Course { name: 'OMIS 450' })
MERGE (cert2)-[r:FULFILLED_BY]->(p)
MATCH (cert2:Certification { name: 'OM Certification' }),(p:Course { name: 'OMIS 478' })
MERGE (cert2)-[r:FULFILLED_BY]->(p)
MATCH (cert2:Certification { name: 'OM Certification' }),(p:Course { name: 'OMIS 480' })
MERGE (cert2)-[r:FULFILLED_BY]->(p)