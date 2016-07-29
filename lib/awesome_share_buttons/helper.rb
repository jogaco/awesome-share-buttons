# coding: utf-8
module AwesomeShareButtons
  module Helper

    def awesome_share_buttons(title = "", opts = {})
      extra_data = {}
      rel = opts[:rel]
      html = []
      html << "<div class='awesome-share-buttons' data-title='#{h title}' data-img='#{opts[:image]}' data-url='#{opts[:url]}'>"

      AwesomeShareButtons.config.allow_sites.each do |name|
        extra_data = opts.select { |k, _| k.to_s.start_with?('data') } if name.eql?('tumblr')

        link_title = t "awesome_share_buttons.share_to", :name => t("awesome_share_buttons.#{name.downcase}")
        html << link_to("<i class='fa fa-#{get_icon(name.downcase)}'></i>".html_safe,"#", {:rel => ["nofollow", rel],
                                  "data-site" => name,
                                  :class => "awesome-share-buttons-#{name}",
                                  :onclick => "return AwesomeShareButtons.share(this);",
                                  :title => h(link_title)}.merge(extra_data))
      end
      html << "</div>"
      raw html.join("\n")
    end

    def get_icon(name)
      (AwesomeShareButtons.config.site_to_icon || {})[name] || name
    end

  end
end
