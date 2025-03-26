// #import "@preview/elsearticle:0.4.0": *
// #import "@preview/wordometer:0.1.4": word-count, total-words

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
//   name: "Tamás Földes",
//   id: "a"
//   ),
//   (
//   name: "Thomas Hakman",
//   id: "a"
//   ),
//   (
//   name: "Andrew K Przybylski",
//   id: "a"
//   ),
// ),
// abstract: "Time spent playing video games (playtime) is not strongly correlated with wellbeing. However, quantitative studies rarely capture the many “third variables” that may influence both gaming and wellbeing and therefore confound this relationship---risking masked true effects or spurious associations. In this theoretical thematic analysis of 987 free-text responses from 393 adult players, we document 17 varied factors that participants themselves believe shape both their gaming and wellbeing, mapped to five categories: physical health, household responsibilities, work/school pressures, social relationships, and other leisure. Some factors like stress and grief led to increased gaming and lower wellbeing, whereas others (such as intensified caretaking duties) reduced both gaming and wellbeing. Factors were sometimes perceived as having contradictory or moderated impacts (e.g., mild illness increasing gaming as a distraction, but severe illness reducing it). We offer specific measurement recommendations, guiding comprehensive covariate inclusion to better isolate gaming's complex causal effects.",
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
  title: "Ill Health and Grief Fuel Gaming, while Lethargy Slows It: Playtime–Wellbeing Confounds from the Player Perspective",
  // documenttype: "Research Article",
  anonymous: false,
  authors: (
    (name: "Nick Ballou",
      email: "nick@nickballou.com",
      affiliation: "Oxford Internet Institute, University of Oxford",
      // postal: "Department of Communication, University of Pennsylvania, Philadelphia, PA 19104",
      orcid: "0000-0003-4126-0696",
      corresponding: true),
    (name: "Tamás Földes",
      affiliation: "Oxford Internet Institute, University of Oxford",
      orcid: "0000-0002-0623-9149"),
    (name: "Thomas Hakman",
      affiliation: "Oxford Internet Institute, University of Oxford",
      orcid: "0009-0009-8292-2482"),
    (name: "Andrew K Przybylski",
      affiliation: "Oxford Internet Institute, University of Oxford",
      orcid: "0000-0001-5547-2185")
  ),
  abstract: [Time spent playing video games (playtime) is not strongly correlated with wellbeing. However, quantitative studies often overlook “third variables” that therefore the relationship between gaming and wellbeing---risking masked true effects or spurious associations. In this theoretical thematic analysis of 987 free-text responses from 393 adult players, we document 17 varied factors that participants themselves believe shape both their gaming and wellbeing, mapped to five categories: physical health, household responsibilities, work/school pressures, social relationships, and other leisure. Some factors like stress and grief led to increased gaming and lower wellbeing, whereas others (such as intensified caretaking duties) reduced both gaming and wellbeing. Factors were sometimes perceived as having contradictory or moderated impacts (e.g., mild illness increasing gaming as a distraction, but severe illness reducing it). We offer specific measurement recommendations, guiding comprehensive covariate inclusion to better isolate gaming's complex causal effects. 

  #linebreak()
  Word count: #total-words
  #linebreak()
],
  date: "Mar 24, 2025",
  keywords: [video games, wellbeing, stress, thematic analysis, confounds],
  // funding: [#linebreak() *Funding*: This research was supported by the UK Economic and Social Research Council (ESRC) (ES/W012626/1). #linebreak()],
  // disclosure: [#linebreak() *Data availability*: Data and materials for this study are available on the OSF: #link("https://osf.io/ck9bm"). #linebreak() #linebreak() *Contributions (CRediT; https://credit.niso.org/)*: NB: conceptualization, methodology, formal analysis, visualization, and writing – original draft. TF: validation, and writing – review & editing. TH: validation, and writing – review & editing. AKP: conceptualization, funding acquisition, project administration, and writing – review & editing #linebreak() #linebreak() *Conflicts of Interest*: The authors declare no competing interests. #linebreak() #linebreak() *Ethics*: This study uses secondary data. Ethical approval for the original study was granted by Queen Mary University of London (QMERC20.383).],
)

////////////////////////
/// General functions
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

= Introduction

