class Judge < ActiveRecord::Base

  puts "What score do you want to give?"
  number = gets.chomp.to_i

  def give_score(name, number)
    score_up = Judge.find_by(name: name)
    score_up.update(score: number)
    return name, number
  end
  self.validates(:name, :score { presence: true})
end