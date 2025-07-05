impl Course.goto {
    visit :0:[-->(`?Module)];
}

impl Module.goto {
    visit :0:[-->(`?(Unit, Summary, Activity, Quiz))];    
}

impl Unit.goto {
    visit :0:[-->(`?(Chapter, Summary, Activity, Quiz))];    
}

impl Chapter.goto {
    visit :0:[-->(`?(Lesson, Summary, Activity, Quiz))];    
}

impl Lesson.goto {
    visit :0:[-->(`?(Activity, Quiz))];    
}