Recent studies find no meaningful relationship between the amount of time people spend playing video games (playtime) and wellbeing @BallouEtAl2024Registered @VuorreEtAl2022Time @LarrieuEtAl2023How. However, while these studies strengthened the case that playtime on its own is unlikely to affect wellbeing for most players---and pushed the conversation towards qualitative elements of play such as social affordances @CrenshawNardi2016It, time of day @DrummondSauer2020Timesplitters, game aspects (e.g., challenge or narrative; #npc(<MirhadiEtAl2024Playing>)), and motivation @BruhlmannEtAl2020Motivational—they have yet to conclusively rule out the possibility that playtime does causally affect people, at least some of the time. Understanding the causal links between gaming and wellbeing is essential for evidence-based policy and industry guidelines.

This ongoing uncertainty largely reflects the challenge of inferring causality from observational data. Direct intervention in gaming behavior is difficult and rare (although see e.g., #npc(<EvansEtAl2018Effect>) and #npc(<BrailovskaiaEtAl2022twoweek>) for counter-examples), with experimental studies constituting only a small fraction of the literature (19% in a more experimentally-friendly sister field, violent video games; #npc(<Ferguson2015angry>)). Our understanding of how games affect wellbeing thus comes largely from qualitative studies and observational designs where people are surveyed about their gaming and wellbeing. 

To estimate causal effects from observational data, whether cross-sectional or longitudinal, researchers need an understanding of the data-generating process @LohRen2023Unfulfilled. The data-generating process in gaming and wellbeing---as with almost any psychological effect---is complex, involving multiple mediators, moderators, and---perhaps most frequently discussed---confounders @BallouEtAl2024How. Confounds are factors that influence both gaming and wellbeing. If unaccounted for, confounders can both create spurious correlations or bias true effects towards zero @Rohrer2018thinking.  

Currently, the literature lacks explicit causal models needed to identify and adjust for confounds in gaming and wellbeing. Although many studies adjust for demographics (e.g., age, gender, employment, education; #npc(<BallouEtAl2024Perceived>) #npc(<JohnsonEtAl2016Motivationsa>) #npc(<SauterEtAl2020Social>)), a broader causal context is needed to capture the many additional factors influencing gaming and wellbeing. Without closer attention to confounding, observational studies---which comprises the vast majority of work on this topic---risk both over- and underadjustment bias and are unlikely to meaningfully advance our understanding of play and player wellbeing. 

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

Most social science ultimately aims to understand cause and effect—to predict how changes affect people or to intervene for better outcomes @Eronen2020Causal. In games research, these goals include establishing parenting strategies, informing policy changes, and guiding design recommendations (based on e.g., hypothetical evidence that limiting a child's gaming no more than X minutes per session will cause improved wellbeing). To establish cause and effect, we apply causal inference methods (an introduction to causal inference is well beyond the scope of this article, but we refer readers to #npc(<Rohrer2018thinking>), #npc(<Dablander2020introduction>), and #npc(<MagnussonEtAl2024Harmful>) as starting points.)

One of the fundamental building blocks for realizing causal inference is _confounding_---the focus of this article. Confounding occurs when a third variable jointly causes both the predictor and outcome of interest @Rohrer2018thinking. A commonly used example of confounding is the observation that ice cream sales are correlated with rates of drowning (@fig-toy, top left). However, it is neither the case that a delicious ice cream makes people worse swimmers (ice cream $arrow.r$ drowning), nor that people's last wish when drowning is a scoop of Cherry Garcia (drowning $arrow.r$ ice cream). Instead, a third factor---summertime (or perhaps related variables such as school holiday or temperature)---causes both ice cream sales and rates of drowning to increase, creating a spurious correlation and a timely reminder of the adage "correlation does not imply causation" (@fig-toy, top right).

Perhaps less discussed is the adage's negation, which is equally true: _the absence of correlation does not imply the absence of causation_. Confounding is often used to explain spurious relationships, but can also suppress a true effect. Imagine there is a true causal effect of coffee consumption on productivity (there certainly is for the lead author); yet, in a correlational study, we find no difference in productivity between coffee drinkers and non-coffee drinkers (@fig-toy, bottom left). This can be explained by an unmeasured confounder: sleep quality. People who slept poorly are more likely to drink coffee, but poor sleep also decreases productivity. The negative effect of poor sleep cancels out the positive effect of coffee, biasing the true effect towards zero (@fig-toy, bottom right).

The importance of confounding is well recognized in behavioral and digital media research @ElsonEtAl2015Comparing @EtchellsEtAl2016Prospective @Ballou2023Manifesto. Researchers commonly control for confounders—such as age, gender, and education—in their statistical models with the implicit or explicit goal of reducing bias and producing results that more closely relate to potential causal effects (e.g., #npc(<JohnsonEtAl2016Motivationsa>) #npc(<SauterEtAl2020Social>)). Adjusting for such stable demographic factors is generally a sound practice with the potential to reduce bias and improve precision @GelmanEtAl2020Regression. However, demographic characteristics such as age and gender represent just one way of studying confounds. Many more factors have the potential to independently influence both psychological predictors (like video game playtime) and outcomes (like wellbeing). These range from trait-level personality characteristics, to neurodivergence, to developmental factors, to so-called time-varying confounds such as job-related stress, injuries or health conditions @GrajewskiDragan2020Adverse @LeeChen2023Seeking. 

Few studies have systematically identified confounds that materially impact the gaming-wellbeing relationship. Focusing narrowly on demographics at the expense of other health, psychology, and social factors severely limits statistical modeling and theory development. From a modelling standpoint, lack of guidance on relevant confounds forces ad hoc covariate selection. This practice biases estimates and increases p-hacking opportunities @SimmonsEtAl2011falsepositive. From a theoretical standpoint, neglecting confounds allows results to be dismissed as artifacts of incomplete adjustment rather than accepted as genuine contradictions. Ultimately, this leaves open numerous questions about the mechanisms and temporal dynamics underlying the gaming-wellbeing relationship  @PrestwichEtAl2015Using. 

== Present Research

By systematically accounting for confounders as part of the theory development process, researchers can develop richer models, clarify boundary conditions, and extract more value from the enormous amount of observational data we collect @VanderWeele2019Principles. 

We believe players themselves are an invaluable source of qualitative information about how gaming and wellbeing unfold in their own lives. Qualitative studies of player-reported data have been key in advancing theory both in the field of games and mental health (e.g., #npc(<BallouDeterding2023Just>), #npc(<SnodgrassEtAl2024Causal>)) and in psychology more broadly (e.g., #npc(<GlaserLaudel2019Discovery>)). We therefore turned to them to help address the field's need for better information about confounding, posing the research question: _What factors independently influence both gaming and wellbeing in the eyes of video game players? _and conducted a theoretical thematic analysis. 

We conducted a theoretical thematic analysis of player-reported confounds originally collected by #citet(<BallouEtAl2024Registered>) (n = 393 players across 6 biweekly surveys, 987 open-response text entries). We aimed to identify confounding factors that might bias a true effect of playtime on wellbeing or create a spurious relationship where one does not exist. Our approach is valuable because: 

1. We present the most comprehensive list to date of variables that may need to be included in a statistical model to produce unbiased estimates of the effect of gaming on wellbeing, grouped into five categories: physical health, household, work and school, social, and other leisure
  - For the most prevalent of potential confounds, we offer concrete suggestions for measurement tools that researchers could use to capture and adjust for these (@tab-confounds)
2. We identified both positive and negative confounds, which may therefore bias effects in either direction: some confounds bias observed relationships positively by causing an increase or decrease in both playtime and wellbeing, while others would bias it negatively by causing an increase in one and a decrease in the other
3. We demonstrate that several confounds have _moderated_ effects on gaming, highlighting the need for more rigorous theory-building---for example, illness tends to decrease wellbeing and reduce gaming if associated with tiredness and difficulty focusing, whereas it tends to increase gaming if tiredness is not a primary symptom 


= Method

== Data and Materials

Data and materials for this study are available on the OSF (https://osf.io/ck9bm/).

The data derive from #citet(<BallouEtAl2024Registered>), openly available at #link("https://osf.io/edtwn"). In that study, 414 adult Xbox players from the US and UK completed 6 biweekly surveys between February and May 2023, and provided access to their Xbox play history. Ethical approval for the original study was granted by Queen Mary University of London (QMERC20.383).

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

We adopt a critical realist perspective, believing that the qualitative analysis is capable of generating causal knowledge, but only through the subjective lens of the analyst given their background, disciplinary knowledge, and perspective @Fryer2022critical. Given this, we do not calculate measures such as interrater reliability; instead, the role of additional analysts is to promote reflexivity by assessing and challenging the analysis, helping ensure that it is both coherent and well-grounded in the data. 

#figure(
  placement: top,
  scope: "parent",
  image("figures/confounds_overview.png", width: 70%),
  caption: [
    Categories of confounds (orange) reported by participants to affect both playtime and wellbeing.
  ],
) <fig-confounds>

= Results

In total, we constructed 17 themes---player-identified confounds affecting both playtime and wellbeing---grouped into 5 _categories_ (overviewed in @fig-confounds): physical health, household and caretaking, work and school, social relationships, and other leisure availability. Themes derived from 428 individual coded segments. 

In accordance with our protocol codes, we specify---to the best of our ability---the directionality of each confound. Some factors cause an increase in wellbeing and playtime (a positive confound possibly creating a spurious effect), whereas others cause an increase in playtime and a decrease in wellbeing (a negative confound possibly obscuring a true effect). Certain themes were ambiguous or moderated by unknown factors---different players reported positive or negative impacts of the same factor. 

== Physical health 

=== Conditions causing tiredness or loss of focus (#redDown Playtime, #redDown Wellbeing)

The most common factors that caused both lower wellbeing and less gaming related to physical health. People reported a variety of conditions, such as respiratory illnesses (commonly, Covid-19), gastrointestinal problems, or recovery from surgeries: 

#quote[
  Had food poisoning recently. That sh\*\* sucked so bad. Sent me into bad depression for a few days and I couldn't bring myself to play anything. _(P2283366, trans woman, 19)_

  I've been ill the last week and it has me down. I haven't played many games during this time. _(P4335337, man, 42)_
]

However, not all ill health conditions led to decreased gaming. Rather, the crux of this theme was descriptions of physical health problems causing tiredness and thereby limiting their motivation or capacity to play. Illness-related fatigue was cited as a reason to focus on resting or other activities perceived to be less strenuous than gaming:

#figure(
  placement: top,
  scope: "parent",
  image("figures/physical_health.png", width: 70%),
  caption: [
    Categories of confounds reported by participants to affect both playtime and wellbeing.
  ],
) <fig-health>

#quote[
  Fibro flare up continues, but starting to get a little better. Pain, fatigue and dizziness make it hard to focus, or muster up energy to play. _(P1859844, woman, 34)_

  Issues with long term pain. This has made me feel down, also there's been times I just wanted to play to take my mind of it but the pain I was in made me feel very tired so I couldn't concentrate. _(P2300863, man, 43)_
]

Illness-related fatigue could also manifesto as a loss of focus or motivation:

#quote[
  I've been unwell, but it's an ongoing condition that flares up. When I'm in pain, I try to play but find it hard to concentrate. _(P2300863, man, 43)_

  I had a bad cold so I had zero concentration & gaming was harder so I didn’t do much
]

This theme contrasts with some common narratives around gaming which view it as a low-demand de-stressing activity. For these participants, playing games was often more cognitively or energetically demanding than they could manage during periods of illness or lack of focus. 

=== Conditions impairing ability to play (#redDown Playtime, #redDown Wellbeing)

Some participants shared how certain physical health impairments made gaming physically challenging---a pattern distinct from the previous theme's effects cognitive decision-making around games:

#quote[
  I am currently suffering from double frozen shoulders, so \[...\] I am only playing for a few hours a day before I have too \[sic\] stop playing. I used to play games all day sometimes, but I can't do that anymore. _(P1942072, man, 50)_
  
  I was sick for about 4 days and because of that I wasn't really to play as much as I wanted too. Holding the controller felt heavy and my eye hurt from a fever. _(P5508210, woman, 32)_

  Had the flu which blocked my ear so could not play _(P1761741, man, 34)_
]

A variety of conditions can harm wellbeing while also affecting sight, hearing, manual dexterity, ability to sit, and a number of other factors that determine whether a player is able to (comfortably) play games as much as they would otherwise elect to.  

=== Other conditions not affecting tiredness or ability to play (#greenUp Playtime, #redDown Wellbeing)

Participants also commonly listed health problems as causes of lower wellbeing but _higher_ gaming. Typically, this was a function of leisure time: the person's condition was serious enough to limit engagement in other activities such as work, but not so severe as to hinder their ability to focus or use a controller. 

#quote[
  I broke my ankle at work so I have had a lot more free time to play games. _(P6049919, man, 19)_

  I am currently off work with long Covid so I am playing more than usual at the moment. This has obviously had an impact on my physical and mental health _(P8175512, man, 45)_
]

Gaming was used as an intentional distraction for stress or sadness related to a medical condition:

#quote[
  Gallstones, pain waking me up in the middle of the night. I don't normally play games late, but if I am in pain, then it helps distract me until the painkillers kick in. _(P4569842, man, 33)_

  I had an infected tooth that came with alot of pain and frustration. Gaming made a good distraction to keep my mind off the pain. When I'm in pain I'm easily frustrated and irritable. _(P4045802, woman, 34)_

  I found out that I have a brain tumour. This has brought my mood down in general and has left me just wanting to sit around and play Xbox at times _(P4090429, man, 26)_
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

Loss of a loved one was a common theme that negatively impacted wellbeing, but had mixed effects on gaming. For example, some players described turning to games as a means of coping with the grief or stress: 

#quote[
  A family member passed away so to avoid being depressed I've been sleeping all day and gaming all night, I've nearly lost relationships due to this because its the one thing that takes my mind off every thing. _(P2249194, man, 22)_

  My dog died last week, which was a proper kick in the teeth, been feeling pretty low about it but been finding an escape with games. _(P4404247, man, 26)_

  My mother had a stroke 4 weeks ago and fractured her skull. \[...\] I've been trying to game way more to help escape the feelings and emotions I have. Helps me forget and takes away the worrying. _(P5616255, man, 24)_
]

Others, however, described how death or illness in the family limited their playtime, due to factors such as logistical responsibilities, being emotionally drained, or a change in priorities: 

#quote[
  A funeral I had to travel for. It was an emotional time that obviously impacted and interrupted everything for a few days while I was gone _(P3372296, man, 23)_

  We had a loss in the family recently and it has caused a bit of upset over the last couple of weeks so I haven't been playing my Xbox as much as I have had other priorities _(P5297240, man, 45)_
]

One participant highlighted the duality of these experiences, showing that different gaming-related responses can occur within one individual:

#quote[
  I'm still battling a bit of depression after losing my mother three months ago. Somedays I really look forward to gaming and escaping realty \[sic\] and my real-world problems. Other days, I find gaming and the battle passes of the games I play a chore. _(P8244483, man, 36)_ 
]

