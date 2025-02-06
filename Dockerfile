# Используем официальный образ Ruby
FROM ruby:3.4.1

# Устанавливаем системные зависимости
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs

# Создаём рабочую директорию
WORKDIR /app

# Копируем содержимое хоста в /app в контейнере
COPY . .

# Устанавливаем зависимости через Bundler
RUN bundle install
