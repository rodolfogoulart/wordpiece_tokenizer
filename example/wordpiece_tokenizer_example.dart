import 'package:wordpiece_tokenizer/src/tokenizers/bert_vocab.dart';
import 'package:wordpiece_tokenizer/wordpiece_tokenizer.dart';

void main() {
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

  print('tokens: ${tokenizer[0].tokens}');
  print('detokenizer: ${detokenizer}');
}