Grief can spur some people towards gaming, but so too can the emotional turbulence associated with loss make gaming less appealing or convenient.

=== Intensified Caretaker Duties (#redDown Playtime, #redDown Wellbeing)

Many reported intensified caretaker duties---providing extra emotional, financial, or household support due to events like a partner's job loss, children's struggles, or demanding houseguests: 

#quote[
  I had unwanted house guests \[...\] Not only did they cause extra stress by making unreasonable demands and requests but their being at the house took away time I could have been spending playing games on my Xbox One. _(P1089276, man, 40)_
]

In some cases, care demands meant participants needed to spend more time working to help with financial obligations:

#quote[
  My grandfather \[...\] is now at an assisted living facility \[...\] I have been visiting and helping him, helping my grandmother, and working harder at my freelance to provide more money \[...\] My game time has decreased drastically and my stress has increased exponentially. _(P4400529, woman, 27)_
]

In others, a person's friends or family experienced a negative event, causing the person to redirect their time and emotional energy towards care responsibilities: 

#quote[
  My wife was fired from her job. This has caused me to redirect my attention towards her more than usual. This has led to me playing the Xbox far less than I usually would. _(P3593359, man, 43)_

  I’ve had a family member start separation and divorce and have been helping to try and settle things. Also my mother has been in for a surgery which has left little time to play as much as usual. _(P7142316, man, 42)_
]

