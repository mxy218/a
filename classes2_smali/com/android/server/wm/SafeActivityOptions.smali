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

    .line 167
    if-eqz p0, :cond_5

    .line 168
    invoke-direct {p0}, Lcom/android/server/wm/SafeActivityOptions;->abort()V

    .line 170
    :cond_5
    return-void
.end method

.method private checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;II)V
    .registers 15

    .line 196
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ActivityTaskManager"

    const-string v3, ", uid="

    const-string v4, " (pid="

    const-string v5, " from "

    const-string v6, "Permission Denial: starting "

    if-eq v0, v1, :cond_5c

    iget-object v0, p4, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 197
    invoke-virtual {v0, p7}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 198
    const-string v0, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-static {v0, p6, p7}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 200
    if-eq v0, v1, :cond_22

    goto :goto_5c

    .line 201
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with launchTaskId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 211
    :cond_5c
    :goto_5c
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    .line 212
    if-eqz p2, :cond_a1

    if-eq v0, v1, :cond_a1

    .line 213
    invoke-virtual {p4, p6, p7, v0, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_6b

    goto :goto_a1

    .line 215
    :cond_6b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with launchDisplayId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 223
    :cond_a1
    :goto_a1
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v0

    .line 224
    if-eqz p2, :cond_ef

    if-eqz v0, :cond_ef

    iget-object v0, p4, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 225
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    .line 226
    invoke-static {p7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 225
    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_bc

    goto :goto_ef

    .line 227
    :cond_bc
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with lockTaskMode=true"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 235
    :cond_ef
    :goto_ef
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    .line 236
    if-eqz p2, :cond_133

    iget-object p2, p4, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string p2, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-static {p2, p6, p7}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_100

    goto :goto_133

    .line 239
    :cond_100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with remoteAnimationAdapter"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 245
    :cond_133
    :goto_133
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;
    .registers 2

    .line 66
    if-eqz p0, :cond_c

    .line 67
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_d

    .line 68
    :cond_c
    const/4 v0, 0x0

    .line 66
    :goto_d
    return-object v0
.end method

.method private getIntentString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 248
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_7
    const-string p1, "(no intent)"

    :goto_9
    return-object p1
.end method

.method private setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V
    .registers 5

    .line 139
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    .line 140
    if-nez p1, :cond_7

    .line 141
    return-void

    .line 143
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_15

    .line 144
    const-string p1, "ActivityTaskManager"

    const-string p2, "Safe activity options constructed after clearing calling id"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_15
    invoke-virtual {p1, p2, p3}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 148
    return-void
.end method


# virtual methods
.method getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;
    .registers 16
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
    iget-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    iget p2, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget p3, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V

    .line 134
    :cond_32
    iget-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget-object p2, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SafeActivityOptions;->mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 101
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 3
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

    move-result-object p1

    .line 186
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 187
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 188
    invoke-static {p1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
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
