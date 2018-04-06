dummyimage <- function(text,
                       width = 300,
                       height = 300,
                       units = "px",
                       bg = "#2165B6",
                       fg = "white",
                       font = "",
                       outputformat = "png") {
  # Verify colours are real
  if (!verifier(bg)) stop("Please supply a valid colour to bg")
  if (!verifier(fg)) stop("Please supply a valid colour to fg")

  # Process font so that it must load if not the default
  ### TODO ###

  # Check output format as we'll use grDevices functions for generation
  outputformat <- match.arg(outputformat, c("bmp", "png", "jpeg", "tiff"))
  outputfn <- match.fun(outputformat)

  # Create background for image
  starterimage <- outputfn(
    filename = tempfile(fileext = outputformat),
    width = width,
    height = height,
    units = units,
    bg = bg
  )

  return(starterimage)


}
