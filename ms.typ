// #import "@preview/elsearticle:0.4.0": *
// #import "@preview/wordometer:0.1.4": word-count, total-words

// 

// #show: elsearticle.with(
// title: "Ill Health and Grief Fuel Gaming, while Lethargy Slows It: Playtime--Wellbeing Confounds from Players' Perspectives",
// authors: (
//   (
//   name: "Nick Ballou",
//   affiliation: "Oxford Internet Institute, University of Oxford",
//   corr: "nick@nickballou.com",
//   id: "a",
//   ),
//   (
//   name: "Team",
//   id: "a"
//   ),
//   (
//   name: "Andrew K Przybylski",
//   id: "a"
//   ),
// ),
// abstract: "Evidence suggests that total time spent playing video games (playtime) is not strongly correlated with wellbeing. However, observational studies rarely capture the many “third variables” that may influence both gaming and wellbeing and therefore confound this relationship. In this theoretical thematic analysis of 987 free-text responses from 393 adult players, we document 18 varied factors that participants themselves believe shape both their gaming and wellbeing, grouped into five broad categories---physical health, household responsibilities, work/school pressures, social relationships, and other leisure. Some factors (e.g., stress, grief) led to increased gaming and lower wellbeing, whereas others (e.g., intensified caretaking duties) reduced both gaming and wellbeing. Several themes showed moderated effects, with a single factor sometimes producing opposite impacts (e.g., mild illness increasing gaming as a distraction, but severe illness reducing it). These findings underscore the complexity of gaming's causal relationship with wellbeing. Neglecting confounders risks masking true effects or creating spurious associations, undermining interpretability. We offer specific measurement recommendations for future research, guiding more comprehensive covariate inclusion to better isolate gaming's potential causal effects.",
// journal: "PsyArXiv",
// keywords: ("video games", "wellbeing", "stress", "thematic analysis", "confounds"),
// format: "3p",
// numcol: 2,
// line-numbering: false,
// )

///////////////////////////////
// APA TEMPLATE 
///////////////////////////////

#import "@preview/apa7-ish:0.2.0": *
#import "@preview/wordometer:0.1.4": word-count, total-words
// #import "../src/apa7ish.typ": *

#show: conf.with(
  title: "Ill Health and Grief Fuel Gaming, while Lethargy Slows It: Playtime--Wellbeing Confounds from Players' Perspectives",
  // documenttype: "Research Article",
  anonymous: true,
  authors: (
    (name: "Nick Ballou",
      email: "nick@nickballou.com",
      affiliation: "Oxford Internet Institute, University of Oxford",
      // postal: "Department of Communication, University of Pennsylvania, Philadelphia, PA 19104",
      orcid: "0000-0003-4126-0696",
      corresponding: true),
    (name: "Team",
      affiliation: "Oxford Internet Institute, University of Oxford",
      orcid: "0000-1111-1111-1111"),
    (name: "Andrew K Przybylski",
      affiliation: "Oxford Internet Institute, University of Oxford",
      orcid: "0000-0001-5547-2185")
  ),
  abstract: [Evidence suggests that total time spent playing video games (playtime) is not strongly correlated with wellbeing. However, observational studies rarely capture the many “third variables” that may influence both gaming and wellbeing and therefore confound this relationship. In this theoretical thematic analysis of 987 free-text responses from 393 adult players, we document 18 varied factors that participants themselves believe shape both their gaming and wellbeing, grouped into five broad categories---physical health, household responsibilities, work/school pressures, social relationships, and other leisure. Some factors (e.g., stress, grief) led to increased gaming and lower wellbeing, whereas others (e.g., intensified caretaking duties) reduced both gaming and wellbeing. Several themes showed moderated effects, with a single factor sometimes producing opposite impacts (e.g., mild illness increasing gaming as a distraction, but severe illness reducing it). These findings underscore the complexity of gaming's causal relationship with wellbeing. Neglecting confounders risks masking true effects or creating spurious associations, undermining interpretability. We offer specific measurement recommendations for future research, guiding more comprehensive covariate inclusion to better isolate gaming's potential causal effects.
],
  date: "Feb 1, 2025",
  keywords: [video games, wellbeing, stress, thematic analysis, confounds],
  funding: [This research was supported by the UK Economic and Social Research Council (ESRC) (ES/W012626/1).]
)

////////////////////////
/// Generally functions
//////////////////////

#set quote(block: true)

#show: word-count

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
  spacing: 1.1em,
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

Word count: #total-words

= Introduction

A series of recent studies has found no meaningful relationship between the amount of time people spend playing video games (playtime) and their wellbeing or mental health @BallouEtAl2024Registered @VuorreEtAl2022Time @LarrieuEtAl2023How. However, while these studies have strengthened the case that raw playtime is unlikely to affect wellbeing for most players---and pushed the conversation towards specific qualitative aspects of play such as a game's social affordances @CrenshawNardi2016It, time of day when play occurs @DrummondSauer2020Timesplitters, and player motivation @BruhlmannEtAl2020Motivational\-\-\-they have yet to conclusively rule out the possibility that playtime does causally affect people, at least some of the time. A causal understanding of games and wellbeing remains a vital prerequisite for informing evidence-based policy, behavioral management strategies and interventions, and design guidelines for the games industry.

