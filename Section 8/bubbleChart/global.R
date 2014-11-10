# lookup tables: indicator code <-> indicator name
# Both UI.R and server.R will use them so we leave them here in global.R

# from code to name
codeToName <- c(
  AG.LND.AGRI.ZS = "Agricultural land (% of land area)",
  AG.PRD.CREL.MT = "Cereal production (metric tons)",
  AG.YLD.CREL.KG = "Cereal yield (kg per hectare)",
  EG.IMP.CONS.ZS = "Energy imports, net (% of energy use)",
  EG.USE.COMM.FO.ZS = "Fossil fuel energy consumption (% of total)",
  EG.USE.ELEC.KH.PC = "Electric power consumption (kWh per capita)",
  EN.ATM.CO2E.PC = "CO2 emissions (metric tons per capita)",
  EN.URB.LCTY.UR.ZS = "Population in the largest city (% of urban population)",
  FI.RES.TOTL.CD = "Total reserves (includes gold, current US$)",
  GDPPCKD = "GDP per Capita, constant US$, millions",
  MS.MIL.MPRT.KD = "Arms imports (constant 1990 US$)",
  NY.GDP.PCAP.CD = "GDP per capita (current US$)",
  SH.DYN.MORT = "Mortality rate, under-5 (per 1,000 live births)",
  SP.DYN.TFRT.IN = "Fertility rate, total (births per woman)",
  SP.POP.DPND = "Age dependency ratio (% of working-age population)",
  SP.POP.TOTL = "Population, total",
  SP.URB.TOTL.IN.ZS = "Urban population (% of total)",
  TX.VAL.MRCH.CD.WT = "Merchandise exports (current US$)"
)

# from name to code
nameToCode <- names(codeToName)
names(nameToCode) <- codeToName