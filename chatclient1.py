import socket

client1 = socket.socket()
host = socket.gethostname()
port = 8000
client1.connect((host , port))
print("Hey i am connected to the server !")

while True:

    message = client1.recv(1024)
    message.decode()
    print(message)
    send_message = input(str(">>"))
    client1.send(send_message.encode())
    print("Message is been send to the server !")








