# `name` must be a single non-null string

    Code
      palette_lgbtq(name = TRUE)
    Condition
      Error in `palette_lgbtq()`:
      ! Assertion on 'name' failed: Must be of type 'string', not 'logical'.

---

    Code
      palette_lgbtq(name = 156L)
    Condition
      Error in `palette_lgbtq()`:
      ! Assertion on 'name' failed: Must be of type 'string', not 'integer'.

---

    Code
      palette_lgbtq(name = list("string"))
    Condition
      Error in `palette_lgbtq()`:
      ! Assertion on 'name' failed: Must be of type 'string', not 'list'.

---

    Code
      palette_lgbtq(name = c("string", "second"))
    Condition
      Error in `palette_lgbtq()`:
      ! Assertion on 'name' failed: Must have length 1.

---

    Code
      palette_lgbtq(name = character(0))
    Condition
      Error in `palette_lgbtq()`:
      ! Assertion on 'name' failed: Must have length 1.

---

    Code
      palette_lgbtq(name = NA_character_)
    Condition
      Error in `palette_lgbtq()`:
      ! Assertion on 'name' failed: May not be NA.

---

    Code
      palette_lgbtq(name = NULL)
    Condition
      Error in `palette_lgbtq()`:
      ! Assertion on 'name' failed: Must be of type 'string', not 'NULL'.

# `name` must be one of existing palette names

    Code
      palette_lgbtq("non-existent")
    Condition
      Error:
      ! Palette 'non-existent' not recognized as lgbthue palette.

