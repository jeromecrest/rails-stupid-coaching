class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == 'I am going to work'
      @answer = { question: params[:question], answer: 'Great' }
    elsif params[:question][-1] == '?'
      @answer = { question: params[:question], answer: 'Silly question, get dressed and go to work!.' }
    else
      @answer = { question: params[:question], answer: "I don't care, get dressed and go to work!" }
    end
  end
end