When a person's social circle requires additional support, many people were quick to drop gaming to make space for providing that support. 

=== Security and Maintenance (?? Playtime, #redDown Wellbeing)

Several participants reported incidents such as break-ins, car accidents, or court cases, which we label as security and maintenance factors. Participants turned to gaming for relief or escape after these events:

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

Completing a move has the potential to boost wellbeing (e.g., P6123637 who wrote "Moved into new house, well-being improved due to being in a more peaceful location") but unsurprisingly the act of moving itself was often both stressful and impeded gaming.

=== New family members (?? Playtime, #greenUp Wellbeing)

Finally, some participants described how the addition of a new child or pet caused their wellbeing to improve, but at the cost of having less available time to play games:

#quote[
  We did just get a dog so I have had slightly less free time to play games but have been in a good mood from the dog. _(P5664433, man, 27)_

  I've got a four week old baby, so gaming has reduced but it's something that relaxes me and in between feeds and sleeping _(P9415192, woman, 33)_
]

In this and other instances, gaming can expand or contract to fit in alongside other responsibilities perceived as more important, and that may have larger impacts on wellbeing.

== Work and school demands

#figure(
  placement: top,
  scope: "parent",
  image("figures/work.png", width: 70%),
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

=== Job Instability and Unemployment (?? Playtime, #redDown Wellbeing)

Many participants described turning to games during periods of unemployment or job instability, a phenomenon documented in previous research @LeeChen2023Seeking. Among our participants, the effect of job instability wellbeing was understandably consistently negative, but its effect on gaming was varied. Some participants turned to gaming to deal with the negative feelings:

#quote[

  Finding out about a redundancy has caused me to play more games to distract myself _(P6334835, woman, 25)_

  Waiting on response to job interview for better position, less commute time, and higher wages. Stressing me waiting with no responses, and started playing Diablo 3 to alleviate the stress. _(P6193017, man, 47)_
]

Whereas other participants had the opposite reaction, spending less time playing games, possibly in favor of investing time into their job search:

#quote[
  I got made redundant from a job I had been at a long time. For a few days I didn't feel like gaming and wasn't getting the same level if enjoyment as I normally do _(P5858435, man, 37)_

  Had to sell some of my gaming peripherals to pay for day to day expenses as I've now gone through my 401k and savings post my covid layoff. This means I can no longer play my favorite game \[...\] its been really depressing since that was my social activity and distraction. _(P1437554, man, 38)_

  Almost got fired at my job. For no other reason than being visibly upset. For about 2 weeks I played less due to depression.
]

