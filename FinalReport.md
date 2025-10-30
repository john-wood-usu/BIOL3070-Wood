Music and Chronic Pain
================
Norah Saarman
2025-10-30

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

# STUDY QUESTION and HYPOTHESIS

## Questions

Does music decrease the sensation of pain in individuals with chronic
pain?

## Hypothesis

Listening to music decreases the sensation of pain.

## Prediction

Participants who listen to music will experience a lower sensation of
pain.

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

# DISCUSSION

Fill in here… For each analysis, summarize what you found and interpret
the results. Say whether they support or contradict your hypothesis.

# CONCLUSION

Fill in here… State the overall answer to your research question, based
on all analyses. Mention whether the evidence supports your hypothesis.

# REFERENCES

Fill in here… List all sources you cited in your background and
throughout the report. Use a consistent style.a conclusion you can draw
from your analysis.
