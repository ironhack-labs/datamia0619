-------------------Challenge 1
select
  au_id as "Author ID",
  au_fname as "First Name",
  au_lname as "Last Name",
  sum(advance + ROYALTIES) as PROFITS
from
  (
    select
      title_id,
      au_id,
      au_lname,
      au_fname,
      advance,
      sum(ROYALTIES) as ROYALTIES
    from
      (
        select
          T.title_id,
          T.price,
          T.advance,
          T.royalty,
          S.qty,
          A.au_id,
          au_lname,
          au_fname,
          TA.royaltyper,
          (
            T.price * S.qty * T.royalty * TA.royaltyper / 10000
          ) as ROYALTIES
        from
          titles T
          inner join sales S on S.title_id = T.title_id
          inner join titleauthor TA on TA.title_id = S.title_id
          inner join authors A on A.au_id = TA.au_id
      ) as tmp
    group by
      au_id,
      title_id
  ) as tmp2
group by
  au_id
order by
  PROFITS desc
-------------------Challenge 2

CREATE TEMPORARY TABLE test
select
  au_id as "Author ID",
  au_fname as "First Name",
  au_lname as "Last Name",
  sum(advance + ROYALTIES) as PROFITS
from
  (
    select
      title_id,
      au_id,
      au_lname,
      au_fname,
      advance,
      sum(ROYALTIES) as ROYALTIES
    from
      (
        select
          T.title_id,
          T.price,
          T.advance,
          T.royalty,
          S.qty,
          A.au_id,
          au_lname,
          au_fname,
          TA.royaltyper,
          (
            T.price * S.qty * T.royalty * TA.royaltyper / 10000
          ) as ROYALTIES
        from
          titles T
          inner join sales S on S.title_id = T.title_id
          inner join titleauthor TA on TA.title_id = S.title_id
          inner join authors A on A.au_id = TA.au_id
      ) as tmp
    group by
      au_id,
      title_id
  ) as tmp2
group by
  au_id
order by
  PROFITS desc;
  
select *   from test;
-------------------Challenge 3
CREATE TABLE most_profiting_authors
select
  au_id as "Author ID",
  sum(advance + ROYALTIES) as PROFITS
from
  (
    select
      title_id,
      au_id,
      advance,
      sum(ROYALTIES) as ROYALTIES
    from
      (
        select
          T.title_id,
          T.price,
          T.advance,
          T.royalty,
          S.qty,
          A.au_id,
          TA.royaltyper,
          (
            T.price * S.qty * T.royalty * TA.royaltyper / 10000
          ) as ROYALTIES
        from
          titles T
          inner join sales S on S.title_id = T.title_id
          inner join titleauthor TA on TA.title_id = S.title_id
          inner join authors A on A.au_id = TA.au_id
      ) as tmp
    group by
      au_id,
      title_id
  ) as tmp2
group by
  au_id
order by
  PROFITS desc;
  
select *  from most_profiting_authors;

