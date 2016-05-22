require 'spec_helper'

describe KakasiParser do
  it 'has a version number' do
    expect(KakasiParser::VERSION).not_to be nil
  end

  it 'should parse return all readings as array' do
    expect(KakasiParser.parse('{yamazaki|yamasaki}{satoshi|sato|sou|akira|satoru}')).to eq(
      [
        "yamazakisatoshi",
        "yamazakisato",
        "yamazakisou",
        "yamazakiakira",
        "yamazakisatoru",
        "yamasakisatoshi",
        "yamasakisato",
        "yamasakisou",
        "yamasakiakira",
        "yamasakisatoru"
      ]
    )
  end

  it 'should parse return all readings as array with another pattern' do
    expect(KakasiParser.parse('a{1|2}b{3|4}c')).to eq(
      [
        "a1b3c",
        "a1b4c",
        "a2b3c",
        "a2b4c"
      ]
    )
  end

  it 'should kakasi call Kakasi.kakasi with same parameters' do
    expect(Kakasi).to receive(:kakasi).with('-Ja -p', '山崎聡').and_return('OK')
    expect(KakasiParser.kakasi('-Ja -p', '山崎聡')).to eq(['OK'])
  end
end
