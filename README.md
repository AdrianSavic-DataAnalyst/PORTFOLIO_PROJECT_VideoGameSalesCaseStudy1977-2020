# PROJECT_VideoGameSalesCaseStudy1977-2020

Data Analysis Report: Preferred Consoles and Popular Publishers in the Video Game Industry
Business Task
The objective of this case study is to determine the preferred gaming consoles and the most popular video game publishers historically. This analysis is intended to assist an imaginary gaming company in making data-driven decisions about where to release their new game.


Data Source
I utilized a Video Game Sales Data dataset, which covers video game units sold from 1977 to 2020 in terms of publishers and platforms. The dataset was sourced from Kaggle and was published by Jason Holm. It holds a usability rating of 9.41/10 and is licensed under CC0: Public Domain, making it accessible for public use.


Data Cleaning
The dataset was initially reviewed in Microsoft Excel and required some cleaning due to missing values, primarily in user and critic scores. These missing values were replaced with "0" before importing the CSV file into MySQL for analysis. The dataset includes the following data fields:


Rank
Name
Platform
Publisher
Developer
Critic Score
User Score
Total Shipped
Year
Data Limitations
It is important to note that "Total Units Shipped" likely refers to hard copies sold, and some online games are not included in the dataset as they are digital downloads. We are focusing on a segment of the gaming market that predates digital gaming's widespread adoption, ensuring the accuracy of our analysis for the business task. The dataset was also scraped by the author from a gaming website that keeps track of video game stats called VGChartz.


Analysis Approach
The analysis was conducted in MySQL to organize and extract relevant metrics. Subsequently, the data tables were saved in Excel and imported into Tableau Public for visualization. The key findings are summarized below:


Key Findings
Total Units Shipped
The dataset reveals steady growth in total units shipped until 2008 when there is a notable shift, likely indicating the rise of digital gaming.
Top 20 Games
Nintendo dominated the top 20 games from 1977-2020, with 15 out of 20 titles. Notable titles include Wii family games, Super Mario, and Pokémon. PC exclusives such as Counter-Strike, PUBG, and Minecraft also feature prominently.
Total Units Shipped per Publisher
Nintendo emerges as the top publisher with 19.4% market share, having sold 2095 million copies. Activision follows with 7.04% market share and 760 million copies sold.
Total Units Shipped per Platform
PlayStation 2 is the leading platform, with 1257 million copies sold and 11.65% market share. PC followed with 1106 million copies sold and 10.24% market share and Xbox 360 coming in third at 983 million copies sold and 9.1% market share.
Average Critic Scores by Platform
GBC, GEN, and SNES, all Nintendo platforms, have the highest average critic scores (9.1/10, 8.8/10, and 8.4/10, respectively).
Average User Scores by Platform
N64, Xbox, and PlayStation 2 lead in user ratings with 9.4/10, 9.3/10, and 8.8/10, respectively. PC has a lower average user score at 6.8/10.
Top Years for Scores
The top years for user and critic scores differ, with 1993 scoring highest for users (9.5/10) and 1984 for critics (9.5/10).
Visualizations
For a more visual representation of these findings, please refer to the Tableau dashboard that includes bar charts, graphs and all interactive lists with the data available more clearly.


Conclusion
This analysis indicates a strong and dominant preference for Nintendo in terms of user and critic scores, as well as in sales. While PlayStation, PC, Xbox platforms are significant competitors, Nintendo's iconic titles maintain their popularity. For new gaming companies, publishing on PlayStation, PC and Xbox is recommended due to their broader market reach and hardware strength, while Nintendo excels as a developer and publisher of its own games.


Actionable Insights
Preferred platforms for game release: PlayStation, PC, and Nintendo platforms.
The most popular historical publisher: Nintendo.
New gaming companies are advised to target PlayStation, PC, and Xbox for maximum sales potential.


Here is a link to the Dataset
https://www.kaggle.com/datasets/holmjason2/videogamedata/data
Here is a link to my Tableau dashboard
https://public.tableau.com/app/profile/adrian.savic/viz/GoogleAnalyticsCaseStudyVideoGameSalesDashboard/Dashboard1
Here is a link to MySQL code that I used to get the metrics
https://github.com/AdrianIT0309/VideoGameSalesCaseStudy1977-2020/blob/main/Google%20Analytics%20Case%20Study%20Video%20Game%20Sales%201977-2020.sql
