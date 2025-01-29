# ghana-covid192020-dashboard
Analysis of Ghana's COVID-19 daily trends from March 2020 to November 2020


ANALYSIS OF GHANA'S COVID-19 DAILY TRENDS AND METRICS
A. SUMMARY OF COVID-19 DATA IN GHANA (MARCH 2020-2021)
1.1 Introduction
COVID-19 is a respiratory infection caused by the SARS-CoV-2 virus.  It is primarily spread from person to person through small droplets from the nose or mouth when an infected person coughs or sneezes. COVID-19 can cause a cascade of systemic events, affecting various organs and leading to a range of symptoms. The World Health Organization (WHO) has provided guidance on the standard treatment for COVID-19. According to the WHO, as of June 2020, over 300,000 COVID-19 cases had been reported in the African region, with 51% of patients recovering. The COVID-19 pandemic has had both primary and secondary impacts, particularly on women and children in Ghana (Ministry of Health Ghana, 2020; Lu et al., 2020). This section presents a detailed analysis of Ghana's COVID-19 daily trends from March 2020 to November 2020. The dataset includes 233 observations, summarizing daily reported cases of confirmed infections, recoveries, deaths, and active cases. 

1.2 Methods
The dataset was cleaned by ensuring the proper formatting of the date column and verifying data integrity for key variables using “tidyverse” package: cumulative confirmed cases, recoveries, and deaths. Data analysis involved summarizing key metrics, including total cases, recoveries, deaths, and active cases, using descriptive statistics. Visualization was conducted using “ggplot2” package to create line graphs depicting cumulative trends for confirmed, recovered, and death cases over time. Additionally, summary tables were produced with “gtsummary” package to provide concise statistical overviews. Data was implemented using interactive data visualization in Shiny (packages “rsconnect” and “shiny”).

1.3 Key Finding
The analysis provides an overview of key statistics, illustrating the total counts, means, and ranges for these variables. As summarized in Table 1, Table 2, and Figure 1; Over the observation period, Ghana recorded 51,667 confirmed cases, with a daily mean of 222 cases. The total recovered cases reached 50,547, reflecting a high recovery rate over time. The mean number of daily deaths was low (1.39), with a maximum of 15 deaths recorded in a single day. The highest number of active cases recorded was 8,585, while the daily mean was 2,244. These statistics offer a crucial understanding of the COVID-19 pandemic's trajectory in Ghana and provide a foundation for further analysis and decision-making. The figure 1 reflect the magnitude of the pandemic, the effectiveness of health responses, and the ongoing need for vigilance in controlling the spread of the virus. In interpreting the trends (Figure 1), the cumulative data shows the long-term impact of the pandemic, with clear growth in the number of confirmed cases and recoveries over time. Understanding these trends in conjunction with daily new cases, deaths, and recoveries can provide valuable insights into the progression and management of COVID-19 in Ghana

Table 1: Summary Statistics of Ghana’s COVID-19 Data (March 2020- November 2020)
Metric	Total/Mean
Total Confirmed Cases	51,667
Total Recovered Cases	50,547
Total Deaths	323
Maximum Active Cases	8,585
Mean Active Cases	2,244


Table 2: Descriptive Statistics for Daily COVID-19 Metrics (March 2020 – November 2020)
Characteristic	N = 2331
Daily Confirmed Cases	222 (1 - 1,513)
Daily Recovered Cases	217 (0 – 5,526)
Daily Deaths	1.39 (0 - 15)
Active Cases	2,244 (2-8,585)

1Mean (Min - Max)


 
Figure 1: COVID-19 Cumulative Trends in Ghana
Source: Field Data analyzed from Ghana COVID-19 Dataset (Kaggle.com)

B. KEY USER PERSONA AND TARGETS
1. Key User Persona
•	Role: Health policymakers and public health researchers in Ghana
•	Needs: Insights into trends of COVID-19 to inform policy decisions, allocate healthcare resources, and evaluate interventions.
2.Aspired Actions and Targets
•	Aspired Actions:
o	Track the progression of the pandemic.
o	Identify periods of increased case growth.
o	Evaluate recovery and mortality rates.
•	Targets:
o	Develop effective response strategies.
o	Ensure healthcare system preparedness for future waves.
