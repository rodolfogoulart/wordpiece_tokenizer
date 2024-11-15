# wordpiece_tokenizer
 
Tokenizer to use on LLM

Code from [FONNX example](https://github.com/Telosnex/fonnx), i just made a package to use with the onnxruntime to make easy the integration

Example of use
```dart
  final tokenizer = WordpieceTokenizer(
    encoder: bertEncoder,
    decoder: bertDecoder,
    unkString: '[UNK]',
    unkToken: 100,
    startToken: 101,
    endToken: 102,
    maxInputTokens: 256,
    maxInputCharsPerWord: 100,
  ).tokenize('hello world');

  final detokenizer = WordpieceTokenizer(
    encoder: bertEncoder,
    decoder: bertDecoder,
    unkString: '[UNK]',
    unkToken: 100,
    startToken: 101,
    endToken: 102,
    maxInputTokens: 256,
    maxInputCharsPerWord: 100,
  ).detokenize(tokenizer[0].tokens);
```