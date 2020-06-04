import 'package:russianalphabet/consts/string_keys.dart';
import 'package:russianalphabet/model/letter.dart';

const Letter EMPTY_LETTER = Letter(
  key: 'empty',
  letter: '',
  transcriptionStrKey: '',
  exampleStrKey: '',
);
const Letter a = Letter(
  key: 'a',
  letter: 'A',
  transcriptionStrKey: kKeyATranscription,
  exampleStrKey: kKeyAExample,
);
const Letter b = Letter(
  key: 'b',
  letter: 'Б',
  transcriptionStrKey: kKeyBTranscription,
  exampleStrKey: kKeyBExample,
);
const Letter v = Letter(
  key: 'v',
  letter: 'В',
  transcriptionStrKey: kKeyVTranscription,
  exampleStrKey: kKeyVExample,
);
const Letter g = Letter(
  key: 'g',
  letter: 'Г',
  transcriptionStrKey: kKeyGTranscription,
  exampleStrKey: kKeyGExample,
);
const Letter d = Letter(
  key: 'd',
  letter: 'Д',
  transcriptionStrKey: kKeyDTranscription,
  exampleStrKey: kKeyDExample,
);
const Letter ye = Letter(
  key: 'ye',
  letter: 'Е',
  transcriptionStrKey: kKeyYeTranscription,
  exampleStrKey: kKeyYeExample,
);
const Letter yo = Letter(
  key: 'yo',
  letter: 'Ё',
  transcriptionStrKey: kKeyYoTranscription,
  exampleStrKey: kKeyYoExample,
);
const Letter zh = Letter(
  key: 'zh',
  letter: 'Ж',
  transcriptionStrKey: kKeyZhTranscription,
  exampleStrKey: kKeyZhExample,
);
const Letter z = Letter(
  key: 'z',
  letter: 'З',
  transcriptionStrKey: kKeyZTranscription,
  exampleStrKey: kKeyZExample,
);
const Letter i = Letter(
  key: 'i',
  letter: 'И',
  transcriptionStrKey: kKeyITranscription,
  exampleStrKey: kKeyIExample,
);
const Letter j = Letter(
  key: 'j',
  letter: 'Й',
  transcriptionStrKey: kKeyJTranscription,
  exampleStrKey: kKeyJExample,
);
const Letter k = Letter(
  key: 'k',
  letter: 'К',
  transcriptionStrKey: kKeyKTranscription,
  exampleStrKey: kKeyKExample,
);
const Letter l = Letter(
  key: 'l',
  letter: 'Л',
  transcriptionStrKey: kKeyLTranscription,
  exampleStrKey: kKeyLExample,
);
const Letter m = Letter(
  key: 'm',
  letter: 'М',
  transcriptionStrKey: kKeyMTranscription,
  exampleStrKey: kKeyMExample,
);
const Letter n = Letter(
  key: 'n',
  letter: 'Н',
  transcriptionStrKey: kKeyNTranscription,
  exampleStrKey: kKeyNExample,
);
const Letter o = Letter(
  key: 'o',
  letter: 'О',
  transcriptionStrKey: kKeyOTranscription,
  exampleStrKey: kKeyOExample,
);
const Letter p = Letter(
  key: 'p',
  letter: 'П',
  transcriptionStrKey: kKeyPTranscription,
  exampleStrKey: kKeyPExample,
);
const Letter r = Letter(
  key: 'r',
  letter: 'Р',
  transcriptionStrKey: kKeyRTranscription,
  exampleStrKey: kKeyRExample,
);
const Letter s = Letter(
  key: 's',
  letter: 'С',
  transcriptionStrKey: kKeySTranscription,
  exampleStrKey: kKeySExample,
);
const Letter t = Letter(
  key: 't',
  letter: 'Т',
  transcriptionStrKey: kKeyTTranscription,
  exampleStrKey: kKeyTExample,
);
const Letter u = Letter(
  key: 'u',
  letter: 'У',
  transcriptionStrKey: kKeyUTranscription,
  exampleStrKey: kKeyUExample,
);
const Letter f = Letter(
  key: 'f',
  letter: 'Ф',
  transcriptionStrKey: kKeyFTranscription,
  exampleStrKey: kKeyFExample,
);
const Letter kh = Letter(
  key: 'kh',
  letter: 'Х',
  transcriptionStrKey: kKeyKhTranscription,
  exampleStrKey: kKeyKhExample,
);
const Letter c = Letter(
  key: 'c',
  letter: 'Ц',
  transcriptionStrKey: kKeyCTranscription,
  exampleStrKey: kKeyCExample,
);
const Letter ch = Letter(
  key: 'ch',
  letter: 'Ч',
  transcriptionStrKey: kKeyChTranscription,
  exampleStrKey: kKeyChExample,
);
const Letter sh = Letter(
  key: 'sh',
  letter: 'Ш',
  transcriptionStrKey: kKeyShTranscription,
  exampleStrKey: kKeyShExample,
);
const Letter shch = Letter(
  key: 'shch',
  letter: 'Щ',
  transcriptionStrKey: kKeyShchTranscription,
  exampleStrKey: kKeyShchExample,
);
const Letter hard = Letter(
  key: 'hard',
  letter: 'Ъ',
  transcriptionStrKey: kKeyHardTranscription,
  exampleStrKey: kKeyHardExample,
);
const Letter y = Letter(
  key: 'y',
  letter: 'Ы',
  transcriptionStrKey: kKeyYTranscription,
  exampleStrKey: kKeyYExample,
);
const Letter soft = Letter(
  key: 'soft',
  letter: 'Ь',
  transcriptionStrKey: kKeySoftTranscription,
  exampleStrKey: kKeySoftExample,
);
const Letter eh = Letter(
  key: 'eh',
  letter: 'Э',
  transcriptionStrKey: kKeyEhTranscription,
  exampleStrKey: kKeyEhExample,
);
const Letter yu = Letter(
  key: 'yu',
  letter: 'Ю',
  transcriptionStrKey: kKeyYuTranscription,
  exampleStrKey: kKeyYuExample,
);
const Letter ya = Letter(
  key: 'ya',
  letter: 'Я',
  transcriptionStrKey: kKeyYaTranscription,
  exampleStrKey: kKeyYaExample,
);

final Map<String, Letter> letters = {
  a.key: a,
  b.key: b,
  v.key: v,
  g.key: g,
  d.key: d,
  ye.key: ye,
  yo.key: yo,
  zh.key: zh,
  z.key: z,
  i.key: i,
  j.key: j,
  k.key: k,
  l.key: l,
  m.key: m,
  n.key: n,
  o.key: o,
  p.key: p,
  r.key: r,
  s.key: s,
  t.key: t,
  u.key: u,
  f.key: f,
  kh.key: kh,
  c.key: c,
  ch.key: ch,
  sh.key: sh,
  shch.key: shch,
  hard.key: hard,
  y.key: y,
  soft.key: soft,
  eh.key: eh,
  yu.key: yu,
  ya.key: ya,
};
