import subprocess
from gtts import gTTS
import dbus.service
import threading
import time

player = 'mpg123'

class AudioThread(object):
    def __init__(self, audio_text):
        #self.finished = threading.Event()
        self.thread = threading.Thread(target=self.work, args=(audio_text,))
        self.thread.run()
    def work(self, audio_text):
        try:
            voz = gTTS(text=audio_text, lang='pt')
            voz.save('audio.mp3')
            subprocess.Popen([player,'audio.mp3'], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        except:
            print("Error while playing audio")



class PlayAudio(dbus.service.Object):
    def __init__(self, bus_name):
        super().__init__(bus_name, "/audioPlayer")

    @dbus.service.method("org.nucleus.PlayAudio",
                         in_signature='s', out_signature='i')
    def tts_(self, audio_text):
        try:
            thread = AudioThread(audio_text)
            return 1
        except:
            return 0
