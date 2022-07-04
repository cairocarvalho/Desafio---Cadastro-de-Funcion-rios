using CadastroFuncio.Repositorio;
using FuncionarioMod.Models;
using Microsoft.AspNetCore.Mvc;

namespace CadastroFuncio.Controllers
{
    public class FuncionarioController : Controller
    {
        private readonly IFuncionarioRepositorio _funcionarioRepositorio;
        public FuncionarioController(IFuncionarioRepositorio funcionarioRepositorio)
        {
            _funcionarioRepositorio = funcionarioRepositorio;
        }
        public IActionResult Index()
        {
          List<FuncionarioModel> funcionarios = _funcionarioRepositorio.BuscarTodos();
            return View(funcionarios);
        }

        public IActionResult Criar()
        {
            return View();
        }

        public IActionResult Editar(int id)
        {
           FuncionarioModel funcionario = _funcionarioRepositorio.ListarPorId(id);
            return View(funcionario);
        }

        public IActionResult ApagarConfirmacao(int id)
        {
            FuncionarioModel funcionario = _funcionarioRepositorio.ListarPorId(id);
            return View(funcionario);
        }

        public IActionResult Apagar(int id)
        {
            _funcionarioRepositorio.Apagar(id); 
            return RedirectToAction("Index");
        }


        [HttpPost]
        public IActionResult Criar(FuncionarioModel funcionario)
        {
            _funcionarioRepositorio.Adicionar(funcionario);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public IActionResult Alterar(FuncionarioModel funcionario)
        {
            _funcionarioRepositorio.Atualizar(funcionario);
            return RedirectToAction("Index");
        }
    }
}
