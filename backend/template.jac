node Course {
    has title: str;
    # has description: str;
    # has category: str;
    # has level: str;

    can goto with learner entry;
}

node Module {
    has title: str;
    # has description: str;

    can goto with learner entry;
}

node Unit {
    has title: str;
    # has description: str;

    can goto with learner entry;
}

node Chapter {
    has title: str;
    # has description: str;

    can goto with learner entry;
}

node Lesson {
    has title: str;
    has content: str; # as str in markdown format

    can goto with learner entry;
}

node Activity {
    has title: str;
    has instructions: str;
    has question: str;
    has solution: str;
    has explanation: str;
}

node Quiz(Activity) { }

node Summary {
    has title: str;
    has content: str;
}

walker learner {

}

walker runner {
    has command: str = "run";

}

walker tester {
    has command: str = "test";
}