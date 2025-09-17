import telebot, random

bot = telebot.TeleBot('8386178821:AAFE7RY9zE33-_YfdCFQzKYZkK5oVjbPT18')

@bot.message_handler(command = ['start'])
def start(m, res=False):
    global number
    number = random.randint(1, 100)
    bot.send_message(m.chat.id, 'Привет угадаешь число, которое я загадал?')


@bot.message_handler(content_types = ['text'])
def guess(m):
    if m.text.startswith('/'):
        return 
    if int(m.text) == number:
        bot.reply_to(m, 'Угадал!')
    elif int(m.text) < number:
        bot.send_message(m.chat.id, 'Попробуй больше')
    elif int(m.text) > number:
        bot.send_message(m.chat.id, 'Попробуй меньше')

bot.polling(non_stop=True, interval = 0 )