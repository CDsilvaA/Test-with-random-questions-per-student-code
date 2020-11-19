# Authors: ARCE, Cherlynn Daniela da Silva <cdnsprado at gmail dot com>
#          PRADO, Thiago Roberto do <trprado at outlook dot com>
# Supervisiors: MUNARI, Danisio Prado
#               OLIVEIRA, Henrique Nunes de           
# Create: 2020-06-23
# Last-Modified: 2020-06-23
# License: GPLv3
#
# Create file with .md extension that is a test for each student in a class
#
# The test's questions need to be written with latex or markdown languages
#


# Directory
setwd("\home\Directory")


# Test's questions
q1 <-
  "This is an example of a question. If one wants to use math form, it can be like: $\\sigma=0,80$. For add double new line use \n\n. For tables one can use a table generator that are easily found online \n\n"
q2<-
  "Another example \n\n"


# Join all the questions into an object
qs <-
  c(q1,
    q2
)

# Student ID object
id <- c(
  200000001,
  200000002
)

# Some information's about the test, for example: Student name, date, and orientations of the test
instr <-
  "**Name:**\n\n**Sign:**\n\n**Date: 0000.00.00**\n\n**Instructions:**\n\n\t*Total time to resolve the test: 3 hours; \n\n\t*All the resolution's papers must be signed. \n\n"

# Randomize the questions for each student (in this case 4 questions for each student) and create the markdown files
# If one desire to change the number of questions in a test, just change the number of samples
questions <- NULL
for (i in 1:length(id)) {
  test <-
    paste(paste("# Test 1 - Genetics", " ID-", id[i], sep = ""),
          instr,
          sep = "\n")
  questions <- sample(qs, 4)
  for (j in 1:length(questions)) {
    test <- paste(test, paste(j, ") ", questions[j], sep = ""), sep = "\n")
  }
  print(test)
  fileName <- paste("ID-", id[i], ".md", sep = "")
  writeLines(test, fileName)
  test <- NULL
  print(i)
}

# After the creation of the files, use Pandoc or another software to create the pdf files

