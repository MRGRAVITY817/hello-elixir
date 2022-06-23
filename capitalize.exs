capitalize_sentences = fn sentence ->
  String.split(sentence, ". ")
  |> Enum.map(
    String.capitalize()
    |> Enum.join(". ")
  )
end
