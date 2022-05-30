class QuestionsController < ApplicationController
  def ask
  end

  def answer
    toto = params[:answer] || ""

    if toto == 'I am going to work'
      @answer = 'Great'
    elsif toto.chars.last == '?'
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
