module PhotosHelper
  def like_icon(liked)
    if liked
      '<i class="fa fa-thumbs-up fa-3x" aria-hidden="true"></i>'.html_safe
    else
      '<i class="fa fa-thumbs-o-up fa-3x" aria-hidden="true"></i>'.html_safe
    end
  end
end
