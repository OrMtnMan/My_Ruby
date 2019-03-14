require 'yaml'
MESSAGES = YAML.load_file('Mortgage_Calculator_Message.yml')

def prompt(message)
  puts "=> #{message}"
end

def message(msg,lang='en')
  MESSAGES[lang][msg]
end

def integer?(nr)
  Integer(nr) rescue false
end

def float?(nr)
  Float(nr) rescue false
end

def valid_number?(nr,lang)
  unless integer?(nr) || float?(nr)
    prompt(message('valid_nr',lang))
    return false
  else
    return true
  end
end

def valid_number_intr?(nr,lang)
  unless integer?(nr) || float?(nr)
    prompt(message('valid_nr', lang))
    return false
  else
    if nr.to_f > 1 || nr.to_f <= 0
      prompt(message('valid_rate', lang))
      return false
    else
      return true
    end
  end
end

def val_sel?(ar, sel, lang)
  ar.include?(sel.to_i) ? nil : (message('valid_sel',lang))
  return ar.include?(sel.to_i)
end

def calc(p, j, n, language)
  p = p.to_f
  j = j.to_f
  n = n.to_f
  
  m = p * (j / (1 - (1 + j)**(-n)))
  
  prompt (message('result', language) + m.round(2).to_s)
end

language = 'en'

loop do
  prompt '1 - English, 2 - Español'
  lan_sel = gets.chomp.to_i
  case lan_sel
  when 1
    language = 'en'
    break
  when 2
    language = 'es'
    break
  end
end

VERS = 0.7
prompt (message('welcome', language) + VERS.to_s)
prompt '----------------------------------------------'

name = ''

loop do
  prompt message('enter_name', language)
  name = gets.chomp
  unless name.empty?
    prompt(message('thank_you', language) + name)
    break
  end
end

input_m = 0
input_p = 0
input_j = 0
input_n = 0
sel_a = ''

loop do
  puts ' '
  loop do
    prompt message('calc?', language)
    prompt('1 - ' + message('start', language))
    prompt('2 - ' + message('exit', language))
    val_sel_a = [1, 2]
    sel_a = gets.chomp
    break if val_sel?(val_sel_a, sel_a, language)
  end
  break if sel_a.to_i == 2

  loop do
    prompt message('loan_amount', language)
    input_p = gets.chomp
    break if valid_number?(input_p, language)
  end

  loop do
    prompt message('intr_rate', language)
    input_j = gets.chomp
    break if valid_number_intr?(input_j, language)
  end

  loop do
    prompt message('months', language)
    input_n = gets.chomp
    break if valid_number?(input_n, language)
  end
  
  calc(input_p, input_j, input_n, language)
end
