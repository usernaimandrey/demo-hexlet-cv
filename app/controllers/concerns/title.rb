# frozen_string_literal: true

module Title
  def base_title
    title t('title.base')
  end

  def title(part = nil, options = {})
    @parts ||= []

    unless part
      return nil if @parts.blank?

      return @parts.compact_blank.reverse.join(' - ')
    end

    @parts << if part.instance_of? Symbol
                translate_title(part, options)
              else
                part
              end
  end

  def translate_title(key, options = {})
    scope = [:titles]
    if options[:scope]
      scope += options[:scope].split('.') if options[:scope].is_a? String
      scope += options[:scope] if options[:scope].is_a? Array
    else
      scope << params[:controller].split('/')
    end
    # scope << params[:action]

    # values = options[:values] || {}

    # msg = I18n.t(key, scope: scope, **values)
    # Rails.logger.debug(Term::ANSIColor.green("title: #{msg}"))

    I18n.t(key, scope:)

    # msg
  end

  def meta_tag_title(entity)
    [entity, t('titles.web.base')].join(' - ')
  end
end
