namespace SitecoreBlazorUI.Models
{
    public class Language
    {
        public string Name { get; set; }
    }

    public class Culture
    {
        public string Name { get; set; }
        public string ThreeLetterISOLanguageName { get; set; }
        public string TwoLetterISOLanguageName { get; set; }
    }

    public class ContentDatabase
    {
        public string Name { get; set; }
    }

    public class Database
    {
        public string Name { get; set; }
    }

    public class Profile
    {
        public string FullName { get; set; }
        public string Portrait { get; set; }
    }

    public class User
    {
        public string LocalName { get; set; }
        public string Name { get; set; }
        public Profile Profile { get; set; }
    }

    public class ContextApiResponse
    {
        public Language Language { get; set; }
        public Culture Culture { get; set; }
        public ContentDatabase ContentDatabase { get; set; }
        public Database Database { get; set; }
        public User User { get; set; }
    }
}
