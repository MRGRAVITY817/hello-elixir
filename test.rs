fn main() {
    let glue_builder = Glue::builder();

    /// "SELECT name, height FROM students WHERE height > 120 LIMIT 2"
    glue_builder
        .select(["name", "height"])
        .table("students")
        .filter(|(height, ..)| height > 120)
        .limit(2)
        .build();
}

pub struct GlueBuilder {
    pub statement: String,
};

impl GlueBuilder {
    fn add_statement(&mut self, statement: )
    pub fn select(&mut self, columns: AsRef<[&str]>) -> GlueBuilder {
        let select_columns = format!("SELECT {}", columns.join(" "));
        self.statement = format!(j)
    }

    pub fn table(table_name: AsRef<str>) -> {
        self
    } 
}
