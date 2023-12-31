# frozen_string_literal: true

# creating categories
basic_category = Category.create!(title: 'basic')
intermediate_category = Category.create!(title: 'intermediate')
advanced_category = Category.create!(title: 'advanced')

# creating users
john = User.create!(name: 'John', email: 'john1@test.com', password: 'johnjohn')
ivan = Admin.create!(name: 'admin', email: 'admin1@test.com', password: 'adminadmin', type: 'Admin', first_name: 'fn', last_name: 'ln')
hans = User.create!(name: 'Hans', email: 'hans1@test.com', password: 'hanshans')

basic_test = Test.create!(title: 'Ruby gems', level: 1, category: basic_category, author: john, time_limit: 1)
intermediate_test = Test.create!(title: 'OOP', level: 2, category: intermediate_category, author: ivan, time_limit: 2)
advanced_test = Test.create!(title: 'SOLID', level: 3, category: advanced_category, author: hans, time_limit: 3)

# creating questions for basic_test
basic_test_question_first = Question.create!(body: 'What task does Device perform?', test: basic_test)
basic_test_question_second = Question.create!(body: 'What task does Nokogiri perform?', test: basic_test)
basic_test_question_third = Question.create!(body: 'What task does Draper perform?', test: basic_test)

# creating questions for intermediate_test
interm_test_question_first = Question.create!(body: 'What does the reusability in OOP mean?', test: intermediate_test)
interm_test_question_second = Question.create!(body: 'What is Encapsulation in OOP?', test: intermediate_test)
interm_test_question_third = Question.create!(body: 'What is the advantage of Inheritance in OOP?', test: intermediate_test)

# creating questions for advanced_test
advanced_test_question_first = Question.create!(body: 'Who came up with the abbreviation SOLID?', test: advanced_test)
advanced_test_question_second = Question.create!(body: 'What does the principle single responsibility mean?', test: advanced_test)
advanced_test_question_third = Question.create!(
  body: 'Entities can change their behavior without changing their source code - what is the name of this principle?', test: advanced_test)

# answer options for basic_test_question_first
Answer.create!([
                 { body: 'Extracts information from web pages',
                   correct: false, question: basic_test_question_first },
                 { body: 'Adds an object-oriented layer of presentation logic to apps.',
                   correct: false, question: basic_test_question_first },
                 { body: 'Provides an option for authentication',
                   correct: true, question: basic_test_question_first },
                 { body: 'Allows you to run the server with the power of thought',
                   correct: false, question: basic_test_question_first }
               ])

# answer options for basic_test_question_second
Answer.create!([
                 { body: 'Extracts information from web pages',
                   correct: true, question: basic_test_question_second },
                 { body: 'Adds an object-oriented layer of presentation logic to apps.',
                   correct: false, question: basic_test_question_second },
                 { body: 'Allows you to run the server with the power of thought',
                   correct: false, question: basic_test_question_second },
                 { body: 'Provides an option for authentication',
                   correct: false, question: basic_test_question_second }
               ])

# answer options for basic_test_question_third
Answer.create!([
                 { body: 'Provides an option for authentication',
                   correct: false, question: basic_test_question_third },
                 { body: 'Adds an object-oriented layer of presentation logic to apps.',
                   correct: true, question: basic_test_question_third },
                 { body: 'Extracts information from web pages',
                   correct: false, question: basic_test_question_third },
                 { body: 'Allows you to run the server with the power of thought',
                   correct: false, question: basic_test_question_third }
               ])

# answer options for interm_test_question_first
Answer.create!([
                 { body: 'Allows developers to create code that can be reused in different parts of an application',
                   correct: true, question: interm_test_question_first },
                 { body: 'Reduces the amount of code that needs to be written and makes it easier to maintain the codebase',
                   correct: false, question: interm_test_question_first },
                 { body: 'Allows you to automatically get to the interview',
                   correct: false, question: interm_test_question_first },
                 { body: 'Allows developers to hide the implementation details of objects',
                   correct: false, question: interm_test_question_first }
               ])

# answer options for interm_test_question_second
Answer.create!([
                 { body: 'Allows developers to hide the implementation details of objects',
                   correct: true, question: interm_test_question_second },
                 { body: 'Allows developers to create code that can be reused in different parts of an application',
                   correct: false, question: interm_test_question_second },
                 { body: 'Allows you to automatically get to the interview',
                   correct: false, question: interm_test_question_second },
                 { body: 'Reduces the amount of code that needs to be written and makes it easier to maintain the codebase',
                   correct: false, question: interm_test_question_second }
               ])

# answer options for interm_test_question_third
Answer.create!([
                 { body: 'Allows you to automatically get to the interview',
                   correct: false, question: interm_test_question_third },
                 { body: 'Allows developers to create code that can be reused in different parts of an application',
                   correct: false, question: interm_test_question_third },
                 { body: 'Allows developers to hide the implementation details of objects',
                   correct: false, question: interm_test_question_third },
                 { body: 'Reduces the amount of code that needs to be written and makes it easier to maintain the codebase',
                   correct: true, question: interm_test_question_third }
               ])

# answer options for advanced_test_question_first
Answer.create!([
                 { body: 'Linus Torvalds',
                   correct: false, question: advanced_test_question_first },
                 { body: 'Yukihiro Matsumoto',
                   correct: false, question: advanced_test_question_first },
                 { body: 'Robert Martin',
                   correct: true, question: advanced_test_question_first },
                 { body: 'David Hansson',
                   correct: false, question: advanced_test_question_first }
               ])

# answer options for advanced_test_question_second
Answer.create!([
                 { body: 'Functions that use the base type should be able to use subtypes
/ of the base type without knowing about it.',
                   correct: false, question: advanced_test_question_second },
                 { body: 'Denotes that each object should have one duty',
                   correct: true, question: advanced_test_question_second },
                 { body: 'Clients should not depend on methods they do not use',
                   correct: false, question: advanced_test_question_second },
                 { body: 'The modules of the upper levels should not depend on the modules of the lower levels',
                   correct: false, question: advanced_test_question_second }
               ])

# answer options for advanced_test_question_third
Answer.create!([
                 { body: 'Interface segregation principle',
                   correct: false, question: advanced_test_question_third },
                 { body: 'Open-closed principle',
                   correct: true, question: advanced_test_question_third },
                 { body: 'Dependency inversion principle',
                   correct: false, question: advanced_test_question_third },
                 { body: 'Single responsibility principle',
                   correct: false, question: advanced_test_question_third }
               ])

# creating passing tests for Users
UserPassedTest.create!([
                         { user: john, test: basic_test, current_question: basic_test_question_first },
                         { user: ivan, test: basic_test, current_question: interm_test_question_first },
                         { user: hans, test: basic_test, current_question: advanced_test_question_first }
                       ])

# creating rules for badges
Rule.create!([
               { criteria: 'all_tests_in_category' },
               { criteria: 'first_attempt' },
               { criteria: 'all_tests_of_level' }
             ])
