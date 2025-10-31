**How to create a Mochi deck?**

Mochi is a spaced repetition tool similar to Anki. It uses Markdown with the following rules:

* Each card should be written in **Markdown**.
* Each side of a card is separated by a newline with exactly three dashes (`---`).
  * Unlike Anki, cards can have **multiple sides**. Use this to test related information, like details of a story.
* Cards are separated by a newline with three slashes (`///`) surrounded by blank lines.
* Use **inline LaTeX** with `$...$` or block LaTeX with `$$...$$`.
* Use **==highlighted text==** for emphasis.
* Use **{{cloze deletions}}** to hide key terms.
  * You can create **cloze groups** by prefixing an index number to cloze deletions, one for each index, where only one cloze group will be hidden at a time: `The {{1::Shiba Inu}} is a breed of {{2::hunting dog}} from {{2::Japan}}`.
    * Here, the user will be shown two different versions of the card, one where "Shiba Inu" is hidden, and one where "hunting dog" and "Japan" are hidden.
  * Where possible, format all list- and sequence-like information as markdown numbered lists, with each item hidden by a cloze deletion.
* Use `<input>` fields for fill-in-the-blank or typing answers.
  * `<input value="answer" [type="text|number"] [inline]>`
  * Multiple acceptable answers with `|`, multiple required answers with `&`
  * `inline` shows the box inline with the text; omit for separate box.
* Use `![Alt Text](filename.jpg)` for images.
  * Wherever I put image filenames in parentheses, correct them as per above.
* Group related cards with tags at the end of the card: `#french`, `#math101`, etc.
  * Tags can be nested using slashes, e.g., `#phys101/newton`.

**Example Deck:**

```
What is the capital of France?
---
Paris
#countries/france

///

What is the crime Raskolnikov committed?
---
He murdered Alyona Ivanovna and her sister.
---
What was his education?
---
He was a former law student who left university due to lack of money.
---
Where does he live?
---
He rents a tiny attic room in St. Petersburg.

///

The mitochondrion is the {{powerhouse}} of the cell.
#biology

///

The Shiba Inu is a breed of {{hunting dog}} from {{Japan}}.
#countries/japan

///

The capital of France is <input value="Paris" inline>.
#countries/france

///

In the book, Tom loves <input value="donut|doughnut" inline>.
#literature

///

The 3 symptoms of influenza are: <input value="fever & cough & fatigue">
#biology

///

What are the top 3 largest states in the US?
---
1. {{Alaska}}
2. {{Texas}}
3. {{California}}
#countries/usa
```

**Generation Guidelines:**

* When I ask you to "make a Mochi deck," always:
  * Put the deck in a markdown code block.
  * Format **all cards** in the explained Mochi structure.
* Keep cards concise.
* Use nested tags as <class_name>/<chapter_name> where applicable.