## Here is the repo of my doctoral thesis


#### Overview

This doctoral thesis investigates territorial disparities in Italy through Bayesian statistical inference,
covering two two applied domains, education and assistance to violence against women.
These case studies are motivated by the need for granular and uncertainty-aware evidence to support territorial planning and policy-making.

On the methodology side, the thesis adopts hierarchical areal models including conditional autoregressive priors, 
considering the municipal partitioning of Italy as an irregular discrete spatial domain. 
Inference is carried out primarily through the [Integrated Nested Laplace Approximation or INLA](https://www.r-inla.org/) 

On the application side, the first original research work covered herein consists of an exploratory analysis of 
the Italian school system data, facilitated by the implementation of an open and reproducible data infrastructure
integrated in the [`SchoolDataIT`]( https://CRAN.R-project.org/package=SchoolDataIT ) R package [(GitHub version)](https://github.com/lcef97/SchoolDataIT)
which downloads and harmonises information from multiple data sources and is available on CRAN.

The second research work studies the relationship between the students' abilities in the second year of high school,
measured with INVALSI scores, and the infrastructural endowment in Italian municipalities, 
by means of multilevel Bayesian regression including an intrinsic CAR latent effect, 
finding a significant association with infrastructural indicators.

The third research work analyses the access to local anti-violence centres in Apulia in 2021--2024 by spatio-temporal Poisson regression,
proposing a joint penalised complexity prior construction. 
Results suggest the presence of spatial constraints in seeking help from anti-violence centres,
with access declining as distance from anti-violence centres increases. [R codes for this work and more slides here](https://github.com/lcef97/CAV_Puglia).

Overall, this thesis shows how Bayesian spatial modelling can be useful to quantify uncertainty, 
stabilise inference in sparse territorial settings, and suggest policy-relevant insights
on territorial inequalities in Italy. 

#### Presentation


[Here is a link to the presentation slides](https://lcef97.github.io/PhD_Thesis/#) in `.html` format, to be updated periodically.

The thesis is to be discussed on May 13th 2026. After such a date, these slides are not
of much interest.

Also, the thesis should be published somewhere open access. I will post a link as soon as it will.
Before then, you can read it [here](https://github.com/lcef97/PhD_Thesis/blob/main/docs/Doctoral_Thesis_LC.pdf)
- not sure if the link actually works...
If so, and if for any reason the contents of this thesis are of some use besides the two research papers it already embeds, 
please cite it. 