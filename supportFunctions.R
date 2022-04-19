# Recast each standard row to a mini data frame
recastRow <- function(someRow){
  row1 <- as.character(rep(someRow["Standard"], 3))
  row2 <- as.character(rep(someRow["Clarification Statement"], 3))
  row3 <- as.character(rep(someRow["Assessment Boundary"], 3))
  row4 <- c("Science and Engineering Practice", "Disciplinary Core Idea",
            "Crosscutting Concepts")
  row5 <- as.character(c(someRow["Science and Engineering Practice"], someRow["Disciplinary Core Idea"],
                         someRow["Crosscutting Concepts"]))

  out <- as.data.frame(rbind(row1, row2, row3, row4, row5))
  rownames(out) <- NULL
  return(out)
}