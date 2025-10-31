# Custom instructions for ChatGPT to create Mochi decks (experimental)

This is designed to work with ChatGPT Plus.

1. Clone the repository.
1. Open a new project in ChatGPT web interface.
2. Set project custom the instructions as the text in [instructions.md](./instructions.md). 
3. Ask ChatGPT to create a Mochi deck for you. Copy and save it to a file.
4. Run the [fixer.nu](./fixer.nu) script on the file to fix some formatting issues ChatGPT apparently can't avoid:

```
./fixer.nu <my-deck-file.md>
```

### Importing into Mochi

1. In Import > Markdown, choose "Multiple .md cards per file".
2. Select the separator as `///`.
3. Choose the file.

## Can I rely on this?

No. This project is experimental, and it's not well tested.

The decks created using ChatGPT this way might have obvious and important flaws. 

In 2025, SRS (spaced repetition system) communities still recommend NOT using AI tools to create flashcards. There are many reasons for this, you may search the Anki subreddit for more info on why.

## Contributions

All contributions are welcome, as long as you can reasonably show your changes result in a net improvement.

### TODOs for myself

- Make this into a proper polished CLI tool.