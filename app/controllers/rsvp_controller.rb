class RsvpController < ApplicationController
    def show
        render params[:page]
    end
end