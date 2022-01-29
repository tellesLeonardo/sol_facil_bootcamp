defmodule SolTeste do
  @moduledoc """
  Documentation for `SolTeste`.
  """

  @seculo 100

  @doc """
    ## Teste de Lógica - Desafio 1

      O primeiro século vai do ano 1 até e incluindo o ano 100, o segundo século - do ano 101 até e incluindo * o ano 200, etc.
      Dado um ano, retorne o século em que ele se encontra.

    ## Exemplos

      entrada: 1705, resultado: 18
      entrada: 1900, resultado: 19
      entrada: 1601, resultado: 17
      entrada: 2000, resultado: 20

    ## execução
      iex> test_log_1(2000)
        20
  """
  def test_log_1(entrada) do
    Kernel.ceil(entrada / @seculo)
  end

  @doc """
    ## Teste de Lógica - Desafio 2

      Nosso time de futebol terminou o campeonato. O resultado de cada correspondência é semelhante a "x: y". Os resultados de todas as partidas são registrados na coleção.
      Por exemplo: [" 3: 1 "," 2: 2 "," 0: 1 ", ...]
      Escreva uma função que leve essa arrecadação e conte os pontos da nossa equipe no campeonato. Regras para contagem de pontos para cada partida:

    ## Exemplos

      - se x> y - 3 pontos
      - se x <y - 0 ponto
      - se x = y - 1 ponto


    ## execução
      iex> test_log_2([" 3: 1 "," 2: 2 "," 0: 1 "])
        4
  """

  def test_log_2(list_partidas) do
    list_partidas
    |> Enum.map(&spliting_number(&1))
    |> Enum.map(fn [x, y] ->
      x = String.to_integer(x)
      y = String.to_integer(y)

      cond do
        x > y -> 3
        x < y -> 0
        x == y -> 1
      end
    end)
    |> Enum.reduce(0, fn num, acc -> num + acc end)
  end

  defp spliting_number(num) do
    num
    |> String.split(~r/[^\d]/, trim: true)
  end
end