Our continued uncertainty is, in large part, a reflection of the inherent challenge of making causal inferences from observational data. It remains difficult and rare for researchers to directly intervene on gaming behavior in a naturalistic setting (although see e.g., #npc(<EvansEtAl2018Effect>) and #npc(<BrailovskaiaEtAl2022twoweek>) for counter-examples)---even in a sister field such as violent video games and aggression where experiments are easier to conduct, they make up just 19% of studies @Ferguson2015angry. This means that our understanding of how games affect wellbeing comes largely from qualitative studies and observational designs where people are surveyed about their gaming and wellbeing. 

To estimate causal effects from observational data, whether cross-sectional or longitudinal, researchers need an understanding of the data-generating process @LohRen2023Unfulfilled. In any complex psychological topic such as how playing games interacts with wellbeing, the data-generating process is likely to be exceptionally complicated @BallouEtAl2024How, rife with mediators, effect size modification (moderation), colliders, and---perhaps most frequently discussed---confounders. Confounds are factors that influence both gaming and wellbeing. If unaccounted for, confounders can both create spurious correlations or bias true effects towards zero @Rohrer2018thinking. 

At present, the literature does not provide a systematic or comprehensive list of potential confounding factors in the relationship between gaming playtime and wellbeing. While studies commonly adjust for factors such as age, gender, employment, and education (e.g., #npc(<BallouEtAl2024Perceived>) #npc(<JohnsonEtAl2016Motivationsa>) #npc(<SauterEtAl2020Social>)), we argue that this does not go far enough: Many more factors beyond this short list of stable demographic characteristics influence the relationship between gaming engagement and wellbeing. To date, researchers have lacked the necessary information to identify, measure, and adjust for these additional confounds. Without closer attention to confounding, observational studies---which comprises the vast majority of work on this topic---will continue to have extremely limited value for shedding light on cause and effect. 

We believe players themselves are an invaluable source of qualitative information about how gaming and wellbeing unfold in their own lives. We therefore turned to them to help address the field's need for better information about confounding, and conducted a theoretical thematic analysis of player-reported confounds (n = 393 players across 6 biweekly surveys, 987 open-response text entries). Our results make several contributions: 

1. We present the most comprehensive list to date of variables that may need to be included in a statistical model to produce unbiased estimates of the effect of gaming on wellbeing, grouped into five categories: physical health, household, work and school, social, and other leisure
  - For the most prevalent of potential confounds, we offer concerete suggestions for measurement tools that researchers could use to capture and adjust for these (@tab-confounds)
2. We identify both positive and negative confounds, which may therefore bias effects in either direction: some confounds bias observed relationships positively by causing an increase or decrease in both playtime and wellbeing, while others would bias it negatively by causing an increase in one and a decrease in the other
3. We demonstrate that several confounds have _moderated_ effects on gaming, highlighting the need for more rigorous theory-building---for example, illness tends to decrease wellbeing and reduce gaming if associated with tiredness and difficulty focusing, whereas it tends to increase gaming if tiredness is not a primary symptom 

By systematically identifying player-reported confounds, we provide a valuable starting point for researchers deciding which covariates they need to measure and include in their statistical models, and what factors might need to be included in current or future theoretical models of gaming and wellbeing. 

== Confounding

#figure(
  placement: top,
  scope: "parent",
  image("figures/toy_example.png", width: 100%),
  caption: [
    Illustration of confounding. 
  ],
) <fig-toy>

The ultimate goal of many social scientific endeavors is to understand cause and effect @Eronen2020Causal\-\-\-we often want to be able to predict in advance how a given change will affect people, or to intervene on individuals or systems to improve wellbeing outcomes. In the case of gaming research, this includes broad goals such as establishing parenting strategies (based on e.g., hypothetical evidence that limiting play sessions to no more than X minutes will cause improved wellbeing), policy changes (based on e.g., hypothetical evidence that restricting total play to no more than Y hours will, on average, reduce problem gaming), or design guidelines (based on e.g., hypothetical evidence that including design feature Z will, on average, cause more toxicity between players). To establish cause and effect, we apply causal inference methods. (An introduction to causal inference is well beyond the scope of this article, but we refer readers to #npc(<Rohrer2018thinking>), #npc(<Dablander2020introduction>), and #npc(<MagnussonEtAl2024Harmful>) as a starting point).

One of the fundamental concepts in causal inference is _confounding_---the focus of this article. Confounding occurs when a third variable jointly causes both the predictor and outcome of interest @Rohrer2018thinking. A commonly used example of confounding is the observation that ice cream sales are correlated with rates of drowning (@fig-toy, top left). However, it is neither the case that a delicious ice cream makes people worse swimmers (ice cream $arrow.r$ drowning), nor that people's last wish when drowning is a scoop of Cherry Garcia (drowning $arrow.r$ ice cream). Instead, it's a third factor---summertime (or perhaps temperature)---that causes both ice cream sales and rates of drowning to increase, creating a spurious correlation and a timely reminder of the adage "correlation does not imply causation" (@fig-toy, top right).

Perhaps less discussed is the adage's negation, which is equally true: _the absence of correlation does not imply the absence of causation_. Confounding is often used to explain spurious relationships, but can also suppress a true effect. Imagine there is a true causal effect of coffee consumption on productivity (there certainly is for the lead author); yet, in a correlational study, we find no difference in productivity between coffee drinkers and non-coffee drinkers (@fig-toy, bottom left). This can be explained by an unmeasured confounder: sleep quality. People who slept poorly are more likely to drink coffee, but poor sleep also decreases productivity. The negative effect of poor sleep cancels out the positive effect of coffee, biasing the true effect towards zero (@fig-toy, bottom right).

The importance of confounding is broadly understood in behavioral research, and indeed in studies of digital media @ElsonEtAl2015Comparing @EtchellsEtAl2016Prospective @Ballou2023Manifesto. Controlling for potential confounders with the aim of estimating causal effects from observational data is common practice across the discipline: researchers regularly include covariates such as age, gender, and socio-economic status in statistical models with the aim of reducing or eliminating confounding (e.g., #npc(<JohnsonEtAl2016Motivationsa>) #npc(<SauterEtAl2020Social>)). Adjusting for such stable demographic factors is generally a sound practice with the potential to reduce bias and improve precision, among other benefits @GelmanEtAl2020Regression.

However, demographic characteristics such as age and gender represent just the tip of the confound iceberg. Many more factors have the potential to independently influence both psychological predictors (here, video game playtime) and outcomes (here, wellbeing). These range from trait-level personality characteristics (e.g., extraversion), to neurodivergence (e.g., ADHD), to developmental factors (e.g., adverse childhood expriences), to so-called time-varying confounds such as job-related stress, injuries or health conditions, and much more @GrajewskiDragan2020Adverse @LeeChen2023Seeking. 

Very little research has sought to systematically identify what potential confounds  materially impact the relationship between gaming and wellbeing. The field's narrow attention to stable demographic factors as the primary source of confounding at the expense of other health, psychology, and social factors places severe constraints on statistical modelling and, by extension, theory development.

From a modelling standpoint, a lack of guidance about which confounds are relevant forces researchers to make ad hoc decisions about what covariates to include in their statistical models. In addition to producing biased estimates, this increases opportunities for p-hacking via selective and atheoretical inclusion or exclusion of potential confounds @SimmonsEtAl2011falsepositive.

From a theoretical standpoint, neglecting potential confounders means that a given test of the theory can be easily explained away---results that are incompatible with the theory may be true contradictions, or simply statistical relics produced by incomplete adjustment for confounding. Ultimately, this leaves open numerous questions about the mechanisms and temporal dynamics underlying the gaming-wellbeing relationship unclear @PrestwichEtAl2015Using. By systematically accounting for confounders as part of the theory development process, researchers can develop richer models, clarify boundary conditions, and produce more nuanced explanations of the interplay between gaming and wellbeing @VanderWeele2019Principles.


== Present Research

It is clear that the field needs a more systematic understanding of confounds to build and test robust theories, and to extract more value out of the enormous amount of observational data we collect. To address this gap, we turned to players themselves and asked the research question: _What factors independently influence both gaming and wellbeing in the eyes of video game players?_

Using responses to a free-text survey question originally collected by #citet(<BallouEtAl2024Registered>), we conducted a theoretical thematic analysis aimed at identifying confounding factors that could either bias a true effect of playtime on wellbeing, or create a spurious relationship where one does not exist. 

= Method

== Data and Materials

The data, coding tree, and other materials for this study are available on the OSF (https://osf.io/ck9bm).

The data derive from #citet(<BallouEtAl2024Registered>), openly available at #link("https://osf.io/edtwn"). In that study, 414 adult Xbox players from the US and UK completed 6 biweekly surveys between February and May 2023, and provided access to their Xbox play history. 

In addition to various questions about motivation and wellbeing, each biweekly survey had an open response question asking about confounds: "Have there been any major events impacting both your wellbeing and your gaming behavior in the last 2 weeks? If so, please briefly describe how you think your well-being and gaming changed as a result." // By virtue of specifying a recent time period, this question prompts _time-varying_ confounds (as opposed to a trait-level question such as "What aspects of your personality, upbringing, or typical environment do you think impact both your well-being and your gaming behavior?").

In total, there were 1318 responses the open response question during the 6 waves of the survey, provided by 393 unique participants. We programmatically filtered 331 responses that consisted of short responses such as "no", "N/A", and "nothing". This left a total of 987 responses to be coded, totaling 26,000 words.

== Participants

Participants were on average 31.8 years old, and played 2.1 hours of video games on Xbox per day. The sample was 79% male, 16% female, and 5% non-binary or other identity. The sample therefore reflects a highly-engaged, majority male adult gaming population. 

== Theoretical Thematic Analysis

We conducted a theoretical thematic analysis @BraunClarke2006Using. In this variant of thematic analysis, researchers begin with an existing theoretical framing---here, causal confounds that cause changes in both wellbeing and amount of gaming. We thus first generated a set of protocol codes matching the research question: 

- #greenUp playtime, #greenUp wellbeing (factors that cause people to play more and feel better)
- #greenUp playtime, #redDown wellbeing (factors that cause people to play more and feel worse)
- #redDown playtime, #greenUp wellbeing (factors that cause people to play less and feel better)
- #redDown playtime, #redDown wellbeing (factors that cause people to play less and feel worse)

We subsequently completed 3 coding cycles:

-	Cycle 1: deductive coding (sorting segments into the 4 theoretically-driven categories)
-	Cycle 2: inductive, open coding (generating descriptive, potentially in-vivo codes labeling factors that people have mentioned with that pattern of effects)
-	Cycle 3: theme construction (integration and organization of the emergent subcodes to describe general patterns) 

The lead author (NB) completed all three coding cycles with all responses. Two analysts supported the analysis process. First, TH completed Cycles 1 and 2 with a subset (20%) of the data. The two coders then met to discuss the patterns each noticed in the data, which helped ensure that the deductive codes were consistently applied, and led to the introduction of new inductive themes. After completing another coding cycle with the revised coding tree, TF reviewed the coding tree alongside coded segments, to ensure that codes accurately reflected the coded segments from which they were derived, and that the coding tree as a whole was coherent and communicable. 

We adopt a constructivist perspective, believing that the analysis is inherently a product of the analyst's background in the topic, disciplinary knowledge, and perspective. Given this, we do not calculate measures such as interrater reliability; instead, the role of additional analysts is to assess and challenge the analysis and ensure that it is both coherent and well-grounded in the data. 

#figure(
  placement: top,
  scope: "parent",
  image("figures/confounds_overview.png", width: 70%),
  caption: [
    Categories of confounds (orange) reported by participants to affect both playtime and wellbeing.
  ],
) <fig-confounds>

= Results

In total, we constructed 18 themes, grouped into 5 _categories_ (overviewed in @fig-confounds): physical health, household and caretaking, work and school, social relationships, and other leisure availability. Each of these categories contains several _themes_---i.e., player-identified confounds affecting both playtime and wellbeing. 

In accordance with our protocol codes, we specify---to the best of our ability---the direction of effects within each theme. For example, some factors cause an increase in wellbeing and playtime (a positive confound possibly creating a spurious effect), whereas others cause an increase in playtime and a decrease in wellbeing (a negative confound possibly obscuring a true effect). In a handful of cases, themes were moderated by unknown factors---different players reported the same factor having opposite effects for them. Such cases are highlighted with purple +/- symbols. 

== Physical health 

#figure(
  placement: top,
  scope: "parent",
  image("figures/physical_health.png", width: 80%),
  caption: [
    Categories of confounds reported by participants to affect both playtime and wellbeing.
  ],
) <fig-health>

=== Conditions causing tiredness or loss of focus (#redDown Playtime, #redDown Wellbeing)

The most common factors that caused both lower wellbeing and less gaming related to physical health. People reported a variety of conditions, such as respiratory illnesses (commonly, Covid-19), gastrointestinal problems, or recovery from surgeries, that led them to feel worse and spend less time playing games: 

#quote[
  Had food poisoning recently. That sh\*\* sucked so bad. Sent me into bad depression for a few days and I couldn't bring myself to play anything. _(P2283366, trans woman, 19)_

  I've been ill the last week and it has me down. I haven't played many games during this time. _(P4335337, man, 42)_

  I've been really sick the last couple of days and haven't felt like playing much. _(P8748814, man, 21)_
]

However, it was not the case that all ill health conditions led to decreased gaming. Rather, the crux of this theme was descriptions of physical health problems causing tiredness and thereby limiting their motivation or capacity ot play. People whose illness led to substantial fatigue often cited this as a reason that they felt unable to play games, focusing instead on resting or other activities perceived to be less strenuous:

#quote[
  Fibro flare up continues, but starting to get a little better. Pain, fatigue and dizziness make it hard to focus, or muster up energy to play. _(P1859844, woman, 34)_

  Issues with long term pain. This has made me feel down, also there's been times I just wanted to play to take my mind of it but the pain I was in made me feel very tired so I couldn't concentrate. _(P2300863, man, 43)_

  I have been suffering from some anxiety for the last week caused by a family issue and as a result I've been tired and not gaming so much. _(P5858435, man, 37)_
]

The other experiential theme that emerged from the data was a loss of focus or motivation. 

#quote[
  I've been unwell, but it's an ongoing condition that flares up. When I'm in pain, I try to play but find it hard to concentrate. _(P2300863, man, 43)_

  I had a bad cold so I had zero concentration & gaming was harder so I didn’t do much
]