For the latter participant, the pattern might describe both a confounding effect as well as a process in which gaming was (in part) the outcome of a chain of effects: nearly being fired led to feelings of depression, which in turn resulted in depression, which in turn limited the person's motivation to engage with games.

=== Self-improvement Goals (#redDown Playtime, #greenUp Wellbeing)

A less common theme centers around waves of productivity, where participants described the feeling of being 'on a roll' at work or in a hobby perceived to have more value than gaming: 

#quote[
  Saw a future path opening up and felt valued. Gaming reduced. _(P4125077, man, 51)_

  I also changed my college major \[...\] I am in a more confident, inspired, determined headspace but I have admittedly not had a lot of time to play games. Gaming is my number one hobby but I've chosen to prioritize my physical health (healing after donating), education, and giving my spare time to spend with my family. _(P6955202, woman, 33)_
]

For many participants, gaming is an adaptable activity that can be replaced with other activities that are viewed as more productive or wellbeing-supportive, when the environment supports pursuing those instead of (or in addition to) gaming. 

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

One of the most common themes was that of social strain---participants describing how difficulties in their personal relationships were harmful for wellbeing but led to adaptations in their gaming. The relationships in questions were varied, including friends, family, partners, children, and the wider community, but at their core all shared a feeling of being disconnected from others, which impacted both their wellbeing and their gaming.

