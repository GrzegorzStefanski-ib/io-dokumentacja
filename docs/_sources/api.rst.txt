REST API
=======================

W oprogramowaniu znajdują się dwa endpointy.


Customer ID
---------------

Służący do pobierania informacji o użytkowniku o zadanym ID.

.. code-block:: RST

   GET http://localhost:8082/customers/$id 

   
Customer
------------

Służący do pobierania informacji o wszystkich użytkownikach.

.. code-block:: RST

   GET http://localhost:8082/customers 