class TranslationService
  attr_reader :translator, :text, :from_langauge, :to_language, :result

  def initialize(options = {})
    @translator    = BingTranslator.new(ENV['BING_CLIENT_ID'], ENV['BING_CLIENT_SECRET'])
    @text          = options.fetch(:text)
    @from_language = options.fetch(:from, :en)
    @to_language   = options.fetch(:to)
  end

  def translate
    @result = translator.translate text, from: from_language, to: to_language
  end

  def speak(phrase = result, language = to_language)
    translator.speak phrase, language: language, format: 'audio/mp3', options: 'MaxQuality'
  end
end
