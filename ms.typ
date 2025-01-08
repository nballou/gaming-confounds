#import "@preview/elsearticle:0.4.0": *
#set quote(block: true)

#show: elsearticle.with(
title: "Stress Fuels Gaming, while Lethargy Slows It: Insights into Playtime-Mental Health Confounds from Players' Perspectives",
authors: (
  (
  name: "Nick Ballou",
  affiliation: "University of Oxford",
  corr: "nick@nickballou.com",
  id: "a",
  ),
  (
  name: "Team",
  id: "a"
  ),
),
abstract: "TODO",
journal: "PsyArXiv",
keywords: ("Video games", "mental health", "stress", "anxiety", "depression", "confounds"),
format: "3p",
numcol: 2,
line-numbering: false,
)

#show heading.where(level: 3): it =>[
    #block(it.body)
]

#show quote: it => [
  #set text(font: "Source Serif Pro", 
            fill: rgb("#85144b"),
            size: 9pt,
            style: "italic",
            )
  #set par(first-line-indent: 0em)
  #block(it)
]

#show table.cell: it => [
  #set text(size: 9pt)
  #it
]

#show link: set text(fill: rgb("#0000ff"))
#show cite: set text(fill: rgb("#0000ff"))

#set par(
  first-line-indent: 1em,
  spacing: 1.5em,
  leading: .65em,
  justify: true,
)

#let greenUp = text(fill: rgb("#019301"), weight: "extrabold", sym.arrow.t.stroked)
#let redDown = text(fill: rgb("#ab2f2f"), weight: "extrabold", sym.arrow.b.stroked)

#let citet = cite.with(form: "prose")
#let npc(label) = {
  show regex("\(|\)"): none
  cite(label, form: "normal") 
}


= Introduction

A series of recent studies has found no meaningful relationship between the amount of time people spend playing video games (playtime) and their wellbeing or mental health @BallouEtAl2024Registered @VuorreEtAl2022Time @LarrieuEtAl2023How. However, while these studies have strengthened the case that raw playtime is unlikely to affect wellbeing for most players---and pushed the conversation towards specific qualitative aspects of play such as a game's social affordances @CrenshawNardi2016It, time of day when play occurs @DrummondSauer2020Timesplitters, and player motivation @BruhlmannEtAl2020Motivational\-\-\-they have yet to conclusively rule out the possibility that playtime does causally affect people, at least some of the time. A causal understanding of games and mental health remains a vital prerequisite for informing evidence-based policy, behavioral management strategies and interventions, and design guidelines for the games industry.

Our continued uncertainty is, in large part, a reflection of the inherent challenge of making causal inferences from observational data. It remains difficult and rare for researchers to directly intervene on gaming behavior in a naturalistic setting (as opposed to a short game session in a lab, for example)---even in a sister field such as violent video games and aggression where experiments are easier to conduct, they make up just 19% of studies @Ferguson2015angry. This means that our understanding of how games affect mental health comes largely from qualitative studies and observational designs where people are surveyed about their gaming and wellbeing. 

To estimate causal effects from observational data, whether cross-sectional or longitudinal, researchers need an understanding of the data-generating process @LohRen2023Unfulfilled. In any complex psychological topic such as how playing games interacts with mental health, the data-generating process is likely to be exceptionally complicated @BallouEtAl2024How, rife with mediators, effect size modification (moderation), colliders, and---perhaps most frequently discussed---confounders. Confounds are factors that influence both gaming and wellbeing. If unaccounted for, confounders can both create spurious correlations or bias true effects towards zero @Rohrer2018thinking. 

