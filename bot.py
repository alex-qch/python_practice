# -*- coding: utf-8 -*-
import telebot
import config
import utils
import random

bot = telebot.TeleBot(config.token)

## 1st example repeat
#@bot.message_handler(content_types=["text"])
#def repeat_msg(message):
#    bot.send_message(message.chat.id, message.text)
##
## 2nd example music
def find_file_ids(message):
    for file in os.listdir('music/'):
        if file.split('.')[-1] == 'mp3':
           f = open('music/'+file, 'rb')
           msg = bot.send_voice(message.chat.id, f, None)
           bot.send_message(message.chat.id, msg.voice.file_id,reply_to_message_id=msg.message_id)
        time.sleep(3)
#####

def game(message):
    db_worker = SQLighter(config.database_name)
    row = db_worker.select_single(random.randint(1, utils.get_rows_count()))
    markup = utils.generate_markup(row[2], row[3])
    bot.send_voice(message.chat.id, row[1], reply_markup=markup)
    utils.set_user_game(message.chat.id, row[2])
    db_worker.close()

@bot.message_handler(func=lambda message: True, content_types=['text'])
def check_answer(message):
   
    answer = utils.get_answer_for_user(message.chat.id)
    if not answer:
        bot.send_message(message.chat.id, 'Чтобы начать игру, выберите команду /game')
    else:
        keyboard_hider = types.ReplyKeyboardRemove()
        if message.text == answer:
            bot.send_message(message.chat.id, 'Увы, Вы не угадали. Попробуйте ещё раз!', reply_markup=keyboard_hider)
    utils.finish_user_game(message.chat.id)


if __name__ == '__main__':
    utils.count_rows()
    random.seed()
    bot.polling(none_stop=True)
