def what_was_that_one_with(those_actors)
  # Find the movies starring all `those_actors` (an array of actor names).
  # Show each movie's title and id.
  Movie
    .joins(:actors)
    .where(actors: { name: those_actors })
    .group(:id)
    .having('COUNT(*) = ?', those_actors.length)
    .select(:id, :title)
end

def golden_age
  # Find the decade with the highest average movie score.
  # HINT: Use a movie's year to derive its decade. Remember that you can use
  # arithmetic expressions in SELECT clauses.
  Movie
  .select('(yr / 10) * 10 AS decade, AVG(score) AS avg_score')
  .group('decade')
  .order('avg_score DESC')
  .first
  .decade
end

def costars(name)
  # List the names of the actors that the named actor has ever appeared with.
  # Hint: use a subquery
  Actor
  .joins(:movies)
  .where(movies: { id: Movie.joins(:actors).where(actors: { name: name }).pluck(:id) })
  .where.not(name: name)
  .distinct
  .pluck(:name)
end

def actor_out_of_work
  # Find the number of actors in the database who have not appeared in a movie.
  Actor
  .left_outer_joins(:castings)
  .where(castings: { id: nil })
  .count
end

def starring(whazzername)
  # Find the movies with an actor who had a name like `whazzername`. A name is
  # like whazzername if the actor's name contains all of the letters in
  # whazzername, ignoring case, in order.

  # E.g., "Sylvester Stallone" is like "sylvester" and "lester stone" but not
  # like "stallone sylvester" or "zylvester ztallone".
    Movie
    .joins(:actors)
    .where('actors.name ILIKE ?', "%#{whazzername.split('').join('%')}%")
    .distinct
end

def longest_career
  # Find the 3 actors who had the longest careers (i.e., the greatest time
  # between first and last movie). Order by actor names. Show each actor's id,
  # name, and the length of their career.
  Actor.select('actors.id, actors.name, MAX(movies.yr) - MIN(movies.yr) AS career_length')
       .joins(:castings)
       .joins('JOIN movies ON movies.id = castings.movie_id')
       .group('actors.id, actors.name')
       .order('career_length DESC')
       .order('actors.name')
       .limit(3)
       .as_json
end