This theme contrasts with some common narratives around gaming which view it as a low-demand destressing activity. For these participants, playing games was often more cognitively or energetically demanding than they could manage during periods of illness or lack of focus. 

=== Conditions impairing ability to play (#redDown Playtime, #redDown Wellbeing)

In a set of related but distinct cases, participants shared how certain physical health problems caused impairments that made it physically challenging to play games. Rather than condition affecting their cognitive decision-making around games (as in the previous theme), instances in this theme related to bodily challenges within the physical act of playing games:

#quote[
  I am currently suffering from double frozen shoulders, so \[...\] I am only playing for a few hours a day before I have too \[sic\] stop playing. I used to play games all day sometimes, but I can't do that anymore. _(P1942072, man, 50)_
  
  I was sick for about 4 days and because of that I wasn't really to play as much as I wanted too. Holding the controller felt heavy and my eye hurt from a fever. _(P5508210, woman, 32)_

  Had the flu which blocked my ear so could not play _(P1761741, man, 34)_
]

A variety of conditions can harm wellbeing while also affecting sight, hearing, manual dexterity, ability to sit, and a number of other factors that determine whether a player is able to (comfortably) play games as much as they would otherwise elect to.  

=== Other conditions not affecting tiredness or ability to play (#greenUp Playtime, #redDown Wellbeing)

Participants also commonly listed health problems as causes of lower wellbeing but _higher_ gaming. Typically, this was a function of leisure time: the person's illness or condition was sufficient to limit their engagement in other activities such as work, but not so severe as to hinder their ability to focus or use a controller. 

#quote[
  I broke my ankle at work so I have had a lot more free time to play games. _(P6049919, man, 19)_

  I am currently off work with long Covid so I am playing more than usual at the moment. This has obviously had an impact on my physical and mental health _(P8175512, man, 45)_

  I found out that I have a brain tumour. This has brought my mood down in general and has left me just wanting to sit around and play Xbox at times _(P4090429, man, 26)_
]

