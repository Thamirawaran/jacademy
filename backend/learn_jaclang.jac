include template;

with entry {
    root ++> (c:=Course("Jaclang Fundamentals"));
    c ++> (m1:=Module("Getting Started"));
    m1 ++> (u1:=Unit("Introduction"));
    u1 ++> (c1:=Chapter("What is Jaclang?"));
    l1_con =  "This book teaches Jac through practical examples and real-world applications. Each chapter builds on the previous one, culminating in complete applications that demonstrate Jac's unique capabilities.";
    c1 ++> (l1:=Lesson("History and Philosophy", l1_con));
    c1 ++> Activity("First Program", "backend/courses/jaclang/activity/ex1.jac");
    c1 ++> Quiz("Test First Program", "backend/courses/jaclang/quiz/ex1.jac");

    [root-->] spawn learner();
}