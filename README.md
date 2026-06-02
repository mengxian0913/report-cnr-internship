# Typst 中文論文專案

這是一個使用 Typst 編寫的中文論文專案模板。

## 專案結構

```
report/
├── main.typ                    # 主要論文檔案（入口點）
├── template.typ                # 全域樣板設定
├── chapters/                   # 章節資料夾
│   ├── 01-introduction.typ     # 第一章：緒論
│   ├── 02-literature-review.typ # 第二章：相關文獻回顧
│   ├── 03-methodology.typ      # 第三章：系統設計與方法
│   ├── 04-experiments.typ      # 第四章：實驗設計與結果分析
│   ├── 05-conclusion.typ       # 第五章：結論與建議
│   └── 06-references.typ       # 參考文獻
├── figures/                    # 圖片資料夾
└── references/                 # 參考文獻資料夾
    └── references.bib          # BibTeX 參考文獻檔案
```

## 使用方法

1. **安裝 Typst**
   ```bash
   # macOS (使用 Homebrew)
   brew install typst
   
   # 或從官網下載：https://typst.app/
   ```

2. **編輯論文內容**
   - 修改 `main.typ` 中的基本資訊（標題、作者、摘要等）
   - 在 `chapters/` 資料夾中編輯各章節內容
   - 將圖片放入 `figures/` 資料夾
   - 在 `references/references.bib` 中加入參考文獻

3. **編譯論文**
   ```bash
   # 在專案目錄下執行
   typst compile main.typ
   
   # 或使用 watch 模式（自動重新編譯）
   typst watch main.typ
   ```

4. **生成 PDF**
   編譯後會在同目錄下生成 `main.pdf` 檔案

## 樣板功能

- ✅ 中文字體支援（標楷體、新細明體）
- ✅ 符合學術論文格式的頁面設定
- ✅ 自動生成封面
- ✅ 中英文摘要
- ✅ 自動目錄、圖目錄、表目錄
- ✅ 章節自動編號
- ✅ 圖表標題格式化
- ✅ 參考文獻管理（支援 BibTeX）
- ✅ 程式碼區塊美化

## 注意事項

- 確保系統已安裝中文字體（macOS 通常已內建）
- 引用圖表使用 `@label` 語法，例如：`@fig-system-architecture`
- 參考文獻使用 `@cite-key` 引用，例如：`@example-article`

## 需要幫助？

如有問題請參考：
- [Typst 官方文件](https://typst.app/docs)
- [Typst 中文教學](https://typst-doc-cn.github.io/docs/)