At present, the literature does not provide a systematic or comprehensive list of potential confounding factors in the relationship between gaming and wellbeing. While studies commonly adjust for factors such as age, gender, employment, and education (e.g., #npc(<BallouEtAl2024Perceived>) #npc(<JohnsonEtAl2016Motivationsa>) #npc(<SauterEtAl2020Social>)), we argue that this does not go far enough: Many more factors beyond the commonly-used list of stable demographic characteristics influence the relationship between gaming engagement and mental health. To date, researchers have lacked the necessary information to identify, measure, and adjust for these additional confounds. Without closer attention to confounding, observational studies---which comprises the vast majority of work on this topic---will continue to have extremely limited value for shedding light on cause and effect. 

To address this need, we conducted a theoretical thematic analysis of player-reported confounds. Our results make several contributions: 

1. We present the most comprehensive list to date of variables that may need to be included in a statistical model to produce an unbiased estimate of the effect of gaming on wellbeing, including but not limited to physical health, holiday periods, work-related stress, and family illness or death
2. We identify both positive and negative confounds, which may therefore bias effects in either direction: some confounds would bias observed relationships positively by causing an increase or decrease in both playtime and wellbeing, while others would bias it negatively by causing an increase in one and a decrease in the other
3. We demonstrate that several confounds have _moderated_ effects on gaming, highlighting the need for more rigorous theory-building---for example, being sick tends to decrease wellbeing and reduce gaming if associated with tiredness and difficulty focusing, whereas it tends to increase gaming if tiredness is not a primary symptom 

== Confounding

#figure(
  placement: auto,
  scope: "parent",
  image("figures/toy_example.png", width: 90%),
  caption: [
    Illustration of confounding. 
  ],
) <fig-toy>

