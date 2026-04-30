library(SchoolDataIT)



#Leftmap
Map_School_Buildings(data=DB25_MIUR_prov,
                     field="Urban_public_transport",
                     input_shp=Prov22_shp,level="NUTS-3",
                     order="High",plot="mapview",
                     InnerAreas=FALSE)
# Rightmap
Map_School_Buildings(data=DB25_MIUR_mun,
                     field="Urban_public_transport",
                     input_shp=Mun22_shp,level="LAU",
                     order="High",region_code=16,
                     plot="mapview",InnerAreas=FALSE)

dd_ITA <- dplyr::left_join(Mun22_shp, ITA_10, by = c("PRO_COM_T" = "Municipality_code"))

Invalsi_A_ITA <- dd %>%
  dplyr::filter(!is.na(.data$M_Italian))

Invalsi_NA_ITA <- dd %>%
  dplyr::filter(is.na(.data$M_Italian)) %>%
  dplyr::summarise(geometry = sf::st_union(geometry))

dd_MAT <- dplyr::left_join(Mun22_shp, MAT_10, by = c("PRO_COM_T" = "Municipality_code"))

Invalsi_A_MAT <- dd_MAT %>%
  dplyr::filter(!is.na(.data$M_Mathematics))

Invalsi_NA_MAT <- dd_MAT %>%
  dplyr::filter(is.na(.data$M_Mathematics)) %>%
  dplyr::summarise(geometry = sf::st_union(geometry))

pal <- viridisLite::viridis(20, option = "G", begin = 0.15, end = 1)
mapview::mapview(
  Invalsi_NA_ITA, col.regions = "white",
  map.types = "CartoDB.Positron",
  legend = FALSE, layer.name = "No data") +
  mapview::mapview(
    Invalsi_A, zcol = "M_Italian",
    col.regions = pal,
    at = seq(125, 240, length.out = 20),
    map.types = "CartoDB.Positron",
    layer.name = "Italian score")





library(DT)
library(tibble)
library(htmltools)

res_tbl <- tribble(
  ~Variable,          ~Subj, ~Base_mean, ~Base_sd, ~Base_Q025, ~Base_Q975, ~S2_mean, ~S2_sd, ~S2_Q025, ~S2_Q975,
  "Continent",        "MAT", 191.399,    0.961,    189.515,    193.285,    193.332,  0.855,  191.656,  195.009,
  "Continent",        "ITA", 187.107,    0.999,    185.137,    189.056,    188.585,  0.863,  186.886,  190.270,
  "Sicily",           "MAT", 177.764,    1.496,    174.829,    180.698,    178.386,  1.369,  175.702,  181.070,
  "Sicily",           "ITA", 176.884,    1.550,    173.835,    179.915,    177.273,  1.417,  174.489,  180.046,
  "Sardinia",         "MAT", 174.325,    2.197,    170.017,    178.634,    174.561,  2.159,  170.327,  178.795,
  "Sardinia",         "ITA", 171.914,    2.267,    167.460,    176.351,    172.126,  2.208,  167.790,  176.450,
  "Central",          "MAT",   2.706,    0.910,      0.922,      4.490,      2.527,  0.890,    0.781,    4.273,
  "Central",          "ITA",   2.379,    0.996,      0.433,      4.338,      2.460,  0.979,    0.547,    4.386,
  "Peripheral",       "MAT",  -2.200,    1.005,     -4.171,     -0.228,     -2.018,  0.958,   -3.897,   -0.139,
  "Peripheral",       "ITA",  -1.845,    1.049,     -3.901,      0.215,     -1.793,  1.000,   -3.753,    0.170,
  "UBB Activation",   "MAT",   3.331,    1.074,      1.226,      5.437,      3.262,  1.049,    1.205,    5.319,
  "UBB Activation",   "ITA",   2.296,    1.126,      0.090,      4.509,      2.130,  1.100,   -0.024,    4.291,
  "Urban transport",  "MAT",   2.466,    1.043,      0.420,      4.513,      2.501,  1.044,    0.453,    4.549,
  "Urban transport",  "ITA",   2.841,    1.060,      0.765,      4.924,      2.838,  1.060,    0.762,    4.919
)

sketch <- htmltools::withTags(
  table(
    class = "display",
    thead(
      tr(
        th(rowspan = 2, "Variable"),
        th(rowspan = 2, "Subj"),
        th(colspan = 4, "Base model"),
        th(colspan = 4, "S+(2)")
      ),
      tr(
        th("mean"),
        th("sd"),
        th("Q0.025"),
        th("Q0.975"),
        th("mean"),
        th("sd"),
        th("Q0.025"),
        th("Q0.975")
      )
    )
  )
)

DT::datatable(
  res_tbl,
  rownames = FALSE,
  container = sketch,
  class = "compact stripe hover",
  options = list(
    dom = "t",
    paging = FALSE,
    searching = FALSE,
    info = FALSE,
    ordering = FALSE,
    scrollY = "300px",
    scrollX = TRUE,
    scrollCollapse = TRUE,
    autoWidth = TRUE
  )
)