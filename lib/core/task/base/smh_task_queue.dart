import 'package:smh_flutter_sdk/core/task/base/smh_task.dart';

class SMHTaskQueue {
  // 最大并发数
  int maxConcurrentCount = 5;
  // 当前并发数
  int customConcurrentCount = 3;

  List<SMHTask> runningTaskArray = [];
  List<SMHTask> highPriorityTaskArray = [];
  List<SMHTask> middlePriorityTaskArray = [];
  List<SMHTask> lowPriorityTaskArray = [];

  addTask(SMHTask? task) {
    if (task == null) {
      return;
    }
    task.currentQueue = this;
    switch (task.priority) {
      case SMHTaskPriority.high:
        highPriorityTaskArray.add(task);
        break;
      case SMHTaskPriority.middle:
        middlePriorityTaskArray.add(task);
        break;
      case SMHTaskPriority.low:
        lowPriorityTaskArray.add(task);
        break;
    }
    startTask();
  }

  onTaskFinishHandle(SMHTask task) {
    runningTaskArray.remove(task);
    startTask();
  }

  startTask() {
    if (highPriorityTaskArray.isNotEmpty) {
      runningTaskArray.add(highPriorityTaskArray.first);
      highPriorityTaskArray.first.start();
      highPriorityTaskArray.remove(highPriorityTaskArray.first);
    }

    if (runningTaskArray.length > customConcurrentCount) {
      return;
    }

    if (middlePriorityTaskArray.isNotEmpty) {
      runningTaskArray.add(middlePriorityTaskArray.first);
      middlePriorityTaskArray.first.start();
      middlePriorityTaskArray.remove(middlePriorityTaskArray.first);
    }
    if (lowPriorityTaskArray.isNotEmpty) {
      runningTaskArray.add(lowPriorityTaskArray.first);
      lowPriorityTaskArray.first.start();
      lowPriorityTaskArray.remove(lowPriorityTaskArray.first);
    }
  }

  cancelTask(SMHTask task) {
    if (task.priority == SMHTaskPriority.high) {
      highPriorityTaskArray.remove(task);
    }

    if (task.priority == SMHTaskPriority.low) {
      lowPriorityTaskArray.remove(task);
    }

    if (task.priority == SMHTaskPriority.middle) {
      middlePriorityTaskArray.remove(task);
    }
    task.finish();
  }

  cancelTaskById(int taskId) {
    this.highPriorityTaskArray.forEach((element) {
      if (element.taskId == taskId) {
        highPriorityTaskArray.remove(element);
        return;
      }
    });

    this.middlePriorityTaskArray.forEach((element) {
      if (element.taskId == taskId) {
        middlePriorityTaskArray.remove(element);
        return;
      }
    });

    this.lowPriorityTaskArray.forEach((element) {
      if (element.taskId == taskId) {
        lowPriorityTaskArray.remove(element);
        return;
      }
    });
  }

  cancelAllTask() {
    highPriorityTaskArray.removeRange(0, highPriorityTaskArray.length);
    middlePriorityTaskArray.removeRange(0, middlePriorityTaskArray.length);
    lowPriorityTaskArray.removeRange(0, lowPriorityTaskArray.length);
  }
}
