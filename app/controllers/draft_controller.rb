class DraftController < ApplicationController
  def draft
    render({:template => "draft_templates/index.html.erb"})
  end
end