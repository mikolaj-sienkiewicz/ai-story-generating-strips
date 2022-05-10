var strips = require('strips');
var child_total=0
// Load the domain and problem.
strips.verbose=true

//strips.output = function(text) {console.log(text); child_total+=parseInt(to_zero(text.match(/\d+/g))[1]);} //console.log(text,to_zero(text.match(/\d+/g))[2]); }
strips.output = function(text) {console.log(text); child_total+=1;} 



strips.load('./examples/witchhunt-expanded/domain.pddl', './examples/witchhunt-expanded/problem.pddl', function(domain, problem) {
    // Run the problem against the domain.

    var solutions = strips.solve(domain, problem, cost);
    // Display each solution.
    for (var i in solutions) {
        var solution = solutions[i];
        console.log('- Solution found in ' + solution.steps + ' steps!');
        for (var i = 0; i < solution.path.length; i++) {
            console.log((i + 1) + '. ' + solution.path[i]);
        }        
    }
    console.log(child_total)
});

function cost(state) {
    // This is our A* heuristic method to calculate the cost of a state.
    var cost = 20;
    for (var i in state.actions) {
        var action = state.actions[i].action;

        if (action == 'has-bucket') {
            cost -= 5;
        }
        else if (action == 'has-shoe') {
            cost -= 5;
        }
        else if (action == 'trusts') {
            cost -= 5;
        }
        else if (action == 'free') {
            cost -= 5;
        }
    }

    return cost;
}

function to_zero(text){
    if (text == null) {
        return [ '0', '0', '0' ]
    }
    else {
        return text
    }


}