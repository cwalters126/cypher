


MATCH (cert1:Certification {name:"IS Certification"})-[:FULFILLED_BY]->(Course)
RETURN Course.name

MATCH (cert2:Certification {name:"OM Certification"})-[:FULFILLED_BY]->(Course)
RETURN Course.name

MATCH (cert3:Certification {name:"DA Certification"})-[:FULFILLED_BY]->(Course)
RETURN Course.name