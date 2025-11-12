Music and Chronic Pain
================
Norah Saarman
2025-11-12

- [ABSTRACT](#abstract)
- [BACKGROUND](#background)
- [STUDY QUESTION and HYPOTHESIS](#study-question-and-hypothesis)
  - [Questions](#questions)
  - [Hypothesis](#hypothesis)
  - [Prediction](#prediction)
- [METHODS](#methods)
- [DISCUSSION](#discussion)
- [CONCLUSION](#conclusion)
- [REFERENCES](#references)

# ABSTRACT

Fill in abstract… Write this last, after finishing methods, results, and
discussion. Summarize the overall study question, approach, results, and
conclusion in a short paragraph.

# BACKGROUND

Music has been a deep and important part of human culture and expression
for millennia. Yet, not much is understood about how music affects the
human body physiologically. As research develops, music has been shown
to provide a myriad of benefits to human quality of life. Recently, S.
Aalbers and others found that when combined with treatment as usual,
music had a significant positive effect on patients with depression
(Aalbers, 2017).

This study explores how music affects the pain sensation of individuals
diagnosed with chronic pain. The results will provide excitng insights
to a potential link between music and pain reduction.

# STUDY QUESTION and HYPOTHESIS

## Questions

Does music affect the sensation of pain in individuals with chronic
pain?

## Hypothesis

Listening to music decreases the sensation of pain in individuals with
chronic pain.

## Prediction

Participants who listen to music will report a lower sensation of pain.

# METHODS

Fill in here… Summarize the procedures and analyses you use in this
report. In this section, describe what you did and why. Don’t just
restate the code — explain the logic of each analysis in plain language.
Keep each subsection short (2–4 sentences).

\#STATISTICAL ANALYSIS

To visually compare the control (pink noise) against the treatment group
(music), a table of values and barplot were contstructed measuring the
pain sensation levels between the two groups.

To statistically test the data, we will perform an ANOVA test to compare
the means. \###*Figure 1*

``` r
#simply showing the data captured in the table with values.
read.csv("musicdataset.csv")
```

    ##    participant_id age   sex group pic1 pic2 pim1 pim2
    ## 1          sub-01  50 FALSE    FM    5    7    4    3
    ## 2          sub-02  51 FALSE    FM    5    5    7    5
    ## 3          sub-03  22 FALSE    FM    6    7    6    6
    ## 4          sub-04  31 FALSE    FM    6    6    7    7
    ## 5          sub-05  50 FALSE    FM    8    8    8    8
    ## 6          sub-06  50 FALSE    FM    4    4    3    0
    ## 7          sub-07  66 FALSE    FM    3    6    6    4
    ## 8          sub-08  46 FALSE    FM   10   10   10   10
    ## 9          sub-09  30 FALSE    FM    5    5    4    4
    ## 10         sub-10  48 FALSE    FM    0    0    0    0
    ## 11         sub-11  55 FALSE    FM    3    2    4    0
    ## 12         sub-12  23 FALSE    FM    4    4    5    5
    ## 13         sub-13  50 FALSE    FM    1    3    2    1
    ## 14         sub-15  70 FALSE    FM    0    0    6    4
    ## 15         sub-17  45 FALSE    FM    1    1    1    0
    ## 16         sub-18  57 FALSE    FM    1    2    7    8
    ## 17         sub-20  44 FALSE    FM   NA   NA   NA   NA
    ## 18         sub-21  53 FALSE    FM    6    6    6    2
    ## 19         sub-22  40 FALSE    FM   NA   NA   NA   NA
    ## 20         sub-23  46 FALSE    FM   NA   NA   NA   NA
    ## 21         sub-24  53 FALSE    HC   NA   NA   NA   NA
    ## 22         sub-26  42 FALSE    HC   NA   NA   NA   NA
    ## 23         sub-27  36 FALSE    HC   NA   NA   NA   NA
    ## 24         sub-29  50 FALSE    HC   NA   NA   NA   NA
    ## 25         sub-30  40 FALSE    HC   NA   NA   NA   NA
    ## 26         sub-31  51 FALSE    HC   NA   NA   NA   NA
    ## 27         sub-32  25 FALSE    HC   NA   NA   NA   NA
    ## 28         sub-33  38 FALSE    HC   NA   NA   NA   NA
    ## 29         sub-34  27 FALSE    HC   NA   NA   NA   NA
    ## 30         sub-36  47 FALSE    HC   NA   NA   NA   NA
    ## 31         sub-37  50 FALSE    HC   NA   NA   NA   NA
    ## 32         sub-38  34 FALSE    HC   NA   NA   NA   NA
    ## 33         sub-40  41 FALSE    HC   NA   NA   NA   NA
    ## 34         sub-41  47 FALSE    HC   NA   NA   NA   NA
    ## 35         sub-42  42 FALSE    HC   NA   NA   NA   NA
    ## 36         sub-43  21 FALSE    HC   NA   NA   NA   NA
    ## 37         sub-44  23 FALSE    HC   NA   NA   NA   NA
    ## 38         sub-45  61 FALSE    HC   NA   NA   NA   NA
    ## 39         sub-46  44 FALSE    HC   NA   NA   NA   NA
    ## 40         sub-47  70 FALSE    HC   NA   NA   NA   NA

``` r
library(ggplot2)
library(tidyr)
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
#changed column setup to make boxplot work
data <- read.csv("musicdataset.csv")
data_long <- data %>%
  pivot_longer(cols = c(5, 6,7,8), names_to = "treatment", values_to = "value")

#plot
    ggplot(data_long, aes(x=treatment, y=value, fill=treatment)) + 
    geom_boxplot(alpha=0.6) +
    
    scale_y_continuous(limits = c(0, 10), breaks = seq(0, 10, 1)) +
  
    theme_classic() +
    theme(legend.position="none") +
    scale_fill_brewer(palette="Spectral") +
    theme(axis.text.x = element_text(size=15)) +
    theme(axis.text.y = element_text(size=12)) + 
    theme(axis.title.y = element_text(size=16, face="bold", margin = margin(r = 10))) +
    ylab("Pain Level") +
    xlab("")
```

![](FinalReport_files/figure-gfm/boxplot-1.png)<!-- -->

``` r
ggplot(
  data_long %>%
    mutate(
      treatment = recode(treatment,
                         pic1 = "Before Control",
                         pic2 = "After Control",
                         pim1 = "Before Music",
                         pim2 = "After Music"),
      # optional: control order on x-axis
      treatment = factor(treatment, levels = c("Before Control", "After Control", "Before Music", "After Music"))
    ),
  aes(x = treatment, y = value, fill = treatment)
) +
  geom_boxplot(alpha = 0.6) +
  scale_y_continuous(breaks = seq(0, 10, 1)) +
  coord_cartesian(ylim = c(0, 10)) +
  scale_fill_brewer(palette = "Spectral") +
  theme_classic() +
  theme(
    legend.position = "none",
    axis.text.x = element_text(size = 12, face = "bold"),
    axis.text.y = element_text(size = 12),
    axis.title.x = element_text(size = 16, face = "bold", margin = margin(t = 10)),
    axis.title.y = element_text(size = 16, face = "bold", margin = margin(r = 10))
  ) +
  xlab("Pain Intensity") +
  ylab("Pain Level")
```

    ## Warning: Removed 92 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

![](FinalReport_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

\###*Figure 2*

``` r
library(ggplot2)
library(tidyr)
library(dplyr)

data <- read.csv("musicdataset.csv")

# Pivot pic1 and pic2 into long format
data_long <- data %>%
  pivot_longer(cols = c(pic1, pic2), names_to = "treatment", values_to = "value")

# Make boxplot
ggplot(data_long, aes(x = treatment, y = value, fill = treatment)) +
  geom_boxplot(alpha = 0.7, width = 0.6) +
  theme_classic() +
  scale_fill_brewer(palette = "Set2") +
  ylab("Pain Level") +
  xlab("") +
  theme(
    axis.text = element_text(size = 14),
    axis.title = element_text(size = 16, face = "bold"),
    legend.position = "none"
  )
```

    ## Warning: Removed 46 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

![](FinalReport_files/figure-gfm/code%20pic%20chunks-1.png)<!-- -->

pim 1 and 2 code chunk

``` r
library(ggplot2)
library(tidyr)
library(dplyr)

data <- read.csv("musicdataset.csv")

# Pivot pim1 and pim2 into long format
data_long_pim <- data %>%
  pivot_longer(cols = c(pim1, pim2), names_to = "treatment", values_to = "value")

# Make boxplot
ggplot(data_long_pim, aes(x = treatment, y = value, fill = treatment)) +
  geom_boxplot(alpha = 0.7, width = 0.6) +
  theme_classic() +
  scale_fill_brewer(palette = "Set2") +
  ylab("Pain Level") +
  xlab("") +
  theme(
    axis.text = element_text(size = 14),
    axis.title = element_text(size = 16, face = "bold"),
    legend.position = "none"
  )
```

    ## Warning: Removed 46 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

![](FinalReport_files/figure-gfm/code%20chunk%20pim-1.png)<!-- -->

\##Statistical Analysis Still working on this part…had to remove so file
could knit.

# DISCUSSION

Fill in here… For each analysis, summarize what you found and interpret
the results. Say whether they support or contradict your hypothesis.

# CONCLUSION

Fill in here… State the overall answer to your research question, based
on all analyses. Mention whether the evidence supports your hypothesis.

# REFERENCES

Aalbers, S., Fusar‐Poli, L., Freeman, R. E., Spreen, M., Ket, J. C.,
Vink, A. C., … & Gold, C. (2017). Music therapy for depression. Cochrane
database of systematic reviews, (11).

Fill in here… List all sources you cited in your background and
throughout the report. Use a consistent style.a conclusion you can draw
from your analysis.
