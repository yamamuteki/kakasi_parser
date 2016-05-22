require "kakasi_parser/version"
require 'kakasi'

module KakasiParser
  def self.parse(kakasi_result)
    kakasi_result.scan(/[^{}]+/).map{ |match| match.split('|') }.reduce{ |a, b| a.product(b) }.map{ |reading| reading.is_a?(Array) ? reading.join : reading }
  end

  def self.kakasi(options, original)
    parse(Kakasi.kakasi(options, original))
  end
end
