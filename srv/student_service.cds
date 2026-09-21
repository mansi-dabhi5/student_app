// we are calling namespace to access tables
using {student.db as model} from '../db/schema';// we can use multiple table using model keyword

service StudentAPIService {
    entity StudentSet as projection on model.Students;// StudentSet is custom entity name, standard syntax

}

service CoursesAPIService {
    entity CoursesSet as projection on model.Courses;// CoursesSet is custom entity name, standard syntax
    
}