Gaming was used as an intentional distraction for certain ailments:

#quote[
  Gallstones, pain waking me up in the middle of the night. I don't normally play games late, but if I am in pain, then it helps distract me until the painkillers kick in. _(P4569842, man, 33)_

  I had an infected tooth that came with alot of pain and frustration. Gaming made a good distraction to keep my mind off the pain. When I'm in pain I'm easily frustrated and irritable. _(P4045802, woman, 34)_
]

The broader pattern in these examples is an increase in either free time or the desire to escape, without accompanying limitations on their ability to play or enjoy games.  

== Household and caretaking 

#figure(
  placement: top,
  scope: "parent",
  image("figures/household.png", width: 70%),
  caption: [
    Household and care-related themes reported by participants to affect both playtime and wellbeing, with corresponding dominant directionality.
  ],
) <fig-household>

=== Loss-related grief (?? Playtime, #redDown Wellbeing)

Participants commonly cited the loss of a loved one as a factor impacting both playtime and wellbeing. While loss events were always negative for wellbeing, participants reported that they sometimes caused increased gaming, and sometimes decreased gaming. For example, some players describe turning to games as a primary means of coping with the grief or stress: 

#quote[
  A family member passed away so to avoid being depressed I've been sleeping all day and gaming all night, I've nearly lost relationships due to this because its the one thing that takes my mind off every thing. _(P2249194, man, 22)_

  My dog died last week, which was a proper kick in the teeth, been feeling pretty low about it but been finding an escape with games. _(P4404247, man, 26)_

  My mother had a stroke 4 weeks ago and fractured her skull. \[...\] I've been trying to game way more to help escape the feelings and emotions I have. Helps me forget and takes away the worrying. _(P5616255, man, 24)_
]

Others, however, describe how death or illness in the family limited their playtime, due to factors such as logistical responsibilities, being emotionally drained, or a change in priorities: 

#quote[
  My wife had a death in her family, which exasperated my depression and anxiety. This interfered with my sleep, which made it hard to concentrate sometimes when gaming. _(P2300863, man, 43)_

  A funeral i had to travel for. It was an emotional time that obviously impacted and interrupted everything for a few days while I was gone _(P3372296, man, 23)_

  We had a loss in the family recently and it has caused a bit of upset over the last couple of weeks so I haven't been playing my Xbox as much as I have had other priorities _(P5297240, man, 45)_
]

One participant highlights the duality of these experiences, showing that the different gaming-related responses can occur within a single individual:

#quote[
  I'm still battling a bit of depression after losing my mother three months ago. Somedays I really look forward to gaming and escaping realty and my real-world problems. Other days, I find gaming and the battle passes of the games I play a chore. _(P8244483, man, 36)_ 
]

Grief can spur some people towards gaming, but so too can the emotional turbulence associated with loss make gaming less appealing or convenient.

=== Intensified Caretaker Duties (#redDown Playtime, #redDown Wellbeing)

Many participants reported needing to provide higher-than-usual amounts of emotional, financial, or general household support to loved ones. These periods of intensified caretaking followed from issues such as a partner's job loss, children's struggles, or needing to play host to demanding pets or houseguests whose presence was not desirable: 

#quote[
  I had unwanted house guests \[...\] Not only did they cause extra stress by making unreasonable demands and requests but their being at the house took away time I could have been spending playing games on my Xbox One. _(P1089276, man, 40)_
]

In some cases, care demands meant participants needed to spend more time working to help with financial obligations:

