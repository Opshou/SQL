# SQL
### Finding winner of a soccer league. 2 tables:

*teams*

| team_name | team_id |
|-----------|---------|
|   Team 1  |    7    |
|   Team 2  |    2    |
|   Team 3  |    1    |
|     ...   |   ...   |

*matches*
 
| host_team | guest_team | host_goals | guest_goals |
|-----------|------------|------------|-------------|
|     7     |      3     |       2    |       0     |
|     2     |      1     |       1    |       1     |
|     1     |      3     |       2    |       3     |
|    ...    |     ...    |     ...    |     ...     |

Create a table with a classification of the teams and their total points.

*final*

|  team_id  |  team_name | num_points |
|-----------|------------|------------|
|     3     |   Team 4   |      10    |
|     2     |   Team 2   |       8    |
|     5     |   Team 7   |       8    |
|     1     |   Team 3   |       7    |
|    ...    |     ...    |     ...    |
