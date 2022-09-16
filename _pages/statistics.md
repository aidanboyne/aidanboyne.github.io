---
permalink: /statistics/
title: "Data"
author_profile: true
redirect_from: 
  - /sailing/
  - /stats/
---
Regatta Results
---

![Stats 2009-22](https://imgur.com/pCLD8oj.png)


Summary of the UCLA sailing team's performance over the past 13 years. All data is taken from [scores.collegesailing.org](https://scores.collegesailing.org/) and is updated as of Spring 2022.


**Placement Metric**: Each regatta is ranked from 0 to 1. 1 represents a set of perfect races while 0 represents the worst races possible (Congrats to the team for our first perfect regatta this year in Newport!) <br>
**Best Boat Lead**: The hue of the points gives a feel for how well our best boat placed in the regatta (the darker the better). <br>
**Last Boat Trail**: Likewise, the size of the points indicates how well our last boat placed (the bigger the better). <br>


See jupyter notebook for details. (_Uploading soon_)

All Recipes Ingredient Analysis
---

[This Jupyter Notebook][1] contains the script that was used to scrape and parse the website All Recipes to pinpoint interesting, tasty, and underutilized ingredient combinations. To run the notebook on your own (which I recommend so that you can explore the interactive plot which is generated), you will need to download [this CSV file][2] and specify its path inside the notebook code. Try changing `page_start` and `page_end` to a small range if you want the notebook to run more quickly.

#### Sample results
![Sample All Recipes Scraper Results](https://i.imgur.com/gBBczwv.png.png)

You can also use the [this API][3] to automatically format recipies into an easy to read format that omits all the fluff (stories, external links, ads, etc.). (_uploading soon_)

[1]:{{ http://aidanboyne.github.io }}/files/Main.ipynb
[2]:{{ http://aidanboyne.github.io }}/files/ARScrape_Ingredients.csv
[3]:{{ http://aidanboyne.github.io }}/files/no_file_available