For many researchers, the ultimate goal of social scientific research is to understand cause and effect---we want to be able to predict in advance how a given change will affect people, intervene i. In the case of gaming research, this includes broad goals such as establishing parenting strategies (based on e.g., evidence that setting a time limit of X hours will, on average, cause improved well-being), policy changes (based on e.g., evidence that restricting design feature Y will, on average, cause fewer people to develop problem gaming), or design guidelines (based on e.g., evidence that including design feature Z will, on average, cause more toxicity between players). To establish cause and effect, we apply causal inference methods. (An introduction to causal inference is well beyond the scope of this article, but we refer readers to #npc(<Rohrer2018thinking>), #npc(<Dablander2020introduction>), and #npc(<MagnussonEtAl2024Harmful>) as a starting point).

One of the fundamental concepts in causal inference is _confounding_---the focus of this article. Confounding occurs when a third variable jointly causes both the predictor and outcome of interest @Rohrer2018thinking. A commonly used example of confounding is the observation that ice cream sales are correlated with rates of drowning (@fig-toy, top left). However, it is neither the case that a delicious ice cream makes people worse swimmers (ice cream $arrow.r$ drowning), nor that people's last wish when drowning is a scoop of Cherry Garcia (drowning $arrow.r$ ice cream). Instead, it's a third factor---summertime (or perhaps temperature)---that causes both ice cream sales and rates of drowning to increase, creating a spurious correlation and a timely reminder of the adage "correlation does not imply causation" (@fig-toy, top right).

Perhaps less discussed is the adage's negation, which is equally true: _the absence of correlation does not imply the absence of causation_. Confounding is often used to explain spurious relationships, but can also suppress a true effect. Imagine there is a true causal effect of coffee consumption on productivity (there certainly is for the lead author); yet, in a correlational study, we find no difference in productivity between coffee drinkers and non-coffee drinkers (@fig-toy, bottom left). This can be explained by an unmeasured confounder: sleep quality. People who slept poorly are more likely to drink coffee, but poor sleep also decreases productivity. The negative effect of poor sleep cancels out the positive effect of coffee, biasing the true effect towards zero (@fig-toy, bottom right).

The importance of confounding is broadly understood in digital media research @ElsonEtAl2015Comparing @EtchellsEtAl2016Prospective @Ballou2023Manifesto. Controlling for potential confounders with the (often implicit) aim of estimating causal effects from observational data is common practice across the discipline: researchers regularly include covariates such as age, gender, and socio-economic status in statistical models with the aim of reducing or eliminating confounding (e.g., #npc(<JohnsonEtAl2016Motivationsa>) #npc(<SauterEtAl2020Social>)). Adjusting for such stable demographic factors is generally a sound practice with the potential to reduce bias and improve precision, among other benefits @GelmanEtAl2020Regression.

However, demographic characteristics such as age and gender represent just the tip of the confound iceberg. Many more factors have the potential to independently influence both the predictor (here, video game playtime) and outcome (here, wellbeing). These range from trait-level personality characteristics (e.g., extraversion), to genetic factors and neurodivergence (e.g., ADHD), to developmental factors (e.g., adverse childhood expriences), to so-called time-varying confounds such as job-related stress, injuries or health conditions, and much more. 

Very little research has sought to systematically identify which of these potential confounds (or others) may materially impact the results of research on gaming and mental health. The field's narrow attention to stable demographic factors as the primary source of confounding at the expense of other health, psychology, and social factors places severe constraints on both theory development and statistical modelling.

From a theoretical standpoint, neglecting potential confounders oversimplifies how gaming might influence wellbeing. Failing to specify these variables in conceptual models leaves the mechanisms and temporal dynamics underlying the gaming-wellbeing relationship unclear, impedes the ability to determine why and when gaming matters, and creates ambiguity about causal directions @PrestwichEtAl2015Using. Factors such as stress, social support, or daily mood fluctuations may either hide or magnify gaming's effects if they are not identified and measured, making theory-building incomplete. By systematically accounting for these confounders, researchers can develop richer models, clarify the boundaries of existing theories, and produce more nuanced explanations of the interplay between gaming and wellbeing.

From a modelling standpoint, a lack of guidance about which confounds are relevant forces researchers to make ad hoc decisions about what covariates to include in their statistical models. In addition to producing biased estimates, this increases opportunities for p-hacking via selective and atheoretical inclusion or exclusion of potential confounds @SimmonsEtAl2011falsepositive.

// Much more difficult to deal with, however, are _time-varying_ confounds. As media research shifts towards greater emphasis on longitudinal designs capable of evidencing within-person effects over time, we also need to grapple with confounds that may differ at different points in the study. For example, in a study of the relationship between gaming and mental health, age and gender are stable throughout the study, but sleep quality or workload may vary. These time-varying factors could independently influence both social media use and mental health at different points, complicating the disentangling of causal relationships.

== Present Research

It is clear that the field needs a more systematic understanding of confounds to build and test robust theories, and to extract more value out of the enormous amount of observational data we collect. To address this gap, we turned to players themselves and asked the research question: _What factors independently influence both gaming and wellbeing in the eyes of video game players?_

Using responses to a free-text survey question originally collected by #citet(<BallouEtAl2024Registered>), we conducted a theoretical thematic analysis aimed at identifying confounding factors that could either bias a true effect of playtime on wellbeing, or create a spurious relationship where one does not exist. 

= Method

== Data and Materials

The data, coding tree, and other materials for this study are available on the OSF (#highlight("link")).

The data derive from #citet(<BallouEtAl2024Registered>), openly available at #link("https://osf.io/edtwn"). In that study, 414 adult Xbox players from the US and UK completed 6 biweekly surveys between February and May 2023, and provided access to their Xbox play history. 

In addition to various questions about motivation and wellbeing, each biweekly survey had an open response question asking about events that participants thought may have affected both their gaming and their wellbeing. Specifically, participants were asked: "Have there been any major events impacting both your well-being and your gaming behavior in the last 2 weeks? If so, please briefly describe how you think your well-being and gaming changed as a result." // By virtue of specifying a recent time period, this question prompts _time-varying_ confounds (as opposed to a trait-level question such as "What aspects of your personality, upbringing, or typical environment do you think impact both your well-being and your gaming behavior?").

In total, there were 1318 responses the open response question during the 6 waves of the survey, provided 393 unique participants. We automatically filtered out 331 of these that consisted of short responses such as "no", "N/A", and "nothing". This left a total of 987 responses to be coded, which totalled 26,000 words.

== Participants

Participants were on average 31.8 years old, and played 2.1 hours of video games on Xbox per day. The sample therefore reflects a highly-engaged adult population. 

== Theoretical Thematic Analysis

To analyze the data, we conducted a theoretical thematic analysis @BraunClarke2006Using. In this version of thematic analysis, researchers begin with an existing theoretical framing---here, causal confounds that cause changes in both wellbeing and amount of gaming. We thus first generated a set of protocol codes matching the research question: 

- #greenUp wellbeing, #greenUp playtime (factors that cause people to feel better and play more)
- #redDown wellbeing, #greenUp playtime (factors that cause people to feel worse and play more)
- #greenUp wellbeing, #redDown playtime (factors that cause people to feel better and play less)
- #redDown wellbeing, #redDown playtime (factors that cause people to feel worse and play less)

We subsequently completed 3 coding cycles:

-	Cycle 1: deductive coding (sorting segments into the 4 theoretically-driven categories)
-	Cycle 2: inductive, open coding (generating descriptive, potentially even in-vivo codes labeling factors that people have mentioned)
-	Cycle 3: theme construction (integration and organization of the emergent subcodes to describe general patterns) 

The lead author (NB) completed all three coding cycles with all responses. Two analysts supported the analysis process. First, TH completed Cycles 1 and 2 with a subset (20%) of the data. The two coders then met to discuss the patterns each noticed in the data, which helped ensure that the deductive codes were consistently applied, and led to the introduction of new inductive themes. After completing another coding cycle with the revised coding tree, TF reviewed the coding tree alongside coded segments, to ensure that codes accurately reflected the coded segments from which they were derived, and that the coding tree as a whole was coherent and communicable. 

We adopt a constructivist perspective, believing that the analysis is inherently a product of the analyst's background in the topic, disciplinary knowledge, and perspective. Given this, we do not calculate measures such as interrater reliability; instead, the role of additional analysts is to assess and challenge the analysis and ensure that it is both coherent and well-grounded in the data. 

= Results

In total, we constructed #highlight[X] themes. In the interest of focusing the presentation our results on the most common and impactful confounds, we describe the three most common confounds in each of the four categories, summarized visually in @fig-confounds and textually in @tab-confounds. We 

#figure(
  placement: auto,
  scope: "parent",
  image("figures/confounds_overview.png", width: 80%),
  caption: [
    Categories of confounds (orange) reported by participants to affect both playtime and wellbeing.
  ],
) <fig-confounds>

#figure(
  placement: auto,
  scope: "parent",
  caption: [List of primary confounds that influence both playtime and wellbeing],
  table(
    align: (horizon, left),
    columns: (20%, 80%),

    table.cell(rowspan: 3, [*#redDown Wellbeing \ #redDown Playtime*]), 
      [Physical health (leading to lethargy)], 
      [Work demands (impacting available leisure time)], 
      [Care demands (impacting available leisure time)], 
    table.cell(rowspan: 3, [*#redDown Wellbeing \ #greenUp Playtime*]), 
      [Physical health (without severe lethargy)], 
      [Work demands (leading to higher stress but not substantial changes in leisure time)], 
      [Illness or death of a loved one (leading to grief and need for escapism)], 
    table.cell(rowspan: 3, [*#greenUp Wellbeing \ #redDown Playtime*]), 
      [Holidays that include travel], 
      [Productivity bursts], 
      [New family members], 
    table.cell(rowspan: 3, [*#greenUp Wellbeing \ #greenUp Playtime*]), 
      [Holidays that do not include travel], 
      [New hardware],
      [Social support for gaming], 
  )
) <tab-confounds>

// == Confounds creating the appearance of a positive relationship

#figure(
  placement: auto,
  scope: "parent",
  image("figures/household.png", width: 80%),
  caption: [
    Categories of confounds (orange) reported by participants to affect both playtime and wellbeing.
  ],
) <fig-household>

#figure(
  placement: auto,
  scope: "parent",
  image("figures/other_leisure.png", width: 80%),
  caption: [
    Categories of confounds (orange) reported by participants to affect both playtime and wellbeing.
  ],
) <fig-leisure>

#figure(
  placement: auto,
  scope: "parent",
  image("figures/physical_health.png", width: 80%),
  caption: [
    Categories of confounds (orange) reported by participants to affect both playtime and wellbeing.
  ],
) <fig-health>

#figure(
  placement: auto,
  scope: "parent",
  image("figures/social_relationships.png", width: 80%),
  caption: [
    Categories of confounds (orange) reported by participants to affect both playtime and wellbeing.
  ],
) <fig-social>

#figure(
  placement: auto,
  scope: "parent",
  image("figures/work.png", width: 80%),
  caption: [
    Categories of confounds (orange) reported by participants to affect both playtime and wellbeing.
  ],
) <fig-work>


== Confounds causing lower wellbeing and less gaming (#redDown Wellbeing, #redDown Playtime)

=== Physical Health Challenges

The most common factor that caused both lower wellbeing and less gaming was physical health. People reported a variety of conditions, such as respiratory illnesses (commonly, Covid-19), gastrointestinal problems, or recovery from surgeries, that led them to feel worse and spend less time playing games: 

#quote[
  Had food poisoning recently. That sh\*\* sucked so bad. Sent me into bad depression for a few days and I couldn't bring myself to play anything. _(P2283366, trans woman, 19)_

  I've been ill the last week and it has me down. I haven't played many games during this time. _(P4335337, man, 42)_

  I've been really sick the last couple of days and haven't felt like playing much. _(P8748814, man, 21)_
]

In a set of related but distinct cases, participants shared how certain physical health problems caused impairments that made it challenging to play games. 

#quote[
  I am currently suffering from double frozen shoulders, so my arms tend to hurt a fair bit, as a result, I am only playing for a few hours a day before I have too stop playing. I used to play games all day sometimes, but I can't do that anymore. _(P1942072, man, 50)_
  
  I was sick for about 4 days and because of that I wasn't really to play as much as I wanted too. Holding the controller felt heavy and my eye hurt from a fever. But besides that nothing else. _(P5508210, woman, 32)_

  Had the flu which blocked my ear so could not play _(P1761741, man, 34)_
]

A common thread throughout the instances where participants cited physical health problems as a caused of decreased gaming was tiredness. People whose illness led to substantial fatigue often cited this as a reason that they felt unable to play games, focusing instead on resting or other activities perceived to be less strenuous:

#quote[

  Fibro flare up continues, but starting to get a little better. Pain, fatigue and dizziness make it hard to focus, or muster up energy to play. _(P1859844, woman, 34)_

  Issues with long term pain. This has made me feel down, also there's been times I just wanted to play to take my mind of it but the pain I was in made me feel very tired so I couldn't concentrate. _(P2300863, man, 43)_

  I have been suffering from some anxiety for the last week caused by a family issue and as a result I've been tired and not gaming so much. _(P5858435, man, 37)_
]

Tiredness need not only stem from physical illnesses. In other cases, the tiredness was a result of increased demands at work or school, family issues, or care responsibilities: 

#quote[
  My son has had a ton of soccer practices and tournaments the past 2 weeks so we all been tired from running around so much and not playing as much _(P9212622, woman, 32)_

  I think working too much at work and coming home too tired to play any games _(P59595, man, 32)_

  Yes, I started donating plasma two times a week and it's been exhausting on my body so I played significantly less than I normally play. _(P6955202, woman, 33)_
]

The other experiential theme that emerged from the data was a loss of focus or motivation. 

#quote[
  I've been unwell, but it's an ongoing condition that flares up.  When I'm in pain, I try to play but find it hard to concentrate. _(P2300863, man, 43)_
]


