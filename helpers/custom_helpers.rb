module CustomHelpers
  # Generates HTML for the footer of each page, determining the 'next' project based on the 'position' frontmatter
  def footer
    footer_left = ""

    unless current_page.path == "index.html"
      footer_left += link_to('Index', '/')
    end

    if current_page.data.position
      next_project = sitemap.where(:position => current_page.data.position + 1).first || nil

      if next_project
        footer_left += "<span class='divider'>|</span>#{link_to('Next', next_project.url)}".html_safe
      end
    end

    footer_right = ""

    unless current_page.path == "contact.html"
      footer_right += link_to('Contact', '/contact') + '<span class="divider">|</span>'.html_safe
    end

    "<footer>
      <div class='left'>#{footer_left}</div>
      <div class='right'>#{footer_right}&copy; 2014</div>
    </footer>"
  end
end

