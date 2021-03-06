defmodule Fraction do
  defstruct a: nil, b: nil

  def new(numerator, denominator) do
    %Fraction{a: numerator, b: denominator}
  end

  def add(%Fraction{a: a1, b: b1}, %Fraction{a: a2, b: b2}) do
    new(
      a1 * b2 + a2 * b1,
      b2 * b1
    )
  end

  def value(%Fraction{a: a, b: b}) do
    a / b
  end
end