=== Work Demands

Finally, participants listed various factors that caused them to have lower available leisure time, and often correspondingly higher stress. This included various examples such as periods of high demand at work or school, or the related demands of job loss and the search for new employment.

#quote[
  My work has been intense and I have had almost no time for gaming or any hobbies. It has me pretty depressed and frustrated and I am not really looking forward to each day. _(P3724934, man, 39)_

  This week I have been very busy with work and a little more tired in the evening so I haven't been gaming as much as I would normally. _(P5464127, man, 50)_

  Exam period - I was able to play less often and was more frequently stressed. _(P3228817, man, 20)_
]

=== Care Demands

Closely related to work demands were care demands. Participants reported needing to provide emotional support after issues such as a partner's job loss, attend to children and pets that are not normally their responsibility, or play host to houseguests whose presence was not always desirable: 

#quote[
  I had unwanted house guests \[...\] Not only did they cause extra stress by making unreasonable demands and requests but their being at the house took away time I could have been spending playing games on my Xbox One. _(P1089276, man, 40)_
]

In some cases, care demands meant participants needed to spend more time working to help with financial obligations:

#quote[
  My grandfather \[...\] is now at an assisted living facility \[...\] I have been visiting and helping him, helping my grandmother, and working harder at my freelance to provide more money \[...\] My game time has decreased drastically and my stress has increased exponentially. _(P4400529, woman, 27)_
]

