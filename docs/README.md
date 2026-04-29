## Here is the repo of my doctoral thesis

This doctoral thesis investigates territorial disparities in Italy through Bayesian statistical inference,
covering two two applied domains, education and assistance to violence against women.
These case studies are motivated by the need for granular and uncertainty-aware evidence to support territorial planning and policy-making.

On the methodology side, the thesis adopts hierarchical areal models including conditional autoregressive priors, 
considering the municipal partitioning of Italy as an irregular discrete spatial domain. 
Inference is carried out primarily through the Integrated Nested Laplace Approximation (INLA).

On the application side, the first original research work covered herein consists of an exploratory analysis of 
the Italian school system data, facilitated by the implementation of an open and reproducible data infrastructure
integrated in the \texttt{SchoolDataIT} R package,
which downloads and harmonises information from multiple data sources and is available on CRAN.

The second research work studies the relationship between the students' abilities in the second year of high school,
measured by INVALSI scores, and the infrastructural endowment in Italian municipalities. 
We employ an intrinsic conditional autoregressive latent model, defined alternatively at a higher aggregation level, 
and find that alongside a significant association with infrastructural indicators chosen as explanatory variables,
spatially structured latent effects are still necessary to explain the variability of student outcomes across municipalities.

The third research work analyses the access to local anti-violence centres in Apulia in 2021--2024 by spatio-temporal Poisson regression,
proposing a joint penalised complexity prior construction for all the models employed. 
Results suggest the presence of spatial constraints in seeking help from anti-violence centres,
with access declining as distance from anti-violence centres increases; 
in addition, lower education levels may also contribute to under-reporting in disadvantaged areas,
while higher economic development may be associated with lower incidence of reported violence.

Overall, this thesis shows how Bayesian spatial modelling can be useful to quantify uncertainty, stabilise inference in sparse territorial settings, and suggest policy-relevant insights on territorial inequalities in Italy. 

The thesis is done and I am going to publish it on IRIS as soon as possible; once a link exists I will paste it here.

What should be a little bit more interesting is presenting it. So, [here](https://lcef97.github.io/PhD_Thesis/#) is a link to my slides. Let us hope it works.