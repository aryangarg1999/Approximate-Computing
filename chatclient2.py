# THE MAIN WORK OF THIS CLIENT IS TO RECEIVE THE MESSAGE FROM THE SERVER AND THEN GIVE THE FEEDBACK(sending message back) TO THE SERVER....

import socket
import pickle
import time

client2 = socket.socket()
host = socket.gethostname()    # There I have to make change while connecting my pc with the pc of the dinesh(Client1) . "172.16.15.156"  My IP
port = 8000
client2.connect((host , port))
print("Hey i am connected to the server !")


# HERE IS A SEQUENCE WILL RUN THAT CLIENT1 WILL ALWAYS INITIATE THE CHAT.......
# SO HERE THIS EXTRA ONE IS FOR THE SERVER RECEIVING OF DATA....

message1 = client2.recv(1024)
message1.decode()
print(message1)


while True:

    message = client2.recv(1024)
    message.decode()
    print(message)
    send_message = input(str(">>"))
    client2.send(send_message.encode())
    print("Message is been send to the server !")