In other cases, a person's friends or family experienced a negative event, causing the person to redirect their time and emotional energy towards care responsibilities: 

#quote[
  My wife was fired from her job. This has caused me to redirect my attention towards her more than usual. This has led to me playing the Xbox far less than I usually would. (P3593359, man, 43)

  I’ve had a family member start separation and divorce and have been helping to try and settle things. Also my mother has been in for a surgery which has left little time to play as much as usual. _(P7142316, man, 42)_

  My mum was in hospital for a week so I spent more time socialising with family than normal and less time gaming. _(P7577441, man, 39)_
]


== Confounds causing lower wellbeing and more gaming (#redDown Wellbeing, #greenUp Playtime)

=== Physical health 

In the previous section, we described physical ailments that led to decreased gaming, primarily due to their effects on the person's tiredness and ability to focus. However, other 

=== Work demands (stress variant)

=== Illness or death of a loved one

Participants also commonly listed health problems as causes of lower wellbeing but _higher_ gaming. Typically, this was a function of leisure time: the person's illness or condition was sufficient to limit their engagement in other activities such as work, but not so severe as to hinder their ability to focus or use a controller. 

#quote[
  I broke my ankle at work so I have had a lot more free time to play games. _(P6049919, man, 19)_
]

Gaming was also used as a distraction for certain kinds of ailments:

