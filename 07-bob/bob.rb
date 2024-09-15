class Bob
  def hey(remark)
    case
    when silent?(remark)
      'Fine. Be that way!'
    when shouting?(remark)
      'Whoa, chill out!'
    when question?(remark)
      'Sure.'
    else
      'Whatever.'
    end
  end

  private

  def silent?(remark)
    remark.strip.empty?
  end

  def shouting?(remark)
    remark == remark.upcase && !remark.strip.empty? && contains_letters?(remark)
  end

  def question?(remark)
    remark.end_with?('?')
  end

  def contains_letters?(remark)
    remark.match?(/[a-zA-Z]/)
  end
end
