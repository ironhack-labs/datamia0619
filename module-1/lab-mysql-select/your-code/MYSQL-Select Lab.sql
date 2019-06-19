-----------------------------------------------------1
select
  A.au_id as "Author ID",
  au_fname as "First Name",
  au_lname as "Last Name",
  T.title as "Title",
  P.pub_name as "Publisher"
from
  authors A
  inner join titleauthor TA on A.au_id = TA.au_id
  inner join titles T on TA.title_id = T.title_id
  inner join publishers P on T.pub_id = P.pub_id
order by
  P.pub_name ASC;
-----------------------------------------------------2
select
  A.au_id as "Author ID",
  au_fname as "First Name",
  au_lname as "Last Name",
  count(T.title_id) as "Total Titles",
  P.pub_name as "Publisher"
from
  authors A
  inner join titleauthor TA on A.au_id = TA.au_id
  inner join titles T on TA.title_id = T.title_id
  inner join publishers P on T.pub_id = P.pub_id
group by
  A.au_id,
  P.pub_id
order by 
  count(T.title_id) desc;
-----------------------------------------------------3
select
  A.au_id as "Author ID",
  au_fname as "First Name",
  au_lname as "Last Name",
  sum(S.qty) as TOTAL
from
  authors A
  inner join titleauthor TA on TA.au_id = A.au_id
  inner join titles T on T.title_id = TA.title_id
  inner join sales S on S.title_id = T.title_id
group by
  A.au_id
order by
  TOTAL desc
limit
  3
-----------------------------------------------------4
select
  A.au_id as "Author ID",
  au_fname as "First Name",
  au_lname as "Last Name",
  COALESCE(sum(S.qty), 0) as TOTAL
from
  authors A
  left join titleauthor TA on TA.au_id = A.au_id
  left join titles T on T.title_id = TA.title_id
  left join sales S on S.title_id = T.title_id
group by
  A.au_id
order by
  TOTAL desc;
-----------------------------------------------------Bonus
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
limit
  3