For many participants, this led to lower engagement with games, as they lost the energy, focus, and motivation to play: 

#quote[
  I've been through a lot of struggles with \[a recent break-up\]. It's made it hard to focus on games sometimes _(P2445414, woman, 29)_

  Difficult time in my relationship. Been feeling depressed and unable to engage much with gaming. _(P5032078, man, 40)_
]

Other participants, however, reported the opposite: decreased wellbeing but increased gaming as they turned to media as a means of dealing with or escaping from social stress:

#quote[
  Spoke with someone who was critical of my job, my inability to find other work and the way I was looking for it \[...\] it discouraged me and affected my mental health. Often when I feel this way I tend to play video games more to distract _(P3002898, man, 30)_

  We've got a foster child and that has been really difficult the past few weeks \[...\] I feel like my well-being has suffered and I've been using gaming as an escape or a chance to not have to deal with anything _(P1184221, man, 37)_
]

Like work and intensified caretaking, interpersonal challenges serve as another source of stress for which at least some people will turns to games to manage. 

=== Social Support for Gaming (#greenUp Playtime, #greenUp Wellbeing)

Participants' engagement with games was not only affected by their own interest in gaming, but sometimes also by that of those around them. When friends or partners supported or co-participated in their interest in gaming, participants described a positive effect on both their wellbeing and their playtime:

#quote[
  Me and my girlfriend started playing a co-op game called Unravel 2 \[...\] We had lots of fun through cooperation in that game, it was a lovely and different experience for both of us \[...\] that positively impacted mine and my girlfriend's gaming behaviour and well being :) _(P7340644, woman, 34)_

  About 1 year ago I split up with my fiance and did not want to game at all during that time. Now I am with a new partner who also loves to game and have been playing every day _(P749516, woman, 31)_
]

Individuals do not choose to play games (or not) in a vacuum; social environments can make people feel more comfortable to express or engage in their interests, boosting both wellbeing and play. 

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

  Attended two weddings - meeting up with friends I hadn't seen in a long time. Improved well-being. Reduced time to play games. (P906807, man, 29)
]
 
That travel would disrupt access to gaming equipment is logical---especially for the participants of this particular study, who primarily play games on Xbox (as opposed to portable-by-default platforms such as smartphone and Nintendo Switch). 

=== Additional Leisure Time NOT Involving Travel (#greenUp Playtime, #greenUp Wellbeing)

By contrast, periods of higher leisure availability where participants stayed at home tended to cause both higher wellbeing and higher playtime. During holidays and staycations, players used the wellbeing-boosting reprieve from work to play more games:

#quote[
  I had some days off work for the Easter holiday. I think this improved my mood as I felt I was starting to burnout. It also gave me a bit more time for gaming. _(P2614240, man, 27)_
]

In other cases, it was a new job with improved work-life balance that afforded them more opportunities to play games: 

#quote[
  I stated a new job, which positively affected my well being it balanced out my work/life schedule and now have more time to do what I enjoy _(P1604123, man, 32)_
]

This theme bears some relation to physical health conditions not causing tiredness or impairing ability to play---when participants were off from work (either due to planned holiday or injury) but at home, they tended to feel better and dedicate a portion of their additional leisure time to games. 

