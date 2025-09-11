/*
 one or more candidates or choose not to vote
 vote 1 so if multiple candidate vote split 1/<#of candidate>
 no vote null
 
 

Medium
ID 2099 :  Election Results




The election is conducted in a city and everyone can vote for one or more candidates, or choose not to vote at all. Each person has 1 vote so if they vote for multiple candidates, their vote gets equally split across these candidates. For example, if a person votes for 2 candidates, these candidates receive an equivalent of 0.5 vote each. Some voters have chosen not to vote, which explains the blank entries in the dataset.


Find out who got the most votes and won the election. Output the name of the candidate or multiple names in case of a tie.
To avoid issues with a floating-point error you can round the number of votes received by a candidate to 3 decimal places.

Table
voting_results
 */
 
 with n_vote_per_person as
 (
    select voter , count(candidate) n_vote 
    from voting_results
    group by voter
)
select Top 1 candidate  
from n_vote_per_person vote 
JOIN voting_results VR on vote.voter = vr.voter
where n_vote != 0
group by candidate
order by SUM( Round(1.0/n_vote,3)) desc