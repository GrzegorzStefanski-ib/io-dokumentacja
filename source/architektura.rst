Architektura
===============

Diagram UML
-------------

.. uml::

    class Lab3Application {
        {static} + main(args: String[]): void
        + dataBootstrap(repository: CustomerRepository) CommandLineRunner
    }
    
    interface CustomerRepository {
        {abstract} findByLastName(lastName: String): List<Customer>
        {abstract} findById(id: Long): Customer
    }
    
    class CustomerController {
        - CustomerRepository: CustomerRepository
        + CustomerController(): CustomerController
        + getUserById(customerId: Long): Customer
        + getCustomers(): Iterable<Customer>
    }
    
    class Customer {
        - id: Long
        - firstName: String
        - lastName: String
        # Customer(): Customer
        + Customer(firstName: String, lastName: String): Customer
        + toString(): String
    }

    Lab3Application -- CustomerRepository
    CustomerController -- Customer
    CustomerController "1" *-- "1" CustomerRepository
    

Diagram sekwencji
---------------------

.. uml::

    User -> Application: GET endpoint request
    Application --> User: GET endpoint response