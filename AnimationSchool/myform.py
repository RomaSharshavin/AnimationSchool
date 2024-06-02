from bottle import post, request, redirect
import re
def mail(email:str):
    regex = re.compile(r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Z|a-z]{2,})+')
    if re.fullmatch(regex, email):
        return True
    else:
        return False   
@post('/forms', method="post")
def my_form():
     data = request.forms.get("NAME")#�������� ������ �� ����� '���'
     data11 = request.forms.get("EMAIL")#�������� ������ �� ����� 'email'
     data12 = request.forms.get("MESSAGE")#�������� ������ �� ����� '���������'
     if not mail(data11):
         return "����������� ����� ����������!"#�������� �� ������������ ��������� ������ ��.�����
     if(len(data)) <= 1:
         return "������� �������� ���!" #�������� �� ������������ �������� ���������� � ���� '���'
     if(data12) == "":
         return "������, ������ ���������!"#�������� �� ������������ ��������� ���������
     file = open("newData.txt", "a")
     file.write("Name: " + data + "\n")
     file.write("Email: " + data11 + "\n")
     file.write("Message: " + data12 + "\n")
     file.write("------------------------------------" + "\n")
     file.close()
     return "����� ���������!"#������ ������ � ����
     
     
     
     
     
     
     




