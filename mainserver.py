import socket

server = socket.socket()
host = socket.gethostname()
port = 8000
server.bind((host , port))
server.listen(3)

message = "Welcome to the server !"
print(message , host)

client1 , address1 = server.accept()
print(f"The Client 1 with ip {address1} is connected To the server !")
print("Waiting for One more Client !")

client2 , address2 = server.accept()
print(f"The client 2 with ip {address2} is connected to the server !")
print("Okk I am done with my capacity !")

message1 = "Hello guys Welcome to the server !"
client1.send(message1.encode())
client2.send(message1.encode())
print("Welcome Message is been sent to the clients !.....")


while True:

    client1_message = client1.recv(1024)           # Client1_message is in ENCODED form ......
    message2 = str(client1_message.decode())        # This is the decoded of the client1_message
    print("Message from client1 is : ",message2)
    client2.send(client1_message)                     # This is already a encoded message that we have received from client1 and sending it to client2
    print("Message From Client1 is been sent to the client2 !.....")


    client2_message = client2.recv(1024)
    message3 = str(client2_message.decode())
    print("Message from client2 is : ", message3)
    client1.send(client2_message)
    print("Message From Client2 is been sent to the client1 !....." )



