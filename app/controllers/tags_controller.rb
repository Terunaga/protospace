class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def show
    @tag = ActsAsTaggableOn::Tag.most_used.find_by(id: params[:id])
    @tags = Prototype.tagged_with(@tag.name)
  end
end
