# Entity Relation Models
John Leonard
2023-10-26

An entity-relationship (ER) model is a conceptual data model used in the
field of database design to represent the structure of a database. It
focuses on describing the entities (objects, concepts, or things) in a
domain, the relationships between those entities, and the attributes
(properties or characteristics) associated with the entities. The ER
model is commonly used to visualize and understand the high-level
organization of data within a system before it is implemented in a
database management system.

We’ll be using ER diagrams extensively in this class, both for homework
assignments and for the semester project. Using Quarto to create ER
diagrams is pretty easy and fun. AND really helps in the learning!

This document was creating using [Quarto](https://quarto.org/) and
[markdown](https://quarto.org/docs/authoring/markdown-basics.html).

ChatGPT was used to generate some of the basic definitions and examples.
ChatGPT is a language model created by OpenAI that employs
state-of-the-art AI techniques to generate human-like text. It can
provide explanations, examples, and insights related to various
computing concepts. Please note that while ChatGPT is a powerful tool,
the content it generates should be reviewed and validated by a subject
matter expert or instructor for accuracy and relevance.

## Key components of an ER model

Entities  
These represent real-world objects, concepts, or things that have data
stored about them. Each entity is depicted as a rectangle in the ER
diagram.

Attributes  
Attributes are properties or characteristics that describe the entities.
For example, if you’re modeling a *Customer* entity, attributes could
include *CustomerID,* *Name,* *Email,* etc.

Relationships  
Relationships illustrate how entities are related to each other.
Relationships can be one-to-one, one-to-many, or many-to-many, and they
help define how data is interconnected.

Here is a few simple examples of simple ER diagrams:

<center>

<div class="columns">

<div class="column">

<img src="sample_files\figure-commonmark\mermaid-figure-1.png"
style="width:1.66in;height:4.84in" />

</div>

<div class="column">

<img src="sample_files\figure-commonmark\mermaid-figure-5.png"
style="width:3.85in;height:4.84in" />

</div>

<center>
*Example ER diagrams*
</center>

</div>

</center>

The diagram above is drawn using
[mermaid](https://mermaid.js.org/syntax/entityRelationshipDiagram.html).
The code itself is embedded within the markdown document. The markdown
document is *rendered* to create an HTML file with all the necessary
graphics.

Here is the mermaid code that created the ER diagram on the left:

<img src="sample_files\figure-commonmark\mermaid-figure-4.png"
style="width:1.66in;height:4.84in" />

## Description of the relationships

In the example code on the left, above:

- the *Student* entity has a one-to-many relationship with the
  *Enrollment* entity, representing that a student can be enrolled in
  multiple courses.

- The *Enrollment* entity has a many-to-one relationship with both the
  *Student* and *Course* entities, indicating that multiple enrollments
  belong to a single student and a single course.

- The *Course* entity has a one-to-many relationship with the
  *Enrollment* entity, representing that a course can have multiple
  enrollments.

## *Cardinality* in relationships

The funny symbols (crows feet) in the diagrams above provide details on
the numeric relationships between the entities.

Cardinality refers to the numerical relationships between instances of
two entities participating in a relationship. It describes how many
instances of one entity are associated with how many instances of
another entity through a specific relationship.

Understanding cardinality is crucial to good database design. Your
database can take completely different structures (called *schema*)
depending on the cardinality of the relationships.

There are several cardinality options available to describe the
relationships between entities:

One-to-One (1:1) :One instance of an entity is associated with one
instance of another entity. For example, each *Person* has one
*Passport*, and each *Passport* belongs to one *Person*.

One-to-Many (1:N)  
One instance of an entity is associated with multiple instances of
another entity. For example, each *Department* has multiple *Employees*,
but each *Employee* belongs to only one *Department.*

Many-to-One (N:1)  
Multiple instances of an entity are associated with one instance of
another entity. This is the reverse of the *One-to-Many* relationship.
For example, multiple *Students* enroll in one *Course,* but each
*Course* is associated with many *Students.*

Many-to-Many (N:N)  
Multiple instances of an entity are associated with multiple instances
of another entity.

Typically, a junction table (also known as an associative or linking
table) is used to represent this relationship. For example, *Students*
can be enrolled in multiple *Courses,* and each *Course* can have
multiple *Students.*

## Crows Foot notation

Cardinality is often depicted using crow’s foot notation in an ER
diagram, where the symbols represent the relationship between entities.
Here’s a quick overview of how the cardinality options are represented
using crow’s foot notation:

One-to-One  
A straight line between entities with *1* at one end and *1* at the
other end.

One-to-Many  
A straight line from the *1* side to a crow’s foot at the *N* side.

Many-to-One  
A crow’s foot at the *N* side and a straight line at the *1* side.

Many-to-Many  
Crow’s feet at both ends of the relationship line.

The following table summarizes the different codes used in Mermaid:

| Value (left) | Value (right) | Meaning                       |
|:------------:|:-------------:|-------------------------------|
|     `|o`     |     `o|`      | Zero or one                   |
|     `||`     |     `||`      | Exactly one                   |
|     `}o`     |     `o{`      | Zero or more (no upper limit) |
|     `}|`     |     `|{`      | One or more (no upper limit)  |

Cardinality helps to define the nature and constraints of relationships
between entities, which is crucial for designing a well-structured and
efficient database schema.

## Example with Attributes

As we work more with entities and relationships, we’ll want to provide
more details, that is *attributes* about each of the entities. As we get
more explicit in our descriptions of the entities, our ER diagrams will
get more complex.

Below is an example of an ER diagram with attributes associate with the
entities.

<div class="columns">

<div class="column">

<center>

<img src="sample_files\figure-commonmark\mermaid-figure-3.png"
style="width:1.66in;height:5.08in" />

</center>

</div>

<div class="column">

<img src="sample_files\figure-commonmark\mermaid-figure-2.png"
style="width:1.66in;height:5.08in" />

</div>

Figure and Mermaid code side-by-side

</div>

## Another way to show ER diagrams

<div>

<div>

<img src="sample_files\figure-commonmark\dot-figure-1.png"
style="width:7in;height:5in" />

</div>

</div>

## Benefits and uses of an ER model

Here are a few benefits of using an ER model

Database Design  
ER models serve as blueprints for designing the structure of a database.
They help database designers create a clear and organized representation
of the data that needs to be stored.

Communication  
ER models provide a visual and intuitive way to communicate the
structure of a database to stakeholders, including developers, business
analysts, and users. It bridges the gap between technical and
non-technical teams.

Clarity  
ER models help in understanding the relationships between different
entities in a domain, making it easier to identify and resolve data
modeling issues.

Normalization  
ER models aid in achieving database normalization, a process that helps
reduce data redundancy and improve data integrity by organizing data
efficiently.

Maintenance and Evolution  
ER models make it easier to modify, update, or extend a database
structure over time. Changes to the database can be planned and
implemented based on the ER model.

Documentation  
ER models provide a structured way to document the data requirements of
an organization or system. They act as a reference for developers and
analysts.

Query and Reporting  
ER models can guide the development of queries and reports by defining
how data is related and structured.

Database Management Systems (DBMS)  
ER models provide a foundation for designing the schema of a database
that can be implemented using various database management systems, such
as relational databases, NoSQL databases, and more.

## Summary

In summary, an entity-relationship model is a valuable tool for
designing and visualizing the structure of a database, ensuring that
data is organized, relationships are clearly defined, and database
design decisions are well-informed.
