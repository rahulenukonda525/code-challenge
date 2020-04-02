%dw 2.0
output application/json
var inputData2 =
{
"scoreBoard": [{
"id": "A007",
"subjects": ["Maths", "English", "Arts", "Drawimgs"],
"score": [80, 75, 89, 100]
 },
 {
"id": "A008",
"subjects": ["Maths", "English", "Arts", "Drawimgs"],
"score": [70, 85, 69, 90]
 }, {
"id": " A021",
"subjects": ["Maths", "English", "Arts", "Drawimgs"],
"score": [90, 87, 77, 95]
 }
 ]
}
---
{
 certificate: (payload.employee map (emp) ->
using(scoreBoardData = (inputData2.scoreBoard filter($.id == emp.id))[0])
using(score = scoreBoardData.subjects map (sub, index) ->
 {
 (sub): scoreBoardData.score[index]
 })
 {
 (emp),
 (MarksBySubjectWise:score default [] reduce ($$ ++ $)) if (score != null)
 }) 
}