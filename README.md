=Recreating the Learnhowtoprogram.com website using Rails

Site development utilizing minimal Rails magic. 
Site is live on Heroku @ http://learn-how-to-program.herokuapp.com/

Function: 
Allows an instructor to create individual lessons and link them to into sorted sections. The instructor can add/edit/delete lessons and sections as needed.

Utilizes Bootstrap for basic responsiveness. Some styling is still in-progress as additional media queries are required to manage some page objects.


---
Date 9/09/2014
  Lesson - Index, New, Create, Show, Edit, Update, Destroy actions
  Section - Index, New, Create, Show, Edit, Update, Destroy actions

---
* This project utilizes bundle gem to manage dependencies.
* This was completed on ruby v2.0, rails 4.1.5
* Database utilized: PostgreSQL
* Database schema: 

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

* Testing utilizes rails helper and rspec 3.0 for Test Driven Development
