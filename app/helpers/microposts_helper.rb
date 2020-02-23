module MicropostsHelper

  def markdown(content)
    render = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      striketchrouth: true,
      superscript: true
    }
    Redcarpet::Markdown.new(render, options).render(content).html_safe
  end

end
