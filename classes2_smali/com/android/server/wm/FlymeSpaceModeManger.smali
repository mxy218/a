.class Lcom/android/server/wm/FlymeSpaceModeManger;
.super Ljava/lang/Object;
.source "FlymeSpaceModeManger.java"


# instance fields
.field private mReusedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mReusedIndex:I

.field private mReusedTaskRecord:Lcom/android/server/wm/TaskRecord;

.field private mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

.field private mWindowModeController:Lcom/android/server/wm/FlymeWindowModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V
    .registers 2
    .param p1, "windowModeController"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mWindowModeController:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 19
    return-void
.end method

.method private removeSpaceMode(Z)V
    .registers 15
    .param p1, "fullscreen"  # Z

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 83
    .local v0, "spaceTask":Lcom/android/server/wm/TaskRecord;
    iget-object v8, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedTaskRecord:Lcom/android/server/wm/TaskRecord;

    .line 84
    .local v8, "reusedTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_70

    if-eqz v8, :cond_70

    .line 85
    const/16 v9, 0x1f4

    const/4 v10, 0x1

    if-eqz p1, :cond_1f

    .line 86
    iget-object v1, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mWindowModeController:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v2, v3, v10, v9}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removeActivityStackDelay(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;ZI)V

    goto :goto_70

    .line 88
    :cond_1f
    iget v1, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedIndex:I

    if-le v1, v2, :cond_34

    .line 89
    invoke-virtual {v8, v2}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v2, :cond_63

    .line 90
    :cond_34
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    .line 91
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 92
    .local v12, "spaceStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "exitSpaceMode"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 93
    iget-object v1, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedIndex:I

    const-string v3, "exitSpaceMode"

    invoke-virtual {v1, v8, v2, v3}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    .line 94
    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v11}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 95
    iget-object v1, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mWindowModeController:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iget-object v2, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v12, v2, v10, v9}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removeActivityStackDelay(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;ZI)V

    .line 96
    .end local v12  # "spaceStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_70

    .line 97
    :cond_63
    iget-object v1, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mWindowModeController:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v2, v3, v10, v9}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removeActivityStackDelay(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;ZI)V

    .line 101
    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method addSpaceMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "reusedActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "spaceActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeSpaceModeManger;->reset()V

    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 28
    .local v0, "taskRecord":Lcom/android/server/wm/TaskRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v2

    const-string v3, "FlymeSpaceModeManger"

    if-ge v1, v2, :cond_37

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 30
    .local v2, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 31
    move-object p1, v2

    .line 32
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_32

    .line 33
    const-string v4, "addSpaceMode reusedActivity is visible,not go to space mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v3, 0x0

    return v3

    .line 36
    :cond_32
    iput v1, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedIndex:I

    .line 28
    .end local v2  # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 39
    .end local v1  # "i":I
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSpaceMode mReusedIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",reusedActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",spaceActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedTaskRecord:Lcom/android/server/wm/TaskRecord;

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 42
    iput-object p2, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    .line 43
    const/4 v1, 0x1

    return v1
.end method

.method getSpaceModePackageUid()I
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method onActivityStackExitWindowMode(Lcom/android/server/wm/ActivityStack;Z)Z
    .registers 9
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "fullscreen"  # Z

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStackExitWindowMode mSpaceActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FlymeSpaceModeManger"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_29

    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeSpaceModeManger;->reset()V

    .line 51
    return v1

    .line 53
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_43

    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedTaskRecord:Lcom/android/server/wm/TaskRecord;

    .line 55
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_43

    .line 56
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeSpaceModeManger;->reset()V

    .line 57
    return v1

    .line 60
    :cond_43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6b

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 62
    .local v2, "taskRecord":Lcom/android/server/wm/TaskRecord;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4f
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_68

    .line 63
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 64
    .local v4, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, v5, :cond_65

    .line 65
    invoke-direct {p0, p2}, Lcom/android/server/wm/FlymeSpaceModeManger;->removeSpaceMode(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeSpaceModeManger;->reset()V

    .line 67
    const/4 v1, 0x1

    return v1

    .line 62
    .end local v4  # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 60
    .end local v2  # "taskRecord":Lcom/android/server/wm/TaskRecord;
    .end local v3  # "j":I
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 72
    .end local v0  # "i":I
    :cond_6b
    return v1
.end method

.method reset()V
    .registers 2

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mSpaceActivity:Lcom/android/server/wm/ActivityRecord;

    .line 77
    iput-object v0, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/FlymeSpaceModeManger;->mReusedIndex:I

    .line 79
    return-void
.end method
