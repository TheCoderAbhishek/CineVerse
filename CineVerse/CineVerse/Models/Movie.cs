using System.ComponentModel.DataAnnotations;

namespace CineVerse.Models
{
    public class Movie
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(100)]
        public required string MovieName { get; set; }

        [Required]
        [StringLength(100)]
        public required string Director { get; set; }

        [Required]
        [DataType(DataType.Date)]
        public DateTime ReleaseDate { get; set; }

        public string? Description { get; set; }

        public byte[]? Photo { get; set; }
    }
}
