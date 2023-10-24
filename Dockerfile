# Используйте базовый образ Python 3.11
FROM python:3.11

# Установите рабочую директорию внутри контейнера
WORKDIR /usr/src/app

# Скопируйте содержимое текущей директории в контейнер в директорию /usr/src/app
COPY . /usr/src/app

# Установите зависимости, перечисленные в requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Выставьте порт 8000, который будет прослушиваться контейнером
EXPOSE 8000

# Запустите приложение с помощью команды CMD
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]


