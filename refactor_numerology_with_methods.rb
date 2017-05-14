puts "What is your birthdate? (MMDDYYYY)"
birthdate = gets.split("")

###
def adding_math (birthdate)
  number = birthdate [0].to_i + birthdate [1].to_i + birthdate [2].to_i + birthdate [3].to_i + birthdate [4].to_i + birthdate [5].to_i + birthdate [6].to_i + birthdate [7].to_i
end

####
def reduce_number (birthdate)
  number = adding_math(birthdate).to_s.split("")
  number = number[0].to_i + number[1].to_i

  if number > 9
    number = number.to_s.split("")
    number = number[0].to_i + number[1].to_i
  end

  return number
end

#####
def birth_path_number (birthdate)
  #number = adding_math (birthdate)
  #number = reduce_number (number)
end

####
def message (path_number)

  case (path_number)
    when 1
      then message = "Your numerology is #{path_number}.One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
    when 2
      then message = "Your numerology is #{path_number}. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
      then message = "Your numerology is #{path_number}. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
      then message = "Your numerology is #{path_number}. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
      then message = "Your numerology is #{path_number}. This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
      then message = "Your numerology is #{path_number}. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
      then message = "Your numerology is #{path_number}. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 9
      then message = "Your numerology is #{path_number}. This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    when 8
      then message = "Your numerology is #{path_number}. This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    else
      message = "Your birth number is greater than 9"
  end

end

number = reduce_number (birthdate)
#path_number = birth_path_number (birthdate)
#puts message (path_number)
puts message (number)
