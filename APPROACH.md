# APPROACH

### Session 01

**Mon 1 Jul 2019 12:23 - Mon 1 Jul 2019 13:07**

**To do**

- Initialise project (readme, approach)
- Read the spec
- Install timer widget
- Detail readme with spec
- Set up testing environment
 - Rspec, coverage, linter
- Initial commit

**Done**

- Initialise project (readme, approach)
- Read the spec
- Install timer widget
- Detail readme with spec
- Set up testing environment
 - Rspec, linter
 ```
 bundle init
 ```
Add rspec to gemfile
```
 bundle
 rspec init
 ```
 - Researched linter for a second, chose rubocop. They recommend using a specific version in the gemfile
 to prevent updates causing backward compatibility issues:
 ```
 gem 'rubocop', '~> 0.72.0', require: false
 ```
 - Ran bundle then:
 ```
rubocop
 ```
 to check it works and then:
 ```
ruboocop -a
 ```
 to see how many offences it could automatically fix.

 - Included simplecov in gemfile, looked for a way to format it nicely and realised it might do that auto. Will find out when a test is written.
- Made a .gitignore and added the coverage/ folder to it.
- Initial commit: added new github repo as remote origin, pushed commit

### Session 02

**Mon 1 Jul 2019 13:19 - Mon  1 Jul 2019 14:12**

**To do**
- Write user stories
- Model the user experience

**Done**
- Wrote user story one
- Wrote user story two
- Wrote user story three
- Asked coach to clarify the requirements about storage in memory
- Modelled user story one

### Session 3

**Mon 1 Jul 2019 14:14**

**To do**
- Model user story two and three
- Test story one

**Done**
- Modelled user stories and added them to readme
- Wrote a test for bank class
  - Created Bank file with class
  - Required Bank file in spec helper


- Test for deposit method
  - Created deposit method
  - Tested in terminal:

  ```
  $ irb -r ./Bank.rb
  2.6.0 :001 > Bank.deposit(1)
   => "You deposited 1"
  ```
- Updated models to reflect method change
- Commit