#quote[
  My grandfather \[...\] is now at an assisted living facility \[...\] I have been visiting and helping him, helping my grandmother, and working harder at my freelance to provide more money \[...\] My game time has decreased drastically and my stress has increased exponentially. _(P4400529, woman, 27)_
]

In other cases, a person's friends or family experienced a negative event, causing the person to redirect their time and emotional energy towards care responsibilities: 

#quote[
  My wife was fired from her job. This has caused me to redirect my attention towards her more than usual. This has led to me playing the Xbox far less than I usually would. _(P3593359, man, 43)_

  I’ve had a family member start separation and divorce and have been helping to try and settle things. Also my mother has been in for a surgery which has left little time to play as much as usual. _(P7142316, man, 42)_
]

When a person's social circle requires additional support, many people were quick to drop gaming as a way to make space to provide it. 

=== Security and Maintainence (?? Playtime, #redDown Wellbeing)

Several participants reported incidents such as break-ins, car accidents, or court cases, which we label as security and maintence factors. Several instances described how participants turned to gaming for relief or escape after these incidents:

#quote[
  I was involved in a car accident that had me upset for a while but gaming helped me maintain contact with friends despite being relatively isolated as I had no method of travel during the last few weeks _(P4948310, man, 22)_

  2 court cases in the past 5 days, very stressed and extremely upset I can't see my daughter. I game at night to take my mind away from it all _(P5401026, man, 35)_
]

However, one participant described a security incident instead pulling their attention away from games:

#quote[
  I had someone hit my car in a parking lot and then start harassing phone calls and such. I have been spending more time filing police reports and documenting this. \[Less gaming\] has me a bit on edge. _(P3130974, woman, 41)_
]

=== Unstable Housing (#redDown Playtime, #redDown Wellbeing)

A small number of participants referenced disruptions to their living arrangements that both increased stress and reduced their ability or desire to play games: 

#quote[
  Being evicted from my house so have had to spend time packing and not gaming _(P5401026, man, 35)_

  I moved house so have been under a lot of stress and have not had as much time to game as usual _(P263962, man, 27)_
]

Completing a move has the potential to boost wellbeing (e.g., P6123637 who wrote "Moved into new house, well-being improved due to being in a more peaceful location) but unsurprisingly the act of moving itself was often both stressful and impeded gaming.

=== New family members (?? Playtime, #greenUp Wellbeing)

Finally, some participants described how the addition of a new family member---a new child or pet---caused their wellbeing to improve, but at the cost of having less available time to play games:

#quote[
  We did just get a dog so I have had slightly less free time to play games but have been in a good mood from the dog. _(P5664433, man, 27)_

  I've got a four week old baby, so gaming has reduced but it's something that relaxes me and in between feeds and sleeping _(P9415192, woman, 33)_
]

== Work and school demands

#figure(
  placement: top,
  scope: "parent",
  image("figures/work.png", width: 80%),
  caption: [
    Work and school-related themes reported by participants to affect both playtime and wellbeing, with corresponding dominant directionality.
  ],
) <fig-work>

=== Work-related Stress Impacting Leisure Time (#redDown Playtime, #redDown Wellbeing)

Most commonly, participants cited periods of work-related stress that were tied to lower available leisure time. Most cases reported simply generic periods of high intensity or stress at work: 

#quote[
  My work has been intense and I have had almost no time for gaming or any hobbies. It has me pretty depressed and frustrated and I am not really looking forward to each day. _(P3724934, man, 39)_

  This week I have been very busy with work and a little more tired in the evening so I haven't been gaming as much as I would normally. _(P5464127, man, 50)_

  Exam period - I was able to play less often and was more frequently stressed. _(P3228817, man, 20)_
]

Other participants were more specific, referring to financial pressures limiting their free time, or to emergencies that unexpected emergencies required their presence:

#quote[
  I have been stressed out about finances, and I have been taking up more freelance gigs as a way to supplement my income, at the sacrifice of my gaming. _(P4355766, man, 30)_

  Volume of work with emergency call outs, to \[sic\] tired to concentrate or get enjoyment from Xbox _(P1255552, man, 42)_
]

When stressors at work also impinge upon leisure time, participants understandably tend to feel worse and play less.

// Tiredness need not only stem from physical illnesses. In other cases, the tiredness was a result of increased demands at work or school, family issues, or care responsibilities: 

// #quote[
//   My son has had a ton of soccer practices and tournaments the past 2 weeks so we all been tired from running around so much and not playing as much _(P9212622, woman, 32)_

//   I think working too much at work and coming home too tired to play any games _(P59595, man, 32)_

//   Yes, I started donating plasma two times a week and it's been exhausting on my body so I played significantly less than I normally play. _(P6955202, woman, 33)_
// ]


=== Work-related Stress NOT Impacting Leisure Time (#greenUp Playtime, #redDown Wellbeing)

In other cases, however, work-related stressors did not necessarily impinge upon leisure availability. In these cases where participants did not mention an increase in time spent working, several reported that they specifically increased their gaming to deal with the negative wellbeing impacts of their work environment: 

#quote[
  Major changes at work making me anxious and pushing me towards gaming more to escape "reality" and have some time to myself, trying to not think about things out of my control. _(P6523495, man, 30)_

  My mental health has suffered greatly from my job, this has led me to playing a lot more video games. I pretty much am always gaming when I am not working. _(P6523495, man, 30)_
]

Gaming is viewed as a viable escape or distraction from unpleasant work environments---so long as the person has the availability to actually pursue it.

=== Job Loss and Unemployment (?? Playtime, #redDown Wellbeing)

Many participants described turning to games during periods of unemployment or job loss, a phenomenon documented in previous research @LeeChen2023Seeking. Among our participants, the effect of job loss wellbeing was understandably consistently negative, but its effect on gaming was varied. Some participants turned to gaming to deal with the negative feelings:


Whereas other participants had the opposite reaction, spending less time playing games, possibly in favor of investing time into their job search:

#quote[
  I got made redundant from a job I had been at a long time. For a few days I didn't feel like gaming and wasn't getting the same level if enjoyment as I normally do _(P5858435, man, 37)_

  Had to sell some of my gaming peripherals to pay for day to day expenses as I've now gone through my 401k and savings post my covid layoff. This means I can no longer play my favorite game \[...\] its been really depressing since that was my social activity and distraction. _(P1437554, man, 38)_

  Almost got fired at my job. For no other reason than being visibly upset. For about 2 weeks I played less due to depression.
]

