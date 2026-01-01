schedule(monday, programming).
schedule(tuesday, math).
schedule(tuesday, english).
schedule(wednesday, programming).
schedule(wednesday, spanish).
schedule(thursday, circuits).
schedule(friday, none).

difficulty(programming, hard).
difficulty(math, hard).
difficulty(english, easy).
difficulty(spanish, medium).
difficulty(circuits, hard).

classinformation(Day, Class, Diff) :-
    schedule(Day, Class),
    difficulty(Class, Diff).

% Now run the following Queries to check the results
%
% 1. schedule(monday,programming).
% 2. schedule(monday, english).
% 3. difficulty( programming, easy).
% 4. difficulty(programming, hard).
% 5. classinformation(tuesday, Class, Diff).
% 6. classinformation(tuesday, Class, easy).
% 7. classinformation(Day, Class, hard).
% 8. classinformation(Day, english, hard).
% 9. classinformation(Day, english, easy).