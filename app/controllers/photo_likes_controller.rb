class PhotoLikesController < ApplicationController

  def update
    photo = Photo.find(params[:id])
    photo_like = PhotoLike.find_or_initialize_by(photo: photo, user: current_user)

    if photo_like.persisted?
      photo_like.destroy
    else
      photo_like.save
    end
    redirect_to photo
  end

end
