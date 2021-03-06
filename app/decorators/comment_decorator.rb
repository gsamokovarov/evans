# encoding: utf-8
class CommentDecorator < ContributionDecorator
  decorates :comment

  def dom_id
    "comment-#{model.id}"
  end

  def css_class
    "comment"
  end

  def permalink_path
    model
  end

  def edit_path
    [:edit, model.revision, model]
  end
end