For the latter participant, the pattern might describe both a confounding effect as well as a process in which gaming was (in part) the outcome of a chain of effects: nearly being fired led to feelings of depression, which in turn resulted in depression, which in turn limited the person's motivation to engage with games.

=== Self-improvement Goals (#redDown Playtime, #greenUp Wellbeing)

A less common theme centers around waves of productivity, where partcipants described the feeling of being 'on a roll' at work or in a hobby perceived to have more value than gaming: 

#quote[
  Saw a future path opening up and felt valued. Gaming reduced. _(P4125077, man, 51)_

  I also changed my college major \[...\] I am in a more confident, inspired, determined headspace but I have admittedly not had a lot of time to play games. Gaming is my number one hobby but I've chosen to prioritize my physical health (healing after donating), education, and giving my spare time to spend with my family. _(P6955202, woman, 33)_
]

For many participants, gaming is an adaptible activity that can be replaced with other activites that are viewed as more productive or wellbeing-supportive, when the environment supports pursuing those instead of (or in addition to) gaming. 

== Social relationships

#figure(
  placement: top,
  scope: "parent",
  image("figures/social_relationships.png", width: 80%),
  caption: [
    Social-related themes reported by participants to affect both playtime and wellbeing, with corresponding dominant directionality.
  ],
) <fig-social>

=== Social Strain (?? Playtime, #redDown Wellbeing)

#highlight("FINISH")

One of the most common themes was that of social strain---participants describing how difficulties in their personal relationships were harmful for wellbeing but led to adaptations in their gaming. The relationships in questions were varied, including friends, family, partners, children, and the wider community, but at their core all shared a feeling of being disconnected from others, which impacting both their wellbeing and their gaming.

For many participants, this led to lower engagement with games, as they lost the energy, focus, and motivation to play games: 

#quote[
  I've been through a lot of struggles with \[a recent break-up\]. It's made it hard to focus on games sometimes _(P2445414, woman, 29)_

  Difficult time in my relationship. Been feeling depressed and unable to engage much with gaming. _(P5032078, man, 40)_

    One of my best friends betrayed me and cut me out of their life, and that has a very negative impact on my well-being and my gaming ability. _(P4823800, man, 20)_
]


Other participants, however, reported the opposite: decreased wellbeing but increased gaming as they turned to media as a means of dealing with (or escaping from) the social stress:

#quote[
  Falling out with family members thus playing more games to distract and entertain _(P906583, man, 31)_

  I've lost my social circle from various things. As a result I have had more free time, some of which I've allocated to gaming. _(P3470303, man, 18)_

  Spoke with someone who was critical of my job, my inability to find other work and the way I was looking for it \[...\] it discouraged me and affected my mental health. Often when I feel this way I tend to play video games more to distract _(P3002898, man, 30)_

  We’ve got a foster child and that has been really difficult the past few weeks and just life in general seems to be getting a lot more difficult in all areas. I feel like my well-being has suffered and I’ve been using gaming as an escape or a chance to not have to deal with anything and just zone out. _(P1184221, man, 37)_
]

Like work and intensified caretaking, interpersonal challenges serve as another source of stress for which at least some people will turns to games to manage. 

=== Social Support for Gaming (#greenUp Playtime, #greenUp Wellbeing)

Participants' engagement with games was not only affected by their own interest in gaming, but sometimes also by that of those around them. When friends or partners supported or co-participated in their interest in gaming, participants described a positive effect on both their wellbeing and their playtime:

#quote[
  Last week, me and my girlfriend started playing a co-op game called Unravel 2 \[...\] We had lots of fun through cooperation in that game, it was a lovely and different experiencde for both of us, we want to try more co-op games in the future.\[...\] I can conclude that this was a major event that positively impacted mine and my girlfriend's gaming behaviour and well being :) _(P7340644, woman, 34)_

  About 1 year ago I split up with my fiance and did not want to game at all during that time. Now I am with a new partner who also loves to game and have been playing every day _(P749516, woman, 31)_
]

Individuals do not choose to play games (or not) in a vaccuum; certain social environments can make people feel more comfortable to express or engage in their interests, boosting both wellbeing and play. 

== Other leisure availability

#figure(
  placement: top,
  scope: "parent",
  image("figures/other_leisure.png", width: 80%),
  caption: [
    Other leisure-related themes reported by participants to affect both playtime and wellbeing, with corresponding dominant directionality.
  ],
) <fig-leisure>

=== Additional Leisure Time Involving Travel (#redDown Playtime, #greenUp Wellbeing)

Holidays that involve traveling outside of one's typical place of residence were reported to cause higher wellbeing and less gaming. 

#quote[
  I have been on holiday in \[the UK\] since last Saturday, so haven't been able to play games but it has greatly improved my mental wellbeing. _(P3463025, man, 25)_
]

Often these trips had a social element that enhanced the wellbeing boost:

#quote[
   I've been away with some long term friends who I hadn't seen in a long time, it meant less time gaming but made my very happy. _(P5302158, man, 36)_
]
 
That travel would disrupt access to gaming equipment is logical---this may be especially the case for the participants of this particular study, who primarily play games on Xbox (as opposed to a portable system such as the Nintendo Switch). 

=== Additional Leisure Time NOT Involving Travel (#greenUp Playtime, #greenUp Wellbeing)

By contrast, periods of higher leisure availability where participants stayed at home tended to cause both higher wellbeing and higher playtime. During holidays and staycations, players used the wellbeing-boosting reprieve from work to play more games:

#quote[
  I had some days off work for the Easter holiday. I think this improved my mood as I felt I was starting to burnout. It also gave me a bit more time for gaming. _(P2614240, man, 27)_
]

In other cases, it was a new job with improved work-life balance that afforded them more opportunities to play games: 

#quote[
  I stated a new job, which positively affected my well being it balanced out my work/life schedule and now have more time to do what I enjoy _(P1604123, man, 32)_
]

This theme bears some relation to physical health conditions not causing tiredness or impairing ability to play---when participants were off of work (either due to planned holiday or injury) but at home, they tended to feel better and dedicate a portion of their additional leisure time to games. 

