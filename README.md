# BANK TECH TEST

#### This practice session is about producing the best code I can when there is a minimal time pressure.

#### I'll get to practice my OO design and TDD skills.

---

### Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
---

## User stories

**One**

```
As a client,
so I can keep my money safe,
I would like to make a deposit
```
![one](./images/user_story_one.png)

**Two**
```
As a client,
so I can use my money,
I would like to make a withdrawal
```
![two](./images/user_story_two.png)

**Three**
```
As a client,
so I know what transactions I have made and when and how much money I currently have stored,
I would like to see a table of deposits, withdrawals, and balance.
```
![three](./images/user_story_three.png)
