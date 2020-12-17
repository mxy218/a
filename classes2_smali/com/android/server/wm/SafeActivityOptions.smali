.class public Lcom/android/server/wm/SafeActivityOptions;
.super Ljava/lang/Object;
.source "SafeActivityOptions.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mCallerOptions:Landroid/app/ActivityOptions;

.field private final mOriginalCallingPid:I

.field private final mOriginalCallingUid:I

.field private final mOriginalOptions:Landroid/app/ActivityOptions;

.field private mRealCallingPid:I

.field private mRealCallingUid:I


# direct methods
.method public constructor <init>(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"  # Landroid/app/ActivityOptions;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 82
    return-void
.end method

.method private abort()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_7

    .line 159
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_e

    .line 162
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 164
    :cond_e
    return-void
.end method

.method static abort(Lcom/android/server/wm/SafeActivityOptions;)V
    .registers 1
    .param p0, "options"  # Lcom/android/server/wm/SafeActivityOptions;

    .line 167
    if-eqz p0, :cond_5

    .line 168
    invoke-direct {p0}, Lcom/android/server/wm/SafeActivityOptions;->abort()V

    .line 170
    :cond_5
    return-void
.end method

.method private checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V
    .registers 23
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p3, "callerApp"  # Lcom/android/server/wm/WindowProcessController;
    .param p4, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p5, "options"  # Landroid/app/ActivityOptions;
    .param p6, "callingPid"  # I
    .param p7, "callingUid"  # I

    .line 196
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    const/4 v6, -0x1

    const-string v7, "ActivityTaskManager"

    const-string v8, ", uid="

    const-string v9, " (pid="

    const-string v10, " from "

    const-string v11, "Permission Denial: starting "

    if-eq v5, v6, :cond_66

    iget-object v5, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 197
    invoke-virtual {v5, v4}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v5

    if-nez v5, :cond_66

    .line 198
    const-string v5, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-static {v5, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 200
    .local v5, "startInTaskPerm":I
    if-eq v5, v6, :cond_2c

    goto :goto_66

    .line 201
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with launchTaskId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "msg":Ljava/lang/String;
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 211
    .end local v5  # "startInTaskPerm":I
    .end local v6  # "msg":Ljava/lang/String;
    :cond_66
    :goto_66
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    .line 212
    .local v5, "launchDisplayId":I
    if-eqz v0, :cond_ab

    if-eq v5, v6, :cond_ab

    .line 213
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_75

    goto :goto_ab

    .line 215
    :cond_75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with launchDisplayId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    .restart local v6  # "msg":Ljava/lang/String;
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 223
    .end local v6  # "msg":Ljava/lang/String;
    :cond_ab
    :goto_ab
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v6

    .line 224
    .local v6, "lockTaskMode":Z
    if-eqz v0, :cond_f9

    if-eqz v6, :cond_f9

    iget-object v12, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 225
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v12

    .line 226
    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 225
    invoke-virtual {v12, v13, v14}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c6

    goto :goto_f9

    .line 227
    :cond_c6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with lockTaskMode=true"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, "msg":Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 235
    .end local v8  # "msg":Ljava/lang/String;
    :cond_f9
    :goto_f9
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v12

    .line 236
    .local v12, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v12, :cond_13d

    iget-object v13, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v13, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-static {v13, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v13

    if-nez v13, :cond_10a

    goto :goto_13d

    .line 239
    :cond_10a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with remoteAnimationAdapter"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 242
    .restart local v8  # "msg":Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 245
    .end local v8  # "msg":Ljava/lang/String;
    :cond_13d
    :goto_13d
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;
    .registers 3
    .param p0, "bOptions"  # Landroid/os/Bundle;

    .line 66
    if-eqz p0, :cond_c

    .line 67
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_d

    .line 68
    :cond_c
    const/4 v0, 0x0

    .line 66
    :goto_d
    return-object v0
.end method

.method private getIntentString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p1, "intent"  # Landroid/content/Intent;

    .line 248
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, "(no intent)"

    :goto_9
    return-object v0
.end method

.method private setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V
    .registers 7
    .param p1, "options"  # Landroid/app/ActivityOptions;
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I

    .line 139
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    .line 140
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-nez v0, :cond_7

    .line 141
    return-void

    .line 143
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p2, v1, :cond_15

    .line 144
    const-string v1, "ActivityTaskManager"

    const-string v2, "Safe activity options constructed after clearing calling id"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_15
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 148
    return-void
.end method


# virtual methods
.method getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;
    .registers 16
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p3, "callerApp"  # Lcom/android/server/wm/WindowProcessController;
    .param p4, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 122
    iget-object v5, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_19

    .line 123
    iget v6, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v7, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V

    .line 128
    :cond_19
    iget-object v8, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v8, :cond_32

    .line 129
    iget v9, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget v10, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v10}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V

    .line 134
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 101
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 6
    .param p1, "options1"  # Landroid/app/ActivityOptions;
    .param p2, "options2"  # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 179
    if-nez p1, :cond_3

    .line 180
    return-object p2

    .line 182
    :cond_3
    if-nez p2, :cond_6

    .line 183
    return-object p1

    .line 185
    :cond_6
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 186
    .local v0, "b1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 187
    .local v1, "b2":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 188
    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    return-object v2
.end method

.method popAppVerificationBundle()Landroid/os/Bundle;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public setCallerOptions(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"  # Landroid/app/ActivityOptions;

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 93
    return-void
.end method
