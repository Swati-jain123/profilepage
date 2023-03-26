class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Mahatma Gandhi, byname of Mohandas Karamchand Gandhi, (born October 2, 1869, Porbandar, India—died January 30, 1948, Delhi), Indian lawyer, politician, social activist, and writer who became the leader of the nationalist movement against the British rule of India. As such, he came to be considered the father of his country. Gandhi is internationally esteeme or his doctrine of nonviolent protest (satyagraha) to achieve political and social progress.', isDone: true ),
      
    ];
  }
}