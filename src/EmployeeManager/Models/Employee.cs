using System;
using System.Collections.Generic;

namespace EmployeeManager.Models
{
    public partial class Employee
    {
        public int EmployeeId { get; set; }
        public int SubDepartmentId { get; set; }
        public string FirstName { get; set; } = null!;
        public string LastName { get; set; } = null!;
        public string Bio { get; set; } = null!;
        public string? ProfileImage { get; set; }
        public string? FbprofileLink { get; set; }
        public string? TwitterProfileLink { get; set; }
        public DateTime AddedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public bool Deleted { get; set; }
        public DateTime? DeletedDate { get; set; }

        public virtual SubDepartment SubDepartment { get; set; } = null!;
    }
}
