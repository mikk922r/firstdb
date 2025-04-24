using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Blazor.DBService.Models;

public partial class product
{
    [Key]
    public int id { get; set; }

    public string? name { get; set; }

    public string? description { get; set; }

    [Precision(10, 2)]
    public decimal? price { get; set; }

    public string? color { get; set; }

    public string? size { get; set; }

    public int? quantity { get; set; }

    public bool? used { get; set; }

    public int brand_id { get; set; }

    public int category_id { get; set; }

    public int? user_id { get; set; }

    [ForeignKey("brand_id")]
    [InverseProperty("products")]
    public virtual brand brand { get; set; } = null!;

    [ForeignKey("category_id")]
    [InverseProperty("products")]
    public virtual category category { get; set; } = null!;

    [ForeignKey("user_id")]
    [InverseProperty("products")]
    public virtual user? user { get; set; }
}
