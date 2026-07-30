# TODO: Consider using httptest2::expect_no_request() because tests shouldn't connect to the internet
.expect_fails <- function(expr, param, value) {
  # This mock fixes issue where rlang::expr_deparse() would print vectors in angle brackets <>
  #  which made expression execution fail
  testthat::local_mocked_bindings(
    expr_deparse = function(x, ...) { deparse(x) },
    .package = "testthat"
  )

  call <- rlang::call_modify(expr, "{param}" := value)
  rlang::inject(
    testthat::expect_snapshot(
      !!call,
      # TODO: Decide what the default should be and whether to allow configuration
      cran = TRUE,
      error = TRUE
    )
  )
}

# Scalar tests ----
needs_flag <- function(param, expr, ..., na_ok = FALSE, null_ok = FALSE) {
  ellipsis::check_dots_empty()

  expr <- rlang::enexpr(expr)
  expr <- rlang::call_match(
    call = expr,
    fn = get(rlang::call_name(expr))
  )

  .expect_fails(expr, param, 156L)
  .expect_fails(expr, param, "TRUE")
  .expect_fails(expr, param, list("TRUE"))

  if (!na_ok) {
    .expect_fails(expr, param, NA)
  }

  if (!null_ok) {
    .expect_fails(expr, param, NULL)
  }
}

needs_int <- function(param, expr, ..., na_ok = FALSE, lower = -Inf, upper = Inf, null_ok = FALSE) {
  ellipsis::check_dots_empty()

  expr <- rlang::enexpr(expr)
  expr <- rlang::call_match(
    call = expr,
    fn = get(rlang::call_name(expr))
  )

  .expect_fails(expr, param, TRUE)
  .expect_fails(expr, param, "156")
  .expect_fails(expr, param, list(156L))
  .expect_fails(expr, param, 15.6)

  if (!na_ok) {
    .expect_fails(expr, param, NA_integer_)
  }

  if (lower > -Inf) {
    .expect_fails(expr, param, -Inf)
    .expect_fails(expr, param, lower - 1L)
  }

  if (upper < Inf) {
    .expect_fails(expr, param, Inf)
    .expect_fails(expr, param, upper + 1L)
  }

  if (!null_ok) {
    .expect_fails(expr, param, NULL)
  }
}

needs_string <- function(param, expr, ..., na_ok = FALSE, n_chars = NULL, min_chars = NULL, max_chars = NULL, null_ok = FALSE) {
  ellipsis::check_dots_empty()

  expr <- rlang::enexpr(expr)
  expr <- rlang::call_match(
    call = expr,
    fn = get(rlang::call_name(expr))
  )

  .expect_fails(expr, param, TRUE)
  .expect_fails(expr, param, 156L)
  .expect_fails(expr, param, list("string"))

  if (!na_ok) {
    .expect_fails(expr, param, NA_character_)
  }

  if (!is.null(n_chars)) {
    .expect_fails(
      expr, param,
      paste0(
        rep("x", times = n_chars - 1L),
        collapse = ""
      )
    )
    .expect_fails(
      expr, param,
      paste0(
        rep("x", times = n_chars + 1L),
        collapse = ""
      )
    )
  }

  if (!is.null(min_chars) && min_chars > 0L) {
    .expect_fails(expr, param, "")
    .expect_fails(
      expr, param,
      paste0(
        rep("x", times = min_chars - 1L),
        collapse = ""
      )
    )
  }

  if (!is.null(max_chars)) {
    .expect_fails(
      expr, param,
      paste0(
        rep("x", times = max_chars + 1L),
        collapse = ""
      )
    )
  }

  if (!null_ok) {
    .expect_fails(expr, param, NULL)
  }
}

# Atomic tests ----
needs_character <- function(param, expr, ..., na_ok = FALSE, null_ok = FALSE, empty_ok = FALSE) {
  ellipsis::check_dots_empty()

  expr <- rlang::enexpr(expr)
  expr <- rlang::call_match(
    call = expr,
    fn = get(rlang::call_name(expr))
  )

  .expect_fails(expr, param, TRUE)
  .expect_fails(expr, param, 156L)
  .expect_fails(expr, param, list("string"))

  if (!na_ok) {
    .expect_fails(expr, param, NA_character_)
  }

  if (!null_ok) {
    .expect_fails(expr, param, NULL)
  }

  if (!empty_ok) {
    .expect_fails(expr, param, character())
  }
}
