% Project 3.4
% Ask for number of players
numPlayers = input('How many players do you want to enter:\n ');

% For loop for player name and stats
for i = 1:numPlayers
    fprintf('\nEnter the name of the baseball player: ');
    name = input('', 's');

    fprintf('Enter the name of the team they play on: ');
    team = input('', 's');

    hits = input('Enter their number of hits: ');
    atBats = input('Enter their number of at bats: ');
    walks = input('Enter their number of walks: ');

    players(i) = player(name, team, hits, walks, atBats);
end

% Players with 0.300 avg or higher for batting
fprintf('\nThe players with a batting average higher than 0.300 are:\n\n');

for i = 1:numPlayers
    if players(i).average > 0.300
        players(i).displayStats();
    end
end

% Players with 0.350 avg or higher for on base percentage
fprintf('\nThe players with an on-base percentage higher than 0.350 are:\n\n');

for i = 1:numPlayers
    if players(i).onBase > 0.350
        players(i).displayStats();
    end
end
