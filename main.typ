#import "template.typ": *

#show: project.with(
  subsidy-year: "113",           // 獲補助年度
  school: "逢甲大學",            // 薦送學校
  department: "資訊工程學系",    // 系所
  grade: "大四",                 // 年級
  name: "楊孟憲",               // 中文姓名
  country: "",                   // 國外實習國家（含城市）
  institution: "",               // 國外實習機構
  evaluation: "",                // 國外實習考評成績或評語
  video: "",                     // 短片時間及標題
)

#include "chapters/01-origin.typ"
#include "chapters/02-institution.typ"
#include "chapters/03-learning.typ"
#include "chapters/04-life.typ"
#include "chapters/05-benefits.typ"
#include "chapters/06-reflections.typ"