=== Restrictions on Alternative Activities (#greenUp Playtime, #redDown Wellbeing)

Several participants describe how logistical restrictions on their ability to pursue other forms of leisure. Examples such as weather, financial constraints that prevented them from participating in activities outside the home, and movement restrictions meant that the field of available leisure options, increasing gaming but impinging on wellbeing:

#quote[
  Poor weather on my days off meant I haven't taken the kids out anywhere and been on the Xbox and PC a little more. _(P131120, man, 37)_

  I have been extremely broke for the past couple months \[...\] If I didn't have the cheap escape xbox game pass provides me... I'd be staring at the \[TV\] passively and more depressed than I can imagine. _(P1437554, man, 38)_
]

Some participants mention the inverse of this---as restrictions were lifted, they played less and felt better. Several participants mentioned that changes in the availability of other leisure activities allowed them to pursue activities that they found more valuable than gaming. 

#quote[
  The weather has dramatically improved over the last few weeks and I've taken the time to handle some niggling housekeeping chores \[...\] I've played less games but being more active has generally improved my mood, along with being in the sunshine and interacting with neighbors and friends. (P8331115, man, 44)

  Attended two weddings - meeting up with friends I hadn't seen in a long time. Improved well-being. Reduced time to play games. (P906807, man, 29)
]

For parsimony, we include these two patterns as part of the same theme, as the effects described by participants are symmetrical; when restrictions are introduced, people feel worse and play more; when they are alleviated, they feel better and play less.

= Discussion

