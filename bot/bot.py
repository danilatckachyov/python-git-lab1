import telebot

bot = telebot.TeleBot("8322569340:AAEppKkt8_6_g7W7j7Fv598cCBI_8lJeE-Y")

@bot.message_handler(command = ["start"])
def start(m, res = False):
    bot.send_message(m.chat.id, "Я бот, а ты не бот, напиши мне что-нибудь")

@bot.message_handler(content_types = ["text"])
def reply(m):
    bot.reply_to(m, m.text + " ме-ме-ме-ме")
    
bot.polling(none_stop=True, interval=0)