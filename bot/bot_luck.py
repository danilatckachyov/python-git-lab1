import telebot
import random

bot = telebot.TeleBot('8386178821:AAFE7RY9zE33-_YfdCFQzKYZkK5oVjbPT18')

# Загадываем число при запуске
number = random.randint(1, 100)

@bot.message_handler(commands=['start'])  # исправлено: commands вместо command
def start(m, res=False):
    global number
    number = random.randint(1, 100)
    bot.send_message(m.chat.id, '🎯 Привет! Я загадал число от 1 до 100. Попробуй угадать!')

@bot.message_handler(content_types=['text'])
def guess(m):
    # Пропускаем команды
    if m.text.startswith('/'):
        return
        
    try:
        user_guess = int(m.text)
        
        if user_guess == number:
            bot.reply_to(m, '🎉 Угадал! Молодец!')
        elif user_guess < number:
            bot.send_message(m.chat.id, '⬆️ Попробуй больше')
        else:
            bot.send_message(m.chat.id, '⬇️ Попробуй меньше')
            
    except ValueError:
        bot.send_message(m.chat.id, '❌ Пожалуйста, вводи только числа!')

bot.polling(none_stop=True, interval=0)  # исправлено: none_stop вместо non_stop