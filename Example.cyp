// GraphGist Education Example
// Use the following to return all:

MATCH (pos1)
 RETURN *

// Create all Nodes and Relationships:

CREATE (cert1:Certification { name: "Cert1" })
CREATE (cert2:Certification { name: "Cert2" })
CREATE (cert3:Certification { name: "Cert3" })

CREATE (li1:LearningItem { name: "LearningItem1" })
CREATE (li2:LearningItem { name: "LearningItem2" })
CREATE (li3:LearningItem { name: "LearningItem3" })
CREATE (li4:LearningItem { name: "LearningItem4" })
CREATE (li5:LearningItem { name: "LearningItem5" })
CREATE (li6:LearningItem { name: "LearningItem6" })
CREATE (li7:LearningItem { name: "LearningItem7" })
CREATE (li8:LearningItem { name: "LearningItem8" })
CREATE (li9:LearningItem { name: "LearningItem9" })

CREATE (course1:Course:Classroom { name: "Course1"})
CREATE (course2:Course:Web { name: "Course2" })
CREATE (course3:Course:Classroom { name: "Course3" })
CREATE (course4:Course:Web { name: "Course4" })
CREATE (course5:Course:Web { name: "Course5" })
CREATE (course6:Course:Classroom { name: "Course6" })

CREATE (we1:WorkExp { name: "WorkExp1", hours:100 })
CREATE (we2:WorkExp { name: "WorkExp2", hours:150 })

CREATE (pos1:Position { name: "Position1" })
CREATE (pos2:Position { name: "Position2" })
CREATE (pos3:Position { name: "Position3" })

CREATE (person1:Person { name: "Person1" })
CREATE (person2:Person { name: "Person2" })
CREATE (person3:Person { name: "Person3" })

CREATE (cert2)-[:IS_PREREQUISITE]->(cert1)
CREATE (cert1)-[:IS_PREREQUISITE]->(cert3)

CREATE (cert1)-[:NEXT_LEARNING {path: "cert1-scheduled"}]->(li1)-[:NEXT_LEARNING {path: "cert1-scheduled"} ]->(li2)-[:NEXT_LEARNING {path: "cert1-scheduled"}]->(li3)
CREATE (cert1)-[:NEXT_LEARNING {path: "cert1-selfpaced"}]->(li5)-[:NEXT_LEARNING {path: "cert1-selfpaced"}]->(li6)
CREATE (cert2)-[:NEXT_LEARNING {path: "cert2-scheduled"}]->(li1)-[:NEXT_LEARNING {path: "cert2-scheduled"}]->(li4)
CREATE (cert3)-[:NEXT_LEARNING {path: "cert3-scheduled"}]->(li7)-[:NEXT_LEARNING {path: "cert3-scheduled"}]->(li8)-[:NEXT_LEARNING {path: "cert3-scheduled"}]->(li9)

CREATE (li1)-[:FULFILLED_BY]->(course1)
CREATE (li2)-[:FULFILLED_BY]->(course2)
CREATE (li3)-[:FULFILLED_BY]->(course3)
CREATE (li4)-[:FULFILLED_BY]->(we1)
CREATE (li5)-[:FULFILLED_BY]->(course4)
CREATE (li6)-[:FULFILLED_BY]->(course2)
CREATE (li7)-[:FULFILLED_BY]->(we2)
CREATE (li8)-[:FULFILLED_BY]->(course5)
CREATE (li9)-[:FULFILLED_BY]->(course6)

CREATE (pos1)-[:REQUIRES]->(cert2)
CREATE (pos2)-[:REQUIRES]->(cert1)
CREATE (pos3)-[:REQUIRES]->(cert1)
CREATE (pos3)-[:REQUIRES]->(cert3)

CREATE (person1)-[:HOLDS_POSITION]->(pos1)
CREATE (person2)-[:HOLDS_POSITION]->(pos2)
CREATE (person3)-[:HOLDS_POSITION]->(pos3)

CREATE (person1)-[:HAS_CERTIFICATION {acquiredOn: "2013-12-01"}]->(cert2)
CREATE (person2)-[:HAS_CERTIFICATION {acquiredOn: "2013-06-15"}]->(cert1)
CREATE (person2)-[:HAS_CERTIFICATION {acquiredOn: "2011-02-20"}]->(cert3)
CREATE (person1)-[:COMPLETED {completedOn: "2013-12-01"}]->(course1)
CREATE (person1)-[:COMPLETED {acquiredOn: "2013-11-15"}]->(we1)
