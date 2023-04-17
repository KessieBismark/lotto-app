class StakeModel {
  final String id;
  final String betName;
  final String date;
  final String stakeAmount;
  final String potentialWin;
  final String play;
  final String result;
  final int status;
  final String returns;

  StakeModel(
      {required this.id,
      required this.betName,
      required this.returns,
      required this.date,
      required this.stakeAmount,
      required this.potentialWin,
      required this.play,
      required this.result,
      required this.status});
}
