using System.ComponentModel.DataAnnotations;

namespace FuncionarioMod.Models
{
    public class FuncionarioModel
    {
        public int Id { get; set; }
  
        public string Nome { get; set; }
        public string CPF { get; set; }
        public string PIS { get; set; }
        public string Sexo { get; set; }
        public string Salario { get; set; }
        public string email { get; set; }
        public string data { get; set; }

    }
}
