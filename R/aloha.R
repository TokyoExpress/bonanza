say_aloha <- function(name, print = TRUE) {

  message <- paste("Welcome to the package, ",
                   name, "!", sep = "")

  if (print) {
    cat(crayon::bgBlue$white(message))
  }

  invisible(message)
}
