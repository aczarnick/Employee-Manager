namespace EmployeeManager.ViewModels
{
    public class ProfileViewModel
    {
        public ProfileViewModel(string firstName, string lastName, string title, string bio, string fbProfileLink, string twitterLink, string picture, string department)
        {
            Name = $"{firstName} {lastName}";
            Title = title;
            Bio = bio;
            FbProfileLink = fbProfileLink;
            TwitterLink = twitterLink;
            Picture = picture;
            Department = department;
        }

        public string Name { get; }
        public string Title { get; }
        public string Bio { get; }
        public string FbProfileLink { get; }
        public string TwitterLink { get; }
        public string Picture { get; }
        public string Department { get; }

        
    }
}