#quote[
  Gallstones, pain waking me up in the middle of the night. I don't normally play games late, but if I am in pain, then it helps distract me until the painkillers kick in.It helps me a lot to keep my mind occupied.
]

Similar to the higher wellbeing, higher gaming category, many participants listed deaths or illnesses in the family as a cause of lower wellbeing and higher gaming. In contrast to the +wellbeing,+gaming category, here the common thread was a need to escape: 

== Confounds causing higher wellbeing and less gaming (#greenUp Wellbeing, #redDown Playtime)

Many of the factors in this section are mirrored; a time-varying factor that causes lower wellbeing and more gaming will, upon receding, cause higher wellbeing and less gaming. In this case, we constructed five themes:

- Higher-valued leisure activities
- Holiday trips
- Newfound productivity
- New family members
- Improved living situations

=== 

Holidays that involve traveling outside of one's typical place of residence are likely to lead to higher wellbeing and less gaming. 

#quote[
  I have been on holiday in \[the UK\] since last Saturday, so haven't been able to play games but it has greatly improved my mental wellbeing. _(P3463025, man, 25)_
]

A less common theme centers around waves of productivity, where partcipants described the feeling of being 'on a roll' at work or in a hobby perceived to have more value than gaming: 

#quote[
  Saw a future path opening up and felt valued. Gaming reduced. _(P4125077, man, 51)_

  I also changed my college major \[...\] I am in a more confident, inspired, determined headspace but I have admittedly not had a lot of time to play games. Gaming is my number one hobby but I've chosen to prioritize my physical health (healing after donating), education, and giving my spare time to spend with my family. _(P6955202, woman, 33)_
]

For others, the addition of a new family member---a new child or pet---meant that life at home had become more pleasant, but at the cost of having less available time to play games:

#quote[
  We did just get a dog so I have had slightly less free time to play games but have been in a good mood from the dog. _(P6493462, man, 25)_
]

Often these trips had a social element that enhanced the wellbeing boost:

#quote[
   I've been away with some long term friends who I hadn't seen in a long time, it meant less time gaming but made my very happy. _(P5302158, man, 36)_
]

