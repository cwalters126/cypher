CREATE (cert1:Certification { name: "IS Certification" })
CREATE (cert2:Certification { name: "OM Certification" })
CREATE (cert3:Certification { name: "DA Certification" })

CREATE
(:Course {name: 'OMIS 338', desc: 'Principles of Operations Management'}),
(:Course {name: 'OMIS 351', desc: 'Principles of Information Systems'}),
(:Course {name: 'OMIS 99', desc: 'Portfolio'}),
(:Course {name: 'OMIS 300', desc: 'Career Planning in Operations and Information Management'}),
(:Course {name: 'OMIS 340', desc: 'Supply Chain Management'}),
(:Course {name: 'OMIS 442', desc: 'Process and Quality Improvement'}),
(:Course {name: 'OMIS 455', desc: 'Enterprise Resource Planning'}),
(:Course {name: 'OMIS 452', desc: 'Database Management for Business'}),
(:Course {name: 'OMIS 327', desc: 'Decision Analysis'}),
(:Course {name: 'OMIS 444', desc: 'Manufacturing Systems Management'}),
(:Course {name: 'OMIS 450', desc: 'Service Operations'}),
(:Course {name: 'OMIS 478', desc: 'Supply Chain Systems'}),
(:Course {name: 'OMIS 480', desc: 'Advanced Supply Chain Management'}),
(:Course {name: 'OMIS 324', desc: 'Introduction to Business Data Analytic Tools'}),
(:Course {name: 'OMIS 472', desc: 'Introduction to Business Intelligence'}),
(:Course {name: 'OMIS 473', desc: 'Data Visualization for Business'}),
(:Course {name: 'OMIS 474', desc: 'Digital Analytics'}),
(:Course {name: 'OMIS 482', desc: 'Predictive Business Analytics'}),
(:Course {name: 'OMIS 352', desc: 'Managing Projects in Business'}),
(:Course {name: 'OMIS 449', desc: 'Business Application Development'}),
(:Course {name: 'OMIS 460', desc: 'Business Computing Environments and Networks'}),
(:Course {name: 'OMIS 462', desc: 'Business Systems Analysis, Design, and Development'}),
(:Course {name: 'OMIS 475', desc: 'Internet and Web Computing Technologies'}),
(:Course {name: 'OMIS 379', desc: 'Business Applications of Geographic Information Systems'}),
(:Course {name: 'OMIS 421', desc: 'Simulation Modeling of Business Processes'}),
(:Course {name: 'OMIS 425', desc: 'Integrated Information Technologies in Business'}),
(:Course {name: 'OMIS 439', desc: 'Inventory Management'}),
(:Course {name: 'OMIS 440', desc: 'Capacity Planning and Scheduling'}),
(:Course {name: 'OMIS 443', desc: 'Continuous Improvement Systems'}),
(:Course {name: 'OMIS 458', desc: 'Internship in Operations and Information Management'}),
(:Course {name: 'OMIS 465', desc: 'Procurement'}),
(:Course {name: 'OMIS 471', desc: 'Business Forecasting'}),
(:Course {name: 'OMIS 485', desc: 'Current Topics in Operations Management and Information Systems'}),
(:Course {name: 'OMIS 495', desc: 'Independent Study in Operations and Information Management'}),
(:Course {name: 'OMIS 498', desc: 'Business Analysis Capstone'})



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


// Learning Items
CREATE (li1:LearningItem { name: "COB Core" })
CREATE (li2:LearningItem { name: "OMIS Core" })
CREATE (li3:LearningItem { name: "IS Emphasis" })
CREATE (li4:LearningItem { name: "DA Emphasis" })
CREATE (li5:LearningItem { name: "OM Emphasis" })

//cob core lis
MATCH (li1 { name: 'COB Core' }),(p:Course { name: 'OMIS 351' })
MERGE (li1)-[r:FULFILLED_BY]->(p)
MATCH (li1 { name: 'COB Core' }),(p:Course { name: 'OMIS 338' })
MERGE (li1)-[r:FULFILLED_BY]->(p)

