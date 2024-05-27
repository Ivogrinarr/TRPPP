# Используем базовый образ Python
FROM python:3.8

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /trpp

# Копируем файлы requirements.txt и скрипт python в контейнер
COPY requirements.txt .
COPY main.py .
COPY input1.xml .


# Устанавливаем зависимости из requirements.txt
RUN pip install -r requirements.txt

# Запускаем скрипт при запуске контейнера
CMD ["python", "./main.py"]