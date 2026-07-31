# `tags` must be a character vector or NULL

    Code
      show_pride(tags = TRUE)
    Condition
      Error in `show_pride()`:
      ! Assertion on 'tags' failed: Must be of type 'character' (or 'NULL'), not 'logical'.

---

    Code
      show_pride(tags = 156L)
    Condition
      Error in `show_pride()`:
      ! Assertion on 'tags' failed: Must be of type 'character' (or 'NULL'), not 'integer'.

---

    Code
      show_pride(tags = list("string"))
    Condition
      Error in `show_pride()`:
      ! Assertion on 'tags' failed: Must be of type 'character' (or 'NULL'), not 'list'.

---

    Code
      show_pride(tags = c("string", NA))
    Condition
      Error in `show_pride()`:
      ! Assertion on 'tags' failed: Contains missing values (element 2).

# `sizes` must be an integerish vector or NULL

    Code
      show_pride(sizes = TRUE)
    Condition
      Error in `show_pride()`:
      ! Assertion on 'sizes' failed: Must be of type 'integerish' (or 'NULL'), not 'logical'.

---

    Code
      show_pride(sizes = "string")
    Condition
      Error in `show_pride()`:
      ! Assertion on 'sizes' failed: Must be of type 'integerish' (or 'NULL'), not 'character'.

---

    Code
      show_pride(sizes = list(156L))
    Condition
      Error in `show_pride()`:
      ! Assertion on 'sizes' failed: Must be of type 'integerish' (or 'NULL'), not 'list'.

---

    Code
      show_pride(sizes = c(156L, NA))
    Condition
      Error in `show_pride()`:
      ! Assertion on 'sizes' failed: Contains missing values (element 2).

---

    Code
      show_pride(sizes = -Inf)
    Condition
      Error in `show_pride()`:
      ! Assertion on 'sizes' failed: Must be of type 'integerish', but element 1 is not in integer range.

---

    Code
      show_pride(sizes = 0L)
    Condition
      Error in `show_pride()`:
      ! Assertion on 'sizes' failed: Element 1 is not >= 1.

