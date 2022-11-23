#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "$($PSQL "TRUNCATE games, teams;")"
echo -e "\nSuccessful Truncate!\n"

#Games Data Import

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then 
    #INSERT TEAM INFO
    echo "$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
    echo "$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
        #get new id
  fi
#insert games for full list
  WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")"
  OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")" 
  if [[ $YEAR != "year" ]]
  then 
  #Insert rows
  echo "$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', '$WINNER_ID', '$OPPONENT_ID', '$WINNER_GOALS', '$OPPONENT_GOALS')")"
  fi
done
