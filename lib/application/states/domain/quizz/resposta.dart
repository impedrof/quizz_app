class RespostaQuizz {
  int? id;
  int? idQuizz;
  int idQuestao;
  bool resposta;

  RespostaQuizz(this.idQuestao, this.resposta, [this.id, this.idQuizz]);
}
