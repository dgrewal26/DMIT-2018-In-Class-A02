﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using eRestaurant.Entities;


namespace eRestaurant.DAL
{
    class RestaurantContext: DbContext
    {
        public RestaurantContext(): base("name=EatIn") { }
        public DbSet<SpecialEvent> SpecialEvents { get; set; }
        public DbSet<Reservation>Reservation { get; set; }
        public DbSet<MenuCategory>MenuCategories { get; set; }
        public DbSet<Item>Item { get; set; }
    }
}
