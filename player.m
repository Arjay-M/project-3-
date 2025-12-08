classdef player
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here

    properties
        name
        team
        hits
        walks
        atBats
    end

    properties (Dependent)
        average
        onBase
    end

    methods
        function obj = player(name,team,hits,walks,atBats)
            obj.name = name;
            obj.team = team;
            obj.hits = hits;
            obj.walks = walks;
            obj.atBats = atBats;
            
        end

        function avg = get.average(obj)
            avg = obj.hits / obj.atBats;
        end

        function obp = get.onBase(obj)
            obp = (obj.hits + obj.walks) / (obj.atBats + obj.walks);
        end

        function displayStats(obj)
            fprintf('%s:\n', obj.name);
            fprintf('Team: %s\n', obj.team);
            fprintf('Average: %.3f\n', obj.average);
            fprintf('On Base Percentage: %.3f\n\n', obj.onBase);
        end
    end
end