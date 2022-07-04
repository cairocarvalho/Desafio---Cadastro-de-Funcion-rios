using CadastroFuncio.Data;
using FuncionarioMod.Models;

namespace CadastroFuncio.Repositorio
{
    public class FuncionarioRepositorio : IFuncionarioRepositorio
    {
        private readonly BancoContext _bancoContext;
        public FuncionarioRepositorio(BancoContext bancoContext)
        { 
               this._bancoContext = bancoContext;
        }
        public List<FuncionarioModel> BuscarTodos()
        {
            return _bancoContext.Funcionarios.ToList();
        }



        public FuncionarioModel Adicionar(FuncionarioModel funcionario)
        {
            _bancoContext.Funcionarios.Add(funcionario);
            _bancoContext.SaveChanges();
            return funcionario;
        }

        public FuncionarioModel ListarPorId(int id)
        {
            return _bancoContext.Funcionarios.FirstOrDefault(x => x.Id == id);
        }

        public FuncionarioModel Atualizar(FuncionarioModel funcionario)
        {
            FuncionarioModel funcionarioDB = ListarPorId(funcionario.Id);

            if (funcionarioDB == null) throw new Exception("Houve um erro na atualização do Funcionário!");
             funcionarioDB.Nome = funcionario.Nome;
            funcionarioDB.CPF = funcionario.CPF;
            funcionarioDB.PIS = funcionario.PIS;
            funcionarioDB.Sexo = funcionario.Sexo;
            funcionarioDB.Salario = funcionario.Salario;
            funcionarioDB.email = funcionario.email;
            funcionarioDB.data = funcionario.data;

            _bancoContext.Funcionarios.Update(funcionarioDB);
            _bancoContext.SaveChanges();

            return funcionarioDB;

        }

        public bool Apagar(int id)
        {
            FuncionarioModel funcionarioDB = ListarPorId(id);

            if (funcionarioDB == null) throw new Exception("Houve um erro ao apagar o Funcionário!");

            _bancoContext.Funcionarios.Remove(funcionarioDB);
            _bancoContext.SaveChanges();

            return true;
        }
    }
}
