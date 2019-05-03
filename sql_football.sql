-- Max Goldston Marí, 01/05/2019
-- PostgreSQL 9.4

-- changing null values for teams with no representation in the matches table
SELECT team_id, team_name, 
    CASE 
        WHEN num_points IS NULL THEN 0 
        ELSE num_points END 
    FROM(

    -- creating table (named points) with id of teams, name of teams and points
    SELECT teams.team_id team_id, teams.team_name team_name, 
    SUM(points.num_points_host) num_points 
        FROM (
             -- summing points of host teams
            SELECT mat.host_team,
                SUM(CASE
                    WHEN mat.host_goals > mat.guest_goals 
                        THEN 3
                    WHEN mat.host_goals = mat.guest_goals 
                        THEN 1
                    ELSE 
                        0
                        END) num_points_host
            FROM matches mat
            GROUP BY host_team
    
        -- uniting points of host and guests in same column
        UNION
    
        -- summing points of guest teams
        SELECT mat.guest_team,
                SUM(CASE
                    WHEN mat.host_goals > mat.guest_goals 
                        THEN 0
                    WHEN mat.host_goals = mat.guest_goals 
                        THEN 1
                    ELSE 
                        3
                        END) num_points_host
            FROM matches mat
            GROUP BY guest_team) AS points
    
    -- join to add team names, right join because some teams haven't played a match
    RIGHT JOIN teams
        ON teams.team_id = points.host_team
        
    -- group by team in order to sum points of host matches and guest matches
    GROUP BY host_team, teams.team_name, teams.team_id) AS final

-- ordering the final table    
ORDER BY num_points DESC, team_id ASC