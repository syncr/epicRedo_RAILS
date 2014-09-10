
Rewriting website with Rails
====================================
Site development utilizing minimal Rails magic. 

Live on Heroku @ http://learn-how-to-program.herokuapp.com/

Function: 
Allows an instructor to create individual lessons and link them to into sorted sections. The instructor can add/edit/delete lessons and sections as needed.

Utilizes Bootstrap for basic responsiveness. Custom styling has been applied and some additional media queries are in-progress to manage some objects.


---

* Utilizes bundle gem to manage dependencies.
* Completed using ruby v2.0, rails 4.1.5
* Database utilized: PostgreSQL
* Utilizes rails helper and rspec 3.0 for TDD

---
Database schema: 

    create_table "lessons", force: true do |t|
        t.string  "name"
        t.text    "description"
        t.integer "number"
        t.integer "section_id"
    end

     create_table "sections", force: true do |t|
        t.string  "name"
        t.integer "number"
    end

