require 'net/http'
require 'uri'
require 'rouge'

module Jekyll
  class GitHubIncludeTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @repo, @blob, @path, @specified_language = text.strip.split(/\s+/, 4)
    end

    def detect_language(url, content)
      ext = File.extname(URI.parse(url).path).downcase
      lexer = Rouge::Lexer.guess_by_filename("dummy#{ext}")

      if lexer.nil? && !content.strip.empty?
        lexer = Rouge::Lexer.guess(content: content) rescue nil
      end

      lexer || Rouge::Lexers::PlainText
    end

    def get_filename(url)
      File.basename(URI.parse(url).path)
    end

    def render(context)
      # Accessing variables from context
      repo = @repo || context['repo']
      blob = @blob || context['blob']
      path = @path || context['path']
      
      raw_url = "https://raw.githubusercontent.com/#{repo}/#{blob}/#{path}"
      github_url = "https://github.com/#{repo}/blob/#{blob}/#{path}"

      # puts "Fetching GitHub raw file: #{raw_url}"
      # puts "GitHub URL: #{github_url}"

      uri = URI.parse(raw_url)
      response = Net::HTTP.get(uri)
      content = response.force_encoding('UTF-8')

      unless content.valid_encoding?
        content = content.encode('UTF-8', invalid: :replace, undef: :replace, replace: '?')
      end

      # Detect language or use specified language
      lexer = @specified_language ? Rouge::Lexer.find(@specified_language) : detect_language(raw_url, content)

      filename = get_filename(raw_url)
      filetype = lexer.tag || 'plaintext'

      formatter = Rouge::Formatters::HTML.new
      highlighted_code = formatter.format(lexer.lex(content))

      <<-HTML
      <div>
        <div class="highlight">
          <div class="file-header">
            #{filetype} &nbsp;///&nbsp; <a href="#{github_url}">#{filename}</a>
          </div>
          <pre><code class="language-#{filetype}">#{highlighted_code}</code></pre>
        </div>
      </div>
      HTML
    rescue StandardError => e
      "<p>Error fetching GitHub raw file: #{e.message}</p>"
    end
  end
end

Liquid::Template.register_tag('github_include', Jekyll::GitHubIncludeTag)

