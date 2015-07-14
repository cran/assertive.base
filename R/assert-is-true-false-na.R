#' @rdname Truth
#' @export
assert_all_are_false <- function(x)
{                                                     
  msg <- gettextf("The values of %s are not all FALSE.", get_name_in_parent(x))
  assert_engine(is_false, x, msg = msg)        
}

#' @rdname Truth
#' @export
assert_any_are_false <- function(x)
{                                                     
  msg <- gettextf("The values of %s are never FALSE.", get_name_in_parent(x))
  assert_engine(is_false, x, msg = msg, what = "any")        
}
#' @rdname Truth
#' @export
assert_all_are_na <- function(x)
{                                                     
  msg <- gettextf("The values of %s are not all NA.", get_name_in_parent(x))
  assert_engine(is_na, x, msg = msg)        
}

#' @rdname Truth
#' @export
assert_any_are_na <- function(x)
{                                                     
  msg <- gettextf("The values of %s are never NA.", get_name_in_parent(x))
  assert_engine(is_na, x, msg = msg, what = "any")        
}

#' @rdname Truth
#' @export
assert_all_are_true <- function(x)
{                                                     
  msg <- gettextf("The values of %s are not all TRUE.", get_name_in_parent(x))
  assert_engine(is_true, x, msg = msg)        
}

#' @rdname Truth
#' @export
assert_any_are_true <- function(x)
{                                                     
  msg <- gettextf("The values of %s are never TRUE.", get_name_in_parent(x))
  assert_engine(is_true, x, msg = msg, what = "any")        
}

# Negations

#' @rdname Truth
#' @export
assert_all_are_not_false <- function(x)
{                                                      
  msg <- gettextf("The values of %s are sometimes FALSE.", get_name_in_parent(x))
  assert_engine(is_not_false, x, msg = msg)
}

#' @rdname Truth
#' @export
assert_any_are_not_false <- function(x)
{                                                      
  msg <- gettextf("The values of %s are all FALSE.", get_name_in_parent(x))
  assert_engine(is_not_false, x, msg = msg, what = "any")
}

#' @rdname Truth
#' @export
assert_all_are_not_na <- function(x)
{                                                      
  msg <- gettextf("The values of %s are sometimes NA.", get_name_in_parent(x))
  assert_engine(is_not_na, x, msg = msg)
}

#' @rdname Truth
#' @export
assert_any_are_not_na <- function(x)
{                                                      
  msg <- gettextf("The values of %s are all NA.", get_name_in_parent(x))
  assert_engine(is_not_na, x, msg = msg, what = "any")
}

#' @rdname Truth
#' @export
assert_all_are_not_true <- function(x)
{                                                      
  msg <- gettextf("The values of %s are sometimes TRUE.", get_name_in_parent(x))
  assert_engine(is_not_true, x, msg = msg)
}

#' @rdname Truth
#' @export
assert_any_are_not_true <- function(x)
{                                                      
  msg <- gettextf("The values of %s are all TRUE.", get_name_in_parent(x))
  assert_engine(is_not_true, x, msg = msg, what = "any")
}