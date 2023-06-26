# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

# Users
user1 = User.create!(username: 'Hari')
user2 = User.create!(username: 'Marie')
user3 = User.create!(username: 'Myla')
user4 = User.create!(username: 'Pluto')
user5 = User.create!(username: 'Paige')

# Polls

poll1 = Poll.create!(title: 'Politics', author_id: user1.id)
poll2 = Poll.create!(title: 'Football', author_id: user2.id)
poll3 = Poll.create!(title: 'Basketball', author_id: user3.id)
poll4 = Poll.create!(title: 'Games', author_id: user4.id)
poll5 = Poll.create!(title: 'Chores', author_id: user5.id)

# Questions

question1 = Question.create!(text: 'Who will win presidency?', poll_id: poll1.id)
question2 = Question.create!(text: 'Who is your favorite football team?', poll_id: poll2.id)
question3 = Question.create!(text: 'Who is your favorite basketball team?', poll_id: poll3.id)
question4 = Question.create!(text: 'What is your favorite videogame?', poll_id: poll4.id)
question5 = Question.create!(text: 'What is your favorite chore?', poll_id: poll5.id)

# Answer Choices

answer_choice1 = AnswerChoice.create!(text: 'Dwayne Johnson', question_id: question1.id)
answer_choice2 = AnswerChoice.create!(text: 'Patriots', question_id: question2.id)
answer_choice3 = AnswerChoice.create!(text: 'Lakers', question_id: question3.id)
answer_choice4 = AnswerChoice.create!(text: 'Nintendo', question_id: question4.id)
answer_choice5 = AnswerChoice.create!(text: 'Dishes', question_id: question5.id)

# Responses

response1 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user1.id)
response2 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user2.id)
response3 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user3.id)
response4 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user4.id)
response5 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user5.id)

# Response 2

response6 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user2.id)
response7 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user3.id)
response8 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user4.id)
response9 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user5.id)
response10 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user1.id)

# Response 3

response11 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user3.id)
response12 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user4.id)
response13 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user5.id)
response14 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user1.id)
response15 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user2.id)

# Response 4

response16 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user4.id)
response17 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user5.id)
response18 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user1.id)
response19 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user2.id)
response20 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user3.id)

# Response 5

response21 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user5.id)
response22 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user1.id)
response23 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user2.id)
response24 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user3.id)
response25 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user4.id)

# Response 6

response26 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user1.id)
response27 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user2.id)
response28 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user3.id)
response29 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user4.id)
response30 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user5.id)

# Response 7

response31 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user2.id)
response32 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user3.id)
response33 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user4.id)
response34 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user5.id)
response35 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user1.id)

# Response 8

response36 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user3.id)
response37 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user4.id)
response38 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user5.id)
response39 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user1.id)
response40 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user2.id)

# Response 9

response41 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user4.id)
response42 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user5.id)
response43 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user1.id)
response44 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user2.id)
response45 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user3.id)

# Response 10

response46 = Response.create!(answer_choice_id: answer_choice1.id, respondent_id: user5.id)
response47 = Response.create!(answer_choice_id: answer_choice2.id, respondent_id: user1.id)
response48 = Response.create!(answer_choice_id: answer_choice3.id, respondent_id: user2.id)
response49 = Response.create!(answer_choice_id: answer_choice4.id, respondent_id: user3.id)
response50 = Response.create!(answer_choice_id: answer_choice5.id, respondent_id: user4.id)

