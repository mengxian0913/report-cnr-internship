// 學海築夢 出國實習心得報告樣板

// 中文數字序號對照（供章節標題使用）
#let zh-num = ("一", "二", "三", "四", "五", "六", "七", "八", "九", "十")

#let project(
  subsidy-year: "",     // 獲補助年度
  school: "",           // 薦送學校
  department: "",       // 系所
  grade: "",            // 年級
  name: "",             // 中文姓名
  country: "",          // 國外實習國家（含城市）
  institution: "",      // 國外實習機構
  evaluation: "",       // 國外實習考評成績或評語
  video: "",            // 短片時間及標題
  body
) = {

  // 設定文件基本屬性
  set document(
    title: "出國實習心得報告",
    author: name,
  )

  // 頁面設定
  set page(
    paper: "a4",
    margin: (
      top: 2.54cm,
      bottom: 2.54cm,
      left: 3.17cm,
      right: 3.17cm,
    ),
    numbering: "1",
    number-align: center,
  )

  // 字體設定
  set text(
    font: ("Times New Roman", "Noto Serif CJK TC", "Songti TC"),
    size: 12pt,
    lang: "zh",
    region: "tw",
  )

  // 段落設定
  set par(
    justify: true,
    leading: 1.2em,
    first-line-indent: 2em,
  )

  // 關閉預設章節編號
  set heading(numbering: none)

  // 第一層標題（大節，對應一、二、三……）
  let section-counter = counter("section")

  show heading.where(level: 1): it => {
    section-counter.step()
    context {
      let n = section-counter.get().first()
      let prefix = if n <= zh-num.len() { zh-num.at(n - 1) } else { str(n) }
      v(1.5em)
      block(
        text(size: 14pt, weight: "bold", prefix + "、" + it.body)
      )
      v(0.8em)
    }
  }

  // 第二層標題（子節）
  show heading.where(level: 2): it => {
    v(1em)
    block(
      text(size: 12pt, weight: "bold", it.body)
    )
    v(0.5em)
  }

  // 圖片設定
  show figure.where(kind: image): it => {
    set align(center)
    block(
      inset: 8pt,
      it
    )
  }

  // 圖表標題設定
  show figure.caption: it => {
    set text(size: 11pt)
    set align(center)
    v(0.3em)
    it
    v(0.3em)
  }

  // ── 封面 ──────────────────────────────────────
  align(center)[
    #v(2cm)
    #text(size: 16pt, weight: "bold")[
      學海築夢／新南向學海築夢學生出國實習心得報告
    ]
    #v(1.5cm)
  ]

  // 封面資訊表格
  table(
    columns: (6cm, 1fr),
    stroke: 0.5pt + black,
    inset: (x: 8pt, y: 10pt),
    [獲補助年度],          [#subsidy-year],
    [薦送學校、系所、年級], [#school　#department　#grade],
    [中文姓名],            [#name],
    [國外實習國家（含城市）],[#country],
    [國外實習機構],        [#institution],
    [國外實習考評成績或評語],[#evaluation],
    [短片時間及標題],      [#video],
  )

  pagebreak()

  // ── 內文 ──────────────────────────────────────
  body
}