//omis core lis
MATCH (li2 { name: 'OMIS Core' }),(p:Course { name: 'OMIS 452' })
MERGE (li2)-[r:FULFILLED_BY]->(p)
MATCH (li2 { name: 'OMIS Core' }),(p:Course { name: 'OMIS 442' })
MERGE (li2)-[r:FULFILLED_BY]->(p)
MATCH (li2 { name: 'OMIS Core' }),(p:Course { name: 'OMIS 455' })
MERGE (li2)-[r:FULFILLED_BY]->(p)
MATCH (li2 { name: 'OMIS Core' }),(p:Course { name: 'OMIS 340' })
MERGE (li2)-[r:FULFILLED_BY]->(p)
MATCH (li2 { name: 'OMIS Core' }),(p:Course { name: 'OMIS 99' })
MERGE (li2)-[r:FULFILLED_BY]->(p)
MATCH (li2 { name: 'OMIS Core' }),(p:Course { name: 'OMIS 300' })
MERGE (li2)-[r:FULFILLED_BY]->(p)

//is core lis

MATCH (li3 { name: 'IS Emphasis' }),(p:Course { name: 'OMIS 352' })
MERGE (li3)-[r:FULFILLED_BY]->(p)
MATCH (li3 { name: 'IS Emphasis' }),(p:Course { name: 'OMIS 449' })
MERGE (li3)-[r:FULFILLED_BY]->(p)
MATCH (li3 { name: 'IS Emphasis' }),(p:Course { name: 'OMIS 462' })
MERGE (li3)-[r:FULFILLED_BY]->(p)
MATCH (li3 { name: 'IS Emphasis' }),(p:Course { name: 'OMIS 475' })
MERGE (li3)-[r:FULFILLED_BY]->(p)
MATCH (li3 { name: 'IS Emphasis' }),(p:Course { name: 'OMIS 460' })
MERGE (li3)-[r:FULFILLED_BY]->(p)


// da core lis

MATCH (li4 { name: 'DA Emphasis' }),(p:Course { name: 'OMIS 324' })
MERGE (li4)-[r:FULFILLED_BY]->(p)
MATCH (li4 { name: 'DA Emphasis' }),(p:Course { name: 'OMIS 472' })
MERGE (li4)-[r:FULFILLED_BY]->(p)
MATCH (li4 { name: 'DA Emphasis' }),(p:Course { name: 'OMIS 473' })
MERGE (li4)-[r:FULFILLED_BY]->(p)
MATCH (li4 { name: 'DA Emphasis' }),(p:Course { name: 'OMIS 474' })
MERGE (li4)-[r:FULFILLED_BY]->(p)
MATCH (li4 { name: 'DA Emphasis' }),(p:Course { name: 'OMIS 482' })
MERGE (li4)-[r:FULFILLED_BY]->(p)

//om core lis

MATCH (li5 { name: 'OM Emphasis' }),(p:Course { name: 'OMIS 327' })
MERGE (li5)-[r:FULFILLED_BY]->(p)
MATCH (li5 { name: 'OM Emphasis' }),(p:Course { name: 'OMIS 444' })
MERGE (li5)-[r:FULFILLED_BY]->(p)
MATCH (li5 { name: 'OM Emphasis' }),(p:Course { name: 'OMIS 450' })
MERGE (li5)-[r:FULFILLED_BY]->(p)
MATCH (li5 { name: 'OM Emphasis' }),(p:Course { name: 'OMIS 478' })
MERGE (li5)-[r:FULFILLED_BY]->(p)
MATCH (li5 { name: 'OM Emphasis' }),(p:Course { name: 'OMIS 480' })
MERGE (li5)-[r:FULFILLED_BY]->(p)



//learning path

CREATE (li1)-[:NEXT_LEARNING {path: "IS-scheduled"} ]->(li2)-[:NEXT_LEARNING {path: "IS-scheduled"}]->(li3)
CREATE (cert1)-[:NEXT_LEARNING {path: "cert1-scheduled"}]->(li1)-[:NEXT_LEARNING {path: "cert1-scheduled"} ]->(li2)-[:NEXT_LEARNING {path: "cert1-scheduled"}]->(li3)


//standings

CREATE 
(s1:Standing { name: "First Semester Junior" }),
(s2:Standing { name: "Second Semester Junior" }),
(s3:Standing { name: "First Semester Senior" }),
(s4:Standing { name: "Second Semester Senior" }),
(s5:Standing { name: "Graduate" })

//Standing path

CREATE (s1)-[:NEXT_SEMESTER {path: "graduation"} ]->(s2)-[:NEXT_SEMESTER {path: "graduation"} ]->(s3)-[:NEXT_SEMESTER {path: "graduation"} ]->(s4)-[:NEXT_SEMESTER {path: "graduation"}]->(s5)