=== Higher-valued leisure activities

Several participants mentioned that changes in the availability of other leisure activities allowed them to pursue activities that they found more valuable than gaming. 

#quote[
  The weather has dramatically improved over the last few weeks and I've taken the time to handle some niggling housekeeping chores \[...\] I've played less games but being more active has generally improved my mood, along with being in the sunshine and interacting with neighbors and friends. (P8331115, man, 44)

  Attended two weddings - meeting up with friends I hadn't seen in a long time. Improved well-being. Reduced time to play games. (P906807, man, 29)
]

=== New family members

#quote[
  We did just get a dog so I have had slightly less free time to play games but have been in a good mood from the dog. (P5664433, man, 27)

  I’ve got a four week old baby, so gaming has reduced but it’s something that relaxes me and in between feeds and sleeping (P9415192, woman, 33)

]

=== Holidays with travel

== Confounds causing higher wellbeing and more gaming (#greenUp Wellbeing, #greenUp Playtime)

Finally, we turn to the last category---factors that cause higher wellbeing and increase the time people spend playing games. This was by far the least common combination listed by participants, with a total of just #highlight("23") mentions.

=== Staycations

=== New hardware

=== Productivity Bursts




= Discussion

High-level patterns in the data:
- When confounds cause tiredness or loss of focus, gaming tends to decrease; when confounds cause anxiety and stress, gaming tends to increase
- Physical health conditions increase gaming when mild and not disruptive to bodily functions needed during gaming, but decrease gaming when severe enough to cause fatigue and lack of concentration 
- Staycations increase gaming and wellbeing; holidays increase wellbeing but decrease gaming
- Among highly-engaged players, family death or illness decreases wellbeing and increases gaming as people turn to gaming as a means to escape during the grieving period. 


High-level implications:
- In general, people describe gaming as responsive to wellbeing more so than a driver of it
- Challenges MMT - rather than low-arousal people looking for high-arousal gameplay, they often find gaming to be so excitatory that they avoid it entirely

The prevalence and strength of these confounds remains unknown---it may be the case that in some populations an unadjusted effect of playtime on wellbeing is systematically positively biased (e.g., because many people experience health conditions that impair their physical ability to play games, causing lower wellbeing and lower gaming), and in other populations it may be systematically negatively biased (e.g., because many people experience flucutations in leisure time that improve wellbeing and lead to more opportunities to play games). 

== Potential Implications for Evidence Base

The pattern of results indicating that confounds can operate in both directions has significant implications for the existing literature on the relationship between gaming and wellbeing. Specifically, it suggests that previous studies are very likely to have produced biased estimates of the effect of gaming on wellbeing due to unmeasured or inadequately controlled confounding factors.

Whether studies are _systematically_ biased remains unknown. This will in part be a function of the (1) strength and (2) prevalence of each confounding factor in any given study. For example, if a study's sample contains a high number of people who have recently dealt with a family member's illness or death (for example, during the Covid-19 pandemic), observed relationships may be negatively biased given the large effect of such an event---more likely to show that gaming is negatively correlated with wellbeing, as people turned to games to deal with the stress or grief. But if a study's data collection coincides with a holiday period during which people have increased leisure time, observed relationships may be positively biased---more likely to show that gaming is positively correlated with wellbeing, as people enjoy the festivities and happen to have more available time to play games @Palomba2019Digital.  

== Recommendations for Future Work

Researchers should, whereever possible, measure and account for:
- physical health
- work demands
- deaths or serious illnesses in the family
- holiday periods and changes in leisure time

Some of these are moderated by yet further factors

Of course, gaming for some people actively _helps manage_ the very issues that caused a change in both their gaming and wellbeing. This draws attention to the importance of timescales---if a confound such as increased work stress causes a person to both feel worse and play more games, but the change in gaming then balances out their mood, the effect of gaming on wellbeing will only be observable for a short time period // or is it even observable at all?

== Moderated Confounds and Theory Building

= Conclusion

#set heading(numbering: none)
= Data Availability

= References

#bibliography("references.bib", style: "apa")