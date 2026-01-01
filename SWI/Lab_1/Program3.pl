% Restaurant facts: cuisine(type, name)
cuisine(italian, marios).
cuisine(italian, pasta_paradise).
cuisine(mexican, taco_fiesta).
cuisine(mexican, chili_beans).
cuisine(indian, spice_route).
cuisine(japanese, sushi_zen).
cuisine(japanese, wasabi_world).
cuisine(burger, burger_kingdom).

% Price level facts: price(restaurant, level)
price(marios, expensive).
price(pasta_paradise, moderate).
price(taco_fiesta, cheap).
price(chili_beans, moderate).
price(spice_route, expensive).
price(sushi_zen, expensive).
price(wasabi_world, moderate).
price(burger_kingdom, cheap).

% Location facts: location(restaurant, area)
location(marios, downtown).
location(pasta_paradise, uptown).
location(taco_fiesta, downtown).
location(chili_beans, midtown).
location(spice_route, downtown).
location(sushi_zen, uptown).
location(wasabi_world, downtown).
location(burger_kingdom, midtown).

% Rating facts: rating(restaurant, stars)
rating(marios, 4).
rating(pasta_paradise, 3).
rating(taco_fiesta, 5).
rating(chili_beans, 4).
rating(spice_route, 5).
rating(sushi_zen, 4).
rating(wasabi_world, 3).
rating(burger_kingdom, 4).

% Combined information rule
restaurantinfo(Name, Cuisine, Price, Area, Stars) :-
    cuisine(Cuisine, Name),
    price(Name, Price),
    location(Name, Area),
    rating(Name, Stars).

% SOLVE THESE FOLLOWING PROBLEMS:
%
% 1. cuisine(italian, marios).
% 2. cuisine(chinese, spice_route).
% 3. price(sushi_zen, expensive).
% 4. price(taco_fiesta, expensive).
% 5. location(pasta_paradise, downtown).
% 6. cuisine(italian, Restaurant). (Find all Italian restaurants)
% 7. price(Restaurant, cheap). (Find all cheap restaurants)
% 8. location(Restaurant, downtown). (Find downtown restaurants)
% 9. rating(Restaurant, 5). (Find 5-star restaurants)
% 10. restaurantinfo(Name, mexican, Price, Area, Stars). (All Mexican restaurants with details)
% 11. restaurantinfo(Name, Cuisine, expensive, downtown, Stars). (Expensive downtown
% restaurants)
% 12. restaurantinfo(Name, japanese, Price, Area, 4). (4-star Japanese restaurants)
% 13. restaurantinfo(taco_fiesta, Cuisine, Price, Area, Stars). (All info about taco_fiesta)
% 14. cuisine(Cuisine, Name), price(Name, cheap). (Find cuisine types with cheap options)
% 15. restaurantinfo(Name, Cuisine, moderate, downtown, Rating), Rating > 3. (Moderately
% priced downtown restaurants with rating > 3)
% 16. location(Name, uptown), rating(Name, Stars), Stars >= 4. (Uptown restaurants with 4+
% stars)
% 17. restaurantinfo(Name, italian, Price, Area, Stars), (Price = cheap ; Price = moderate).
% (Italian restaurants that are cheap OR moderate)
% 18. restaurantinfo(Name, _, expensive, _, 5). (5-star expensive restaurants of any cuisine)
% 19. restaurantinfo(Name, Cuisine, _, downtown, _), Cuisine \= italian. (Non-Italian
% downtown restaurants) [Note: \= means "not equal to"]
% 20. restaurantinfo(_, mexican, cheap, _, 4). (Check if there's a cheap Mexican restaurant
% with 4 stars)