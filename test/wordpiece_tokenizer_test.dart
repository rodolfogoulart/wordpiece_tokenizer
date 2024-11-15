import 'package:wordpiece_tokenizer/src/tokenizers/bert_vocab.dart';
import 'package:wordpiece_tokenizer/wordpiece_tokenizer.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
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

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(tokenizer[0].tokens, isNotEmpty);
      expect(detokenizer, equals('hello world'));
    });
  });
}
