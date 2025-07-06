import subprocess;

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
    has code_path: str;
    # has instructions: str;
    # has question: str;
    # has solution: str;
    # has explanation: str;

    can execute with learner entry {
        root spawn runner(self.code_path);
    }
}

node Quiz {
    has title: str;
    has code_path: str;
    # has instructions: str;
    # has question: str;
    # has solution: str;
    # has explanation: str;

    can execute with learner entry {
        root spawn tester(self.code_path);
    }
 }

node Summary {
    has title: str;
    has content: str;
}

walker learner {

}

walker runner {
    has code_path: str;

    can execute with `root entry {
        subprocess.run(["jac","run",self.code_path]);
    }

}

walker tester {
    has code_path: str;

    can execute with `root entry {
        subprocess.run(["jac","test",self.code_path]);
    }
}