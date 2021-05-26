Instalacja
===============

Wymagania
----------------

- Docker
- Docker Compose
- Java 8
- PostgreSQL
- Python >= 3.7


Budowa i uruchomienie kontenera
--------------------------------------

Tworzenie środowiska wirtualnego języka Python

.. code-block:: RST

   python -m pip install virtualenv
   python -m virtualenv venv
   venv\Scripts\activate
   python -m pip install -r requirements.txt


Aby zbudować obraz należy posłużyć się komendą

.. code-block:: RST

   docker-compose build


By uruchomić aplikacją należy posłużyć się komendą

.. code-block:: RST

   docker-compose up