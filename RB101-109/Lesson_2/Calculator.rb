require 'yaml'
MESSAGES = YAML.load_file('Calculator_Message.yml')

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

def val_sel?(ar, sel, lang)
  ar.include?(sel.to_i) ? nil : (message('valid_sel',lang))
  return ar.include?(sel.to_i)
end

def calc(nr_a, nr_b, op, language)
  if integer?(nr_a) && integer?(nr_b)
    nr_a = nr_a.to_i
    nr_b = nr_b.to_i
  else 
    nr_a = nr_a.to_f
    nr_b = nr_b.to_f
  end
  case op.to_i
  when 1
    prompt(message('sum', language) + (nr_a + nr_b).to_s)
  when 2
    prompt(message('dif', language) + (nr_a - nr_b).to_s)
  when 3
    prompt(message('prod', language) + (nr_a * nr_b).to_s)
  when 4
    if nr_b.zero?
      prompt MESSAGES['div_zero']
    elsif nr_a%nr_b != 0
      prompt(message('quot', language) + (nr_a.to_f / nr_b.to_f).to_s)
    else 
      prompt(message('quot', language) + (nr_a / nr_b).to_s)
    end
  end
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

input_a = 0
input_b = 0
input_op = ''
sel_a = ''
sel_b = ''

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
    prompt message('1st_nr', language)
    input_a = gets.chomp
    break if valid_number?(input_a, language)
  end

  loop do
    prompt message('2nd_nr', language)
    input_b = gets.chomp
    break if valid_number?(input_b, language)
  end

  loop do
    prompt message('oper', language)
    prompt('1 - '+message('add?', language))
    prompt('2 - '+message('sub?', language))
    prompt('3 - '+message('mul?', language))
    prompt('4 - '+message('div?', language))
    val_sel_b = [1, 2, 3, 4].freeze
    sel_b = gets.chomp
    if val_sel?(val_sel_b, sel_b, language)
      input_op = sel_b
      break
    end
  end
  calc(input_a, input_b, input_op, language)
end
