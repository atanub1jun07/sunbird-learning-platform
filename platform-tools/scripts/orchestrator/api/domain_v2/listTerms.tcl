package require java
java::import -package java.util ArrayList List
java::import -package java.util HashMap Map
java::import -package com.ilimi.graph.common JSONUtils


set subject "{\"subject\":{\"label\":\"Subject\",\"value\":\"subject\",\"language\":\"en\",\"description\":\"Subject of the content\",\"values\":\[{\"label\":\"Maths\",\"value\":\"Maths\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"MATHS\"\]}}},{\"label\":\"English\",\"value\":\"English\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"English\"\]}}},{\"label\":\"Hindi\",\"value\":\"Hindi\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Hindi\"\]}}},{\"label\":\"Assamese\",\"value\":\"Assamese\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Assamese\"\]}}},{\"label\":\"Bengali\",\"value\":\"Bengali\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Bengali\"\]}}},{\"label\":\"Gujarati\",\"value\":\"Gujarati\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Gujarati\"\]}}},{\"label\":\"Kannada\",\"value\":\"Kannada\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Kannada\"\]}}},{\"label\":\"Malayalam\",\"value\":\"Malayalam\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Malayalam\"\]}}},{\"label\":\"Marathi\",\"value\":\"Marathi\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Marathi\"\]}}},{\"label\":\"Nepali\",\"value\":\"Nepali\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Nepali\"\]}}},{\"label\":\"Oriya\",\"value\":\"Oriya\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Oriya\"\]}}},{\"label\":\"Punjabi\",\"value\":\"Punjabi\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Punjabi\"\]}}},{\"label\":\"Tamil\",\"value\":\"Tamil\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Tamil\"\]}}},{\"label\":\"Telugu\",\"value\":\"Telugu\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Telugu\"\]}}},{\"label\":\"Urdu\",\"value\":\"Urdu\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Urdu\"\]}}}\]},\"medium\":{\"label\":\"Medium\",\"value\":\"medium\",\"language\":\"en\",\"description\":\"Medium of instruction\",\"values\":\[{\"label\":\"English\",\"value\":\"English\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"English\"\]}}},{\"label\":\"Hindi\",\"value\":\"Hindi\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Hindi\"\]}}},{\"label\":\"Assamese\",\"value\":\"Assamese\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Assamese\"\]}}},{\"label\":\"Bengali\",\"value\":\"Bengali\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Bengali\"\]}}},{\"label\":\"Gujarati\",\"value\":\"Gujarati\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Gujarati\"\]}}},{\"label\":\"Kannada\",\"value\":\"Kannada\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Kannada\"\]}}},{\"label\":\"Malayalam\",\"value\":\"Malayalam\",\"description\":\"\",\"search\":{\"filters\":{\"subject\":\[\"Malayalam\"\]}}},{\"label\":\"Marathi\",\"value\":\"Marathi\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Marathi\"\]}}},{\"label\":\"Nepali\",\"value\":\"Nepali\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Nepali\"\]}}},{\"label\":\"Oriya\",\"value\":\"Oriya\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Oriya\"\]}}},{\"label\":\"Punjabi\",\"value\":\"Punjabi\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Punjabi\"\]}}},{\"label\":\"Tamil\",\"value\":\"Tamil\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Tamil\"\]}}},{\"label\":\"Telugu\",\"value\":\"Telugu\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Telugu\"\]}}},{\"label\":\"Urdu\",\"value\":\"Urdu\",\"description\":\"\",\"search\":{\"filters\":{\"medium\":\[\"Urdu\"\]}}}\]},\"board\":{\"label\":\"Board\",\"value\":\"board\",\"language\":\"en\",\"description\":\"Curriculum\",\"values\":\[{\"label\":\"NCERT\",\"value\":\"NCERT\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"NCERT\"\]}}},{\"label\":\"CBSE\",\"value\":\"CBSE\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"CBSE\"\]}}},{\"label\":\"ICSE\",\"value\":\"ICSE\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"ICSE\"\]}}},{\"label\":\"MSCERT\",\"value\":\"MSCERT\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"MSCERT\"\]}}},{\"label\":\"Other\",\"value\":\"Other\",\"description\":\"\",\"search\":{\"filters\":{\"board\":\[\"Other\"\]}}}\]},\"ageGroup\":{\"label\":\"Age Group\",\"value\":\"ageGroup\",\"language\":\"en\",\"description\":\"Age Group of the child\",\"values\":\[{\"label\":\"<5 Years\",\"value\":\"0\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"<5\"\]}}},{\"label\":\"5 Years\",\"value\":\"5\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"5-6\"\]}}},{\"label\":\"6 Years\",\"value\":\"6\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"6-7\"\]}}},{\"label\":\"7-8 Years\",\"value\":\"7\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"7-8\"\]}}},{\"label\":\"8-10 Years\",\"value\":\"8\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"8-10\"\]}}},{\"label\":\">10 Years\",\"value\":\"10\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\">10\"\]}}},{\"label\":\"Others\",\"value\":\"-1\",\"description\":\"\",\"search\":{\"filters\":{\"ageGroup\":\[\"Other\"\]}}}\]},\"gradeLevel\":{\"label\":\"Grade Level\",\"value\":\"gradeLevel\",\"language\":\"en\",\"description\":\"Grade Level of the child\",\"values\":\[{\"label\":\"KG\",\"value\":\"0\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Kindergarten\"\]}}},{\"label\":\"Grade 1\",\"value\":\"1\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 1\"\]}}},{\"label\":\"Grade 2\",\"value\":\"2\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 2\"\]}}},{\"label\":\"Grade 3\",\"value\":\"3\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 3\"\]}}},{\"label\":\"Grade 4\",\"value\":\"4\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 4\"\]}}},{\"label\":\"Grade 5\",\"value\":\"5\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Grade 5\"\]}}},{\"label\":\"Others\",\"value\":\"-1\",\"description\":\"\",\"search\":{\"filters\":{\"gradeLevel\":\[\"Other\"\]}}}\]},\"ttl\":24}"
set terms [java::new String $subject]
set termsObj [java::call JSONUtils "convertJSONString" $terms]
set response_list [create_response $termsObj]
return $response_list