=== Restrictions on Alternative Activities (#greenUp Playtime, #redDown Wellbeing)

Several participants describe logistical restrictions on the pursuit of other forms of leisure. Examples such as weather, financial constraints that prevented them from participating in activities outside the home, and movement restrictions meant that the field of available leisure options, increasing gaming but impinging on wellbeing:

#quote[
  Poor weather on my days off meant I haven't taken the kids out anywhere and been on the Xbox and PC a little more. _(P131120, man, 37)_

  I have been extremely broke for the past couple months \[...\] If I didn't have the cheap escape xbox game pass provides me... I'd be staring at the \[TV\] passively and more depressed than I can imagine. _(P1437554, man, 38)_
]

Some participants mention the inverse of this---as restrictions were lifted, they played less and felt better. Changes in the availability of other leisure activities allowed them to pursue activities that they found more valuable than gaming:

#quote[
  The weather has dramatically improved over the last few weeks and I've taken the time to handle some niggling housekeeping chores \[...\] I've played less games but being more active has generally improved my mood, along with being in the sunshine and interacting with neighbors and friends. (P8331115, man, 44)
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
          [Short Fatigue Questionnaire @PensonEtAl2020Short],
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

Video game players readily recognize and identify a wide range of factors that independently influence both their gaming and their wellbeing @HelsbyEtAl2023bandwidth @IacovidesMekler2019role. While many of these factors have been discussed in previous work, their theoretical status as potential confounds that---if unaccounted for---would bias the results of numerous studies that have related wellbeing and playtime @LarrieuEtAl2023How @BallouEtAl2024Registered @VuorreEtAl2022Time @PallaviciniEtAl2022Effects.

Mapping and consolidating these confounds and the wider causal network of factors is of critical importance for a field which frequently justifies its resource expenditures with reference to potential for concrete interventions for players, policymakers, developers, health care professionals, and more @KowertQuandt2021Video @ColderCarrasEtAl2018Commercial @DanielsenEtAl2024Treatment. If we do not take causality seriously, the value of video game psychology will be largely relegated to forensics---descriptive explanations of why certain people might have experienced effects of their gaming on wellbeing after the fact---rather than actionable and predictive recommendations for changes that will avert problems (and maximize benefits) before they arise. We therefore see this study's findings as having direct implications for our interpretation of the existing literature and for methodological approaches going forward, as well as offering wider theoretical research directions for the field. We discuss each in turn. 

== Evidence Base Implications 

The breadth and prevalence of confounds identified in this study calls into question the inferential value of most quantitative studies on the topic of video games and wellbeing @LarrieuEtAl2023How @BallouEtAl2024Registered @VuorreEtAl2022Time @PallaviciniEtAl2022Effects. Although studies in this area often account for stable demographic factors, the potential confounds listed here are much more rarely considered, let alone accounted for. If we assume that some of the participant-identified confounds do truly operate as confounds of this relationship, it means that effectively all of the reported findings of this relationship---both significant and null---are substantially biased and contain very little information about causality. 

Whether previous work is _systematically_ biased remains unknown. @tab-confounds indicates that omitting the participant-identified confounds could both upwardly and downwardly bias effects. The prevailing direction of bias will in part be a function of the (1) strength and (2) prevalence of each confounding factor. For example, if a study's sample contains a high number of people who have recently dealt with a family member's illness or death (for example, during the Covid-19 pandemic), the observed relationship may be negatively biased---more likely to show that gaming is negatively correlated with wellbeing, as people turned to games to deal with the stress or grief. But if a study coincides with a holiday period during which people have increased leisure time, observed relationships may be positively biased---more likely to show that gaming is positively correlated with wellbeing, as people enjoy the festivities and happen to have more available time to play games @Palomba2019Digital. 

== Methodological Implications

First and foremost, our results point to a wide range of factors and constructs that researchers should consider measuring in future studies designed to assess the relationship between video game playtime and wellbeing.

These factors are summarized in @tab-confounds. For this table, we selected the most prevalent subset of player-reporteed confounds, which (if unaccounted for) are therefore likely to most strongly bias observed relationships. For each confound, we describe the general pattern of directionality, and suggest a questionnaire or other measurement tool that could be used to assess the confound in future studies. 

Including these potential confounds in statistical models will require care and modelling expertise, especially in light of the fact that nearly all are _time-varying_ confounds---in contrast to stable demographic factors like age and gender, factors such as work-related stress will vary over the course of days or weeks. Media research has begun to place greater emphasis on longitudinal designs capable of evidencing within-person effects over time @RohrerMurayama2023These. While undeniably useful for improving our causal understanding, modelling time-varying confounds in longitudinal studies is more challenging than modelling confounds (time-varying or time-invariant) in cross-sectional designs. We recommend researchers familiarize themselves with models and methods used for estimating causal effects in the presence of time-varying confounding @LohRen2023Tutorial. 

== Theoretical Implications

