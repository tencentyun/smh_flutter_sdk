import 'package:smh_flutter_sdk/core/task/base/smh_task.dart';
import 'package:smh_flutter_sdk/core/task/base/smh_task_queue.dart';

class SMHTaskManager {
  late SMHTaskQueue taskQueue;

  SMHTaskManager._internal() {
    taskQueue = SMHTaskQueue();
  }

  static final SMHTaskManager _instance = SMHTaskManager._internal();

  static SMHTaskManager get instance {
    return _instance;
  }

  setMaxConcurrentCount(int count) {
    taskQueue.maxConcurrentCount = count;
  }

  setCustomConcurrentCount(int count) {
    taskQueue.customConcurrentCount = count;
  }

  addTask(SMHTask task) {
    taskQueue.addTask(task);
  }

  cancelTaskById(int taskId) {
    taskQueue.cancelTaskById(taskId);
  }

  cancelTask(SMHTask task) {
    taskQueue.cancelTask(task);
  }

  cancelAll() {
    taskQueue.cancelAllTask();
  }
}
