# Recast each standard row to a mini data frame
recastRow_Grade2 <- function(someRow){
  row1 <- as.character(rep(someRow["Standard Code"],21))
  row2 <- as.character(rep(someRow["Domain"],21))
  row3 <- as.character(rep(someRow["Core Idea"],21))
  row4 <- as.character(rep(someRow["PE"],21))
  row5 <- as.character(rep(someRow["CS"],21))
  row6 <- as.character(rep(someRow["AB"],21))
  row7 <- as.character(c(rep("Science and Engineering Practices (SEP)",7),
                         rep("Key Practices (KP)",7),
                         rep("Crosscutting Concepts (CCC)",7)))
  row8 <- as.character(c(rep(someRow["SEP"],7),
                         rep(someRow["DCI"],7),
                         rep(someRow["CCC"],7)))
  # if(length(unique(row8)) < 3) {
  #   stop('Row with non-distinct SEP/DCI/CCC values found')
  # }
  row9 <- as.character(rep(someRow["PA Context"],21))
  row10 <- as.character(rep(someRow["PA Career Ready Skills"],21))
  row11 <- as.character(rep("Connections to Other Standards Content and Domains", 21))
  row12 <- as.character(c(rep(someRow["AFNR"],3),
                          rep(someRow["ISTE"],3),
                          rep(someRow["ELA"],3),
                          rep(someRow["NAAEE"],3),
                          rep(someRow["Math"],3),
                          rep(someRow["Social Studies"],3),
                          rep(someRow["ITEEA"],3)))
  row13 <- as.character(c(rep(someRow["AFNR"],3),
                         rep(someRow["ISTE"],3),
                         rep(someRow["ELA"],3),
                         rep(someRow["NAAEE"],3),
                         rep(someRow["Math"],3),
                         rep(someRow["Social Studies"],3),
                         rep(someRow["ITEEA"],3)))
  #' if(length(unique(row13)) < 7) {
  #'   stop(someRow['Standard Code'])
  #'        #'Row with non-distinct AFNR/ISTE/ELA/NAAEE/Math/Social Studies/ITEEA values found')
  #}

  out <- as.data.frame(rbind(row1, row2, row3, row4, row5, row6, row7, row8, row9, row10, row11, row12, row13))
  rownames(out) <- NULL
  return(out)
}

