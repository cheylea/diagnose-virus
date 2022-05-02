# Brief

Develop a simple expert system in Prolog SWI which accepts information about a patient in terms of: symptoms, bio data, and/or history of events in the last few days, and diagnoses the possible presence or absence of the virus infection.

# Diagnosing the Virus
This app is a diagnosing tool that can be used to predict the likelihood of a user having a virus based on symptoms, bio data and recent history.

The functionality is as follows:
* Load the file into a Prolog environment
* Run the diagnosis program
* Output a predication and related advice on next action.

## Prerequisites
The file uses Prolog. It is recommended to use [SWI-Prolog](https://www.swi-prolog.org/build/) to run the code.

## Directory
The below directory shows the files in this project.
```
C:.
├───brief.md
├───LICENSE
├───README.md
└───virus.pl
```

## Installation
Once the environment is open, ensure it is navigated to the location of the file.

Enter the following into the window.

```pl
?- [virus].
```

## Using the file
Run the file by entering the following:

```pl
?- diagnose.
```
The window will begin asking questions about the condition of the user. Answer the questions by answering either `y.` for yes or `n.` for no.

## Interpreting Results
The file will provide an assessment of the likelihood that the user has contracted the virus, alongside some advice based on rick factors provided by the user.

### Example Result:

```bash
It is highly likely that you have contracted the virus
Advice: 
You have severe symptoms, please seek medical attention immediately.
```

## Design
The program scores each question based on the answer and ranks each result based on specified thresholds.