Our findings include several high-level patterns that could be valuable 'raw ingredients' for future theory development:

- When confounds cause tiredness or loss of focus, gaming tends to decrease; when confounds cause anxiety and stress, gaming tends to increase
- Mild physical health conditions that do not interfere with essential bodily functions tend to increase gaming, but conditions severe enough to cause fatigue and lack of concentration decrease gaming 
- Among highly-engaged players, family death or illness decreases wellbeing and increases gaming as people turn to gaming as a means to escape during the grieving period. 
- Staycations increase gaming and wellbeing; holidays increase wellbeing but decrease gaming

Some of these findings challenge previous theory. In particular, the finding that low-energy players actively avoid gaming---potentially in favor of other less demanding media---contrasts with mood management theory's prediction that players in a state of low arousal are likely to seek out high-arousal gameplay so as to return to a state of equilibrium @Zillmann1988Mood. Instead, our participants report that, in a state of particularly low arousal, they find gaming to be overly excitatory and avoid it entirely. We recommend that these potentially contradicting patterns of evidence be subjected to further validation, and if upheld, be used to identify boundary conditions and accommodations within existing theories. We speculate that players may have an internal energy threshold below which gaming is perceived as too demanding, leading them to select lower-barrier alternatives such as TV or music. 

It is vital to recognize that these causal patterns are undoubtedly more complicated and reciprocal than can be accounted for here. In particular, for some people gaming actively _helps manage_ the very issues that caused a change in both their gaming and wellbeing @IacovidesMekler2019role @LeeChen2023Seeking—that is, they engage in digital emotion regulation @WadleyEtAl2020Digital. The process of emotion regulation through games draws attention to timescales. Say increased work stress causes a person to both feel worse and play more games (confounding this relationship), but the increased gaming then stabilizes  their mood. A survey conducted after this process has occurred would simply capture an increase in gaming with no corresponding change in wellbeing. 

It is crucial, therefore, for researchers to consider both direct effects and effects of the wider causal system, and design their studies to capture these on the timescales where they believe they will occur. In some cases, this may involve measuring intention to play games in the future, rather than simply current or past play (see e.g., #npc(<OuelletteWood1998Habit>)). A complementary approach is to conduct studies explicitly designed to elicit players' and experts' causal knowledge across varying timescales, a method that can be supported with digital tools @YenEtAl2021Narratives @SalimEtAl2024Belief.

== Limitations

Our findings are limited in several ways. First, players' sense-making of causality in their own life may not always be accurate or generalizable; people may be more likely to outwardly attribute changes in their gaming and/or wellbeing to particular factors and downplay other direct effects (e.g., out of embarrassment over playing more than they feel is acceptable). 

Second, as highlighted above, confounds represent just one element of wider and more complicated causal webs. We encourage further work to not just validate or refute these potential confounds, but to carefully explore the other contributing factors in these causal webs---specific exposures and mediators @BallouEtAl2024How, colliders @LampMacKinnon2024Correcting, differentiated wellbeing outcomes @HutaWaterman2014Eudaimonia, and so on. 

Third, our sample was not intended and is unlikely to be representative of the general population. The sample here consists of highly-engaged adult Xbox players (median daily playtime: 2.1 hours) and is majority male (79%); lesser-engaged gaming populations may be less likely to exhibit changes to their gaming behavior in response to third variables (e.g., because they are more likely to use other activities as a coping mechanism for stress). We encourage comparative work with other groups of players (e.g., different ages, platforms, or geographic regions) to understand how confounding might operate differently.

= Conclusion

Though these findings reveal the challenges of drawing definitive causal conclusions from observational data about gaming, they also offer promising avenues for advancing the field. By systematically identifying relevant confounders, researchers can refine their methodological approaches and theories of gaming's influence on wellbeing. With causality at the fore, the field's push towards richer data and stronger study designs (see e.g., #npc(<EgamiEtAl2024Causal>)) can fulfill our collective aim to optimize gaming experiences for players, promote wellbeing, and guide evidence-based policy. 

#set heading(numbering: none)
= Data Availability

Our data, materials, and coding tree can be found at https://osf.io/ck9bm.

= Conflicts of Interest

None to declare. 

= Funding

This research was supported by the UK Economic and Social Research Council (ESRC) (ES/W012626/1).

= Author Contributions

NB: conceptualization, methodology, formal analysis, visualization, and writing – original draft. TF: validation, and writing – review & editing. TH: validation, and writing – review & editing. AKP: conceptualization, funding acquisition, project administration, and writing – review & editing 

= Ethics

This study uses secondary data. Ethical approval for the original study was granted by Queen Mary University of London (QMERC20.383). #pagebreak()

#bibliography("references.bib", style: "apa")