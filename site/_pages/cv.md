---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

[Download the PDF version]({{ base_path }}/files/cv.pdf)

Education
======
* **PhD in Economics** (CIFRE industrial doctorate), University of Rennes, CNRS, CREM (UMR 6211), with Arkéa Asset Management, 2023 – 2026
  * Dissertation: *Essays on Crypto-Asset Markets: Inefficiencies, Portfolio Strategies, and Systemic Risk*
  * Defence: 27 November 2026
* **Master's Degree in Economic Engineering and Finance**, University of Rennes, 2020 – 2022
  * Ranked first in class (valedictorian), highest honours
  * Projects: volatility forecasting with GARCH models; gains from a euro depreciation (time-series macroeconometrics)
  * Bloomberg certification
* **Bachelor's Degree in Economics and Management**, Banking and Finance, University of Rennes, 2017 – 2020
  * High honours; Erasmus exchange at Poznań, Poland
* **Campus F**, intensive market finance training (equity derivatives, fixed income, rates, currencies), 2021

Work experience
======
* **CIFRE Doctoral Researcher**, Quantamental team, Arkéa Asset Management, 2023 – 2026
  * Built the team's market database in Python, fed by daily batch jobs from 6 data sources and covering 500+ crypto-assets and equities
  * Turned the thesis methods (pair trading, bubble detection, systemic-risk measures) into 4 in-house tools and contributed to the design of 3 quantitative strategies
  * Supported the quantamental team on its research questions and presented quantitative work to non-specialist colleagues
* **Portfolio Management Assistant**, Private Wealth Management, Arkéa Asset Management (formerly Federal Finance Gestion), 2021 – 2023
  * Apprenticeship, then fixed-term contract from September 2022
  * Developed decision-support tools in VBA and Python, used daily by 8 portfolio managers, including a Reuters-based dashboard covering 300+ funds and stocks
  * Created a daily market-sentiment indicator, backtested over 10 years in Python and emailed automatically to 40+ recipients
  * Automated client and sales presentations, cutting preparation time from 2 days to 2 hours each month
* **Technical Sales Assistant** (internship), business banking branch, Crédit Agricole Anjou Maine, Laval, 2021
  * Ran the mandatory KYC update of the branch's 120+ corporate clients single-handedly, making Laval the first branch of Crédit Agricole Anjou Maine to complete it

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>

Skills
======
* **Econometrics**: cointegration (Engle–Granger, Johansen), error-correction models, GARCH, mixed causal–noncausal VAR with α-stable innovations (GCov), panel local projections (Jordà) with Driscoll–Kraay inference
* **Risk and bubbles**: ΔCoVaR, TVP-VAR and quantile VAR connectedness (Diebold–Yilmaz), LPPLS bubble detection
* **Machine learning**: Random Forest, SVM, Gaussian Mixture Models, genetic algorithms
* **Portfolio construction**: Markowitz optimisation, tracking-error minimisation, Maximally Machine Learnable Portfolio
* **Programming**: Python, VBA, R, Stata, MATLAB, WinRATS, SQL
* **Market data**: Bloomberg (certified), Reuters

Languages
======
* French (native), English (fluent), Spanish (fluent), Polish (basic)
