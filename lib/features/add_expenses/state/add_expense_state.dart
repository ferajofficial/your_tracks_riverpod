sealed class AddExpenseState {
  const AddExpenseState();
}

class InitialAddExpenseState implements AddExpenseState {
  const InitialAddExpenseState();
}

class SubmittingAddExpenseState implements AddExpenseState {
  const SubmittingAddExpenseState();
}

class SubmittedAddExpenseState implements AddExpenseState {
  const SubmittedAddExpenseState();
}

class NotSubmittedAddExpenseState implements AddExpenseState {
  const NotSubmittedAddExpenseState();
}

class SubmitAddExpenseErrorState implements AddExpenseState {
  final String message;

  const SubmitAddExpenseErrorState(this.message);

  @override
  bool operator ==(covariant SubmitAddExpenseErrorState other) {
    if (identical(this, other)) return true;

    return other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
