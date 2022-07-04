﻿using FuncionarioMod.Models;

namespace CadastroFuncio.Repositorio
{
    public interface IFuncionarioRepositorio
    {
        FuncionarioModel ListarPorId(int id);

        List<FuncionarioModel> BuscarTodos();
        FuncionarioModel Adicionar(FuncionarioModel funcionario);
        FuncionarioModel Atualizar(FuncionarioModel funcionario);
        bool Apagar(int id);    

    }
}
