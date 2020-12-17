.class public abstract Lcom/android/systemui/shared/system/TaskStackChangeListener;
.super Ljava/lang/Object;
.source "TaskStackChangeListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .registers 1

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .registers 1

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted()V
    .registers 1

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayRerouted()V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .registers 5

    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .registers 3

    return-void
.end method

.method public onActivityUnpinned()V
    .registers 1

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .registers 2

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .registers 1

    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .registers 1

    return-void
.end method

.method public onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 3

    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .registers 3

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .registers 2

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    .line 73
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskMovedToFront(I)V

    return-void
.end method

.method public onTaskProfileLocked(II)V
    .registers 3

    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 2

    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    return-void
.end method

.method public onTaskStackChanged()V
    .registers 1

    return-void
.end method

.method public onTaskStackChangedBackground()V
    .registers 1

    return-void
.end method
