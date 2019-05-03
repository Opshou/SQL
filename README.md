# SQL
Finding winner of a soccer league. 2 tables:

**Table 1: _teams_**

| team_name | team_id |
|-----------|---------|
|   Team 1  |    7    |
|   Team 2  |    2    |
|   Team 3  |    1    |
|     ...   |   ...   |

**Table 2: _matches_**
 
| host_team | guest_team | host_goals | guest_goals |
|-----------|------------|------------|-------------|
|     7     |      3     |       2    |       0     |
|     2     |      1     |       1    |       1     |
|     1     |      3     |       2    |       3     |
|    ...    |     ...    |     ...    |     ...     |

**_Objective:_** 
Create a table with a classification of the teams and their total points. The conditions are:
- Each time a team wins it earns 3 points.
- Each time a team ties it earns 1 point.
- Each time a team loses it earns 0 points.


**Final Table: _final_**

|  team_id  |  team_name | num_points |
|-----------|------------|------------|
|     3     |   Team 4   |      10    |
|     2     |   Team 2   |       8    |
|     5     |   Team 7   |       8    |
|     1     |   Team 3   |       7    |
|    ...    |     ...    |     ...    |
