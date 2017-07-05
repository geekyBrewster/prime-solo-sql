-- 1. Get all users from Chicago
SELECT "username" FROM "syntax_practice"
WHERE "city" = 'chicago';

-- 2. Get all users w/ usernames that contain the letter 'a'
SELECT "username" FROM "syntax_practice"
WHERE "username" LIKE '%a%';

-- 3. Update all records w/ acct_bal of 0 & trans_attemp of 0 -- acct balance = 10.00
UPDATE "syntax_practice"
SET "account_balance" = 10.00
WHERE ("account_balance" = 0 AND "transactions_attempted" = 0);

-- 4. Select all users that have attempted 9 or more transactions
SELECT * FROM "syntax_practice"
WHERE "transactions_attempted" >= 9;

-- 5. Get username & acct_bal of the 3 users w/ the highest balances, sorted highest to lowest balance
SELECT "username", "account_balance" FROM "syntax_practice"
ORDER BY "account_balance" DESC LIMIT 3;

-- 6.Get username & acct_bal of the 3 users w/ the lowest balances, sorted lowest to highest balance.
SELECT "username", "account_balance" FROM "syntax_practice"
ORDER BY "account_balance" ASC LIMIT 3;

-- 7. Get all users w/ acct_bal > $100
SELECT * FROM "syntax_practice"
WHERE "account_balance" > 100;

-- 8. Add a new record
INSERT INTO "syntax_practice" ("username", "city", "transactions_completed", "transactions_attempted", "account_balance")
VALUES ('tony', 'santa monica', 75, 89, 15000000.75);

-- 9. Delete users that reside in miami or phoenix & have < 5 transactions
DELETE FROM "syntax_practice"
WHERE ("city" = 'miami' AND "transactions_completed" < 5)
OR ("city" = 'phoenix' AND "transactions_completed" < 5);
