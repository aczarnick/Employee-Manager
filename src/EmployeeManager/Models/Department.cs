namespace EmployeeManager.Models
{
    public partial class Department
    {
        public Department()
        {
            SubDepartments = new HashSet<SubDepartment>();
        }

        public int DepartmentId { get; set; }
        public string DepartmentName { get; set; } = null!;
        public DateTime AddedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public bool Deleted { get; set; }
        public DateTime? DeletedDate { get; set; }

        public virtual ICollection<SubDepartment> SubDepartments { get; set; }
    }
}
