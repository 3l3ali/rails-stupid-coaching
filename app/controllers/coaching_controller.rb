class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    @coach_answer = coach_answer_enhanced(@question)

  end

  def ask
  end

  def coach_answer(your_message)
    return "" if your_message == "I am going to work right now!"
    return "Silly question, get dressed and go to work!" if your_message.split('').last == '?'
    return "I don't care, get dressed and go to work!"
  end

  def coach_answer_enhanced(your_message)
    return "" if your_message == "I am going to work right now!".upcase
    if your_message == your_message.upcase
      return "I can feel your motivation! " + coach_answer(your_message)
    else
      return coach_answer(your_message)
    end
  end

end
