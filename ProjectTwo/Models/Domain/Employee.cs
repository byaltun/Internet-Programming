﻿namespace ProjectTwo.Models.Domain
{
    public class Employee
    {
        public Guid Id { get; set; }
        public string AdSoyad { get; set; }
        public string Bolum { get; set; }
        public int OgrenciNo { get; set; }
        public DateTime KayitTarih { get; set; }
        public DateTime DTarih { get; set; }
    }
}
