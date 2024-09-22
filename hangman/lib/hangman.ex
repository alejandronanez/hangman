defmodule Hangman do
  alias Hangman.Impl.Game
  alias Hangman.Type

  # game type is not usable outside the Hangman module. / make state private
  @opaque game :: Game.t()

  @spec new_game() :: game
  defdelegate new_game, to: Game

  @spec make_move(game, String.t()) :: {game, Type.tally()}
  defdelegate make_move(game, guess), to: Game
end