#figure(
  placement: top,
  scope: "parent",
  caption: [List of the most prevalent confounds reported to cause changes in both playtime and wellbeing, alongside potential measures that could be used to assess them in future studies.],
  table(
    stroke: 1pt,
    align: horizon,
    columns: (15%, 40%, 15%, 30%),
      table.cell(align: center, [*Category*]),  
      table.cell(align: center,[*Confound*]), 
       table.cell(align: center, [*Direction*]),  
      table.cell(align: center, [*Measurement Suggestions*]),
      table.cell(rowspan: 3, [Physical Health]),
        [Conditions causing tiredness or loss of focus], 
          [#redDown Playtime #linebreak() #redDown Wellbeing], 
          [Short Fatique Questionnaire @PensonEtAl2020Short],
        [Conditions impairing ability to play], 
          [#redDown Playtime #linebreak() #redDown Wellbeing], 
          [Disability of the arm, shoulder and hand questionnaire (QuickDASH) @BeatonEtAl2005Development],
        [Other conditions not affecting tiredness or ability to play], 
          [#greenUp Playtime #linebreak() #redDown Wellbeing], 
          [Physical Health Questionnaire @SchatEtAl2005Physical],
      table.cell(rowspan: 2, [Household and Caretaking]),
        [Death or Illness of Loved One],
          [?? Playtime #linebreak()  #redDown Wellbeing],
          [Social Readjustment Rating Scale @HolmesRahe1967social],
        [Intensified Caretaking Duties],
          [#redDown Playtime #linebreak() #redDown Wellbeing],
          [Brief Assessment Scale for Caregivers @GlajchenEtAl2005Development],
      table.cell(rowspan: 2, [Work and School]),
        [Work-related Stress Impacting Leisure Time],
          [#redDown Playtime #linebreak() #redDown Wellbeing],
          table.cell(rowspan: 2, [Work Stress Questionnaire @HolmgrenEtAl2009Development #linebreak() Time Use Diary (e.g., #npc(<SullivanEtAl2020Time>))]),
        [Work-related Stress NOT Impacting Leisure Time],
          [#greenUp Playtime #linebreak() #redDown Wellbeing],
      table.cell(rowspan: 1, [Social Relationships]),
        [Social Strain],
          [?? Playtime #linebreak() #redDown Wellbeing],
          [Social Well-being Scale @Keyes1998Social],
      table.cell(rowspan: 2, [Other Leisure Availability]),
        [Additional Leisure Time Involving Travel],
          [#redDown Playtime #linebreak() #greenUp Wellbeing],
          [Geolocation; Travel Diary (e.g., #npc(<KangEtAl2018Capturing>))],
        [Additional Leisure Time NOT Involving Travel],
          [#greenUp Playtime #linebreak() #greenUp Wellbeing],
          [Time Use Diary (e.g., #npc(<SullivanEtAl2020Time>))]
  )
) <tab-confounds>

VIdeo game players readily recognize and identify a wide range of factors that independently influence both their gaming and their wellbeing. While many of these facotrs have been discussed in previous work, their theoretical status as potential confounds that---if unaccounted for---would bias the results of numerous studies that have related wellbeing and playtime @LarrieuEtAl2023How @BallouEtAl2024Registered @VuorreEtAl2022Time @PallaviciniEtAl2022Effects.

Understanding these confounds and the wider causal network of factors is of critical importance for a field which frequently justifies its resource expenditures with reference to potential for concrete interventions for players, policymakers, developers, health care professionals, and more @KowertQuandt2021Video @ColderCarrasEtAl2018Commercial @DanielsenEtAl2024Treatment. If we do not take causality seriously, the value of video game psychology will be largely relegated to forensics---descriptive explanations of why certain people might have experienced effects of their gaming on wellbeing after the fact---rather than actionable and predictive recommendations for changes that will avert problems (and maximize benefits) before they arise.

We therefore see this study's findings as having direct implications for our interpretation of the existing literature and for methodological approachs going forward, as well as offering wider theoretical research directions for the field. We discuss each in turn. 

== Evidence Base Implications 

The breadth and prevalence of confounds identified in this study calls into question the inferential value of many previous correlational studies on the topic of video games and wellbeing @LarrieuEtAl2023How @BallouEtAl2024Registered @VuorreEtAl2022Time @PallaviciniEtAl2022Effects. Although studies in this area often account for stable demographic factors, the potential confounds listed here are much more rarely considered, let alone accounted for. If we assume that some of the participant-identified confounds do truly operate as confounds of this relationship, it means that effectively all of the reported findings of this relationship---both significant and null---are substantially biased and contain very little information about causality. 

Whether previous work is _systematically_ biased remains to  be seen. @tab-confounds indicates that omitting the participant-identified confounds could both upwardly and downwardly bias effects. The prevailing direction of bias will in part be a function of the (1) strength and (2) prevalence of each confounding factor. For example, if a study's sample contains a high number of people who have recently dealt with a family member's illness or death (for example, during the Covid-19 pandemic), the observed relationship may be negatively biased---more likely to show that gaming is negatively correlated with wellbeing, as people turned to games to deal with the stress or grief. But if a study coincides with a holiday period during which people have increased leisure time, observed relationships may be positively biased---more likely to show that gaming is positively correlated with wellbeing, as people enjoy the festivities and happen to have more available time to play games @Palomba2019Digital. 

== Methodological Implications

First and foremost, our results point to a wide range of factors and constructs that researchers should consider measuring in future studies designed to assess the relationship between video game playtime and wellbeing.

These factors are summarized in @tab-confounds. For this table, we selected the most prevalent subset of confounds reported by players, which (when unaccounted for) are therefore likely to have the largest biasing impacts on observed relationships. For each confound, we describe the general pattern of directionality observed in the data, and provide a suggestion for a questionnaire or other measurement tool that could be used to assess the presence of this confound in future studies. 

Including these potential confounds in statistical models will require care and modelling expertise, especially in light of the fact that nearly all of them are _time-varying_ confounds---in contrast to a stable demographic factors like age and gender, a factor such as work-related stress is almost certain to vary over the course of a study. Media research has begun to place greater emphasis on longitudinal designs capable of evidencing within-person effects over time . While undeniably useful for improving our causal understanding @RohrerMurayama2023These, modelling time-varying confounds in longitudinal studies is more challenging than modelling confonuds (time-varying or time-invariant) in cross-sectional designs. We recommend researchers familiarize themselves with models and methods used for estimating causal effects in the presence of time-varying confounding @LohRen2023Tutorial.

Given that effect sizes for the relationship between gaming and wellbeing are typically small or null, we speculate that models which fully adjust for these many time-invariant and time-varying confounds are unlikely to yield significant or meaningful estimates. While we still hope to see this borne out empirically, we nonetheless believe our findings---that, in the eyes of participants, this relationship is frequently and strongly confounded---add yet more support to calls for a focus on subgroups and situations where gaming may reliably affect wellbeing, rather on broad, population-level effects over long timescales @VuorreEtAl2024Affectivea @DrummondSauer2020Timesplitters.  

== Theoretical Implications

Our findings include several high-level patterns that we believe could be valuable 'raw ingredients' for future theory development:

- When confounds cause tiredness or loss of focus, gaming tends to decrease; when confounds cause anxiety and stress, gaming tends to increase
- Physical health conditions increase gaming when mild and not disruptive to bodily functions needed during gaming, but decrease gaming when severe enough to cause fatigue and lack of concentration 
- Among highly-engaged players, family death or illness decreases wellbeing and increases gaming as people turn to gaming as a means to escape during the grieving period. 
- Staycations increase gaming and wellbeing; holidays increase wellbeing but decrease gaming
- Difficulties in romantic relationships are more likely to lead to reduced gaming, whereas difficulties in non-romantic relationships are more likely to lead to increased gaming

Some of these findings pose challenges for previous theory. In particular, the finding that particularly low energy players actively avoid gaming (potentially in favor of other less demanding media) challenges mood management theory's prediction that players in a state of low arousal are likely to seek out high-arousal gameplay so as to return to a state of equilibrium @Zillmann1988Mood. Instead, our participants report that, in a state of particularly low arousal, they find gaming to be so excitatory that they avoid it entirely. We recommend that these potentially contradicting patterns of evidence be subjected to further validation, and if upheld, be used to more clearly identify boundary conditions and accommodations within existing theory such as mood management theory.

It is vital to recognize that these causal patterns are undoubtedly more complicated and reciprocal than can be accounted for here. In particular, for some people gaming actively _helps manage_ the very issues that caused a change in both their gaming and wellbeing @IacovidesMekler2019role @LeeChen2023Seeking, drawing attention to timescales. Say increased work stress causes a person to both feel worse and play more games (confounding this relatoinship), but the increased gaming then stablizes  their mood. A survey conducted after this process has occurred would simply capture an increase in gaming with no corresponding change in wellbeing. It is crucial, therefore, for researchers to consider both direct effects and effects of the wider causal system, and design their studies to capture these on the timescales where they believe they will occur. In some cases, this may involve measuring intention to play games in the future, rather than simply current or past play (see e.g., #npc(<OuelletteWood1998Habit>)). 

== Limitations

Our findings are limited in several ways. First, players' sense-making of causality in their own life may not always be accurate or generalizable; people may be more likely to outwardly attribute changes in their gaming and/or wellbeing to particular factors and downplay other direct effects (e.g., out of embarrassment over playing more than they feel is acceptable). 

Second, as highlighted above, confounds represent just one element of wider and more complicated causal webs. We encourage further work to not just validate or refute these potential confounds, but to carefully explore the other contributing factors in these causal webs---specific exposures and mediators @BallouEtAl2024How, colliders @LampMacKinnon2024Correcting, differentiated wellbeing outcomes @HutaWaterman2014Eudaimonia, and so on. 

Third, our sample is unlikely to be representative of the general population. The sample here consists of highly-engaged adult Xbox players (median daily playtime: 2.1 hours) and is majority male (79%); lesser-engaged gaming populations may be less likely to exhibit changes to their gaming behavior in response to third variables (e.g., because they are more likely to use other activities as a coping mechanism for stress). We encourage comparative work with other groups of players (e.g., different ages, platforms, or geographic regions) to understand how confounding might operate differently.

= Conclusion

Though these findings reveal the challenges of drawing definitive causal conclusions from observational data about gaming, they also offer promising avenues for advancing the field. By systematically identifying relevant confounders, researchers can refine their methodological approaches and develop more robust theories of gaming's influence on wellbeing. With causality at the fore, the field's push towards richer data and stronger study designs (see e.g., #npc(<EgamiEtAl2024Causal>)) can fulfill our collective aim to optimize gaming experiences for players, promote wellbeing, and guide evidence-based policy. 

#set heading(numbering: none)
= Data Availability

Our data, materials, and coding tree can be found at https://osf.io/ck9bm.

= Conflicts of Interest

None to declare. 

= Funding

This research was supported by the UK Economic and Social Research Council (ESRC) (ES/W012626/1).

= Author Contributions

Conceptualization: NB, AKP; Funding acquisition: AKP; Project administration: AKP; Supervision: AKP; Formal Analysis: NB, TH: Visualization: NB; Validation: TF; Writing – original draft: NB; Writing – review & editing: NB, TH, TF, AKP

#bibliography("references.bib", style: "apa")