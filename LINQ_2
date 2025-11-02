<Query Kind="Program" />

void Main()
{
    // 1️⃣ Numbers greater than 5
    int[] numbers = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    numbers.Where(n => n > 5).Dump("Numbers > 5");

    // 2️⃣ Sort numbers
    numbers.OrderBy(n => n).Dump("Sorted Numbers");

    // 3️⃣ Strings starting with 'A'
    string[] names = { "Ayan", "Riya", "Sita", "Ankit", "Rahul" };
    names.Where(n => n.StartsWith("A")).Dump("Names starting with A");

    // 4️⃣ Students with Marks > 80
    var students = new[]
    {
        new { Name="Ayan", Marks=85 },
        new { Name="Riya", Marks=92 },
        new { Name="Sita", Marks=78 }
    };
    students.Where(s => s.Marks > 80).Dump("Students with Marks > 80");

    // 5️⃣ Names of all students
    students.Select(s => s.Name).Dump("All Student Names");

    // 6️⃣ Sum of Marks
    students.Sum(s => s.Marks).Dump("Total Marks");
}
