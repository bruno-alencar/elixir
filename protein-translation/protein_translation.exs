defmodule ProteinTranslation do
  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """

   @mapItems %{  
  "UGU" => "Cysteine",
  "UGC" => "Cysteine",
  "UUA" => "Leucine",
  "UUG" => "Leucine",
  "AUG" => "Methionine",
  "UUU" => "Phenylalanine",
  "UUC" => "Phenylalanine",
  "UCU" => "Serine",
  "UCC" => "Serine",
  "UCA" => "Serine",
  "UCG" => "Serine",
  "UGG" => "Tryptophan",
  "UAU" => "Tyrosine",
  "UAC" => "Tyrosine",
  "UAA" => "STOP",
  "UAG" => "STOP",
  "UGA" => "STOP",
  }

  @spec of_rna(String.t()) :: { atom,  list(String.t()) }
  def of_rna(rna) do

    rna
    |> String.to_charlist
    |> Stream.chunk_every(3)
    |> Enum.to_list
    |> Enum.map(fn(item) ->
        to_string(item) 
        |> of_codon
        |> case do
              {:ok, res} -> res 
              err -> err
           end
        |> {:ok}
     end)
    |> {:ok, all}
  end

  @doc """
  Given a codon, return the corresponding protein

  UGU -> Cysteine
  UGC -> Cysteine
  UUA -> Leucine
  UUG -> Leucine
  AUG -> Methionine
  UUU -> Phenylalanine
  UUC -> Phenylalanine
  UCU -> Serine
  UCC -> Serine
  UCA -> Serine
  UCG -> Serine
  UGG -> Tryptophan
  UAU -> Tyrosine
  UAC -> Tyrosine
  UAA -> STOP
  UAG -> STOP
  UGA -> STOP
  """

@spec of_codon(String.t()) :: { atom, String.t() }
  def of_codon(codon) do
    @mapItems
    |> Map.fetch(codon)
  end
end

