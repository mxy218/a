.class public Lcom/android/server/wm/WmsExecutor;
.super Ljava/lang/Object;
.source "WmsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WmsExecutor$LazyHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WmsExecutor"


# instance fields
.field private mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/WmsExecutor;
    .registers 1

    .line 37
    invoke-static {}, Lcom/android/server/wm/WmsExecutor$LazyHolder;->access$000()Lcom/android/server/wm/WmsExecutor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "wms"  # Lcom/android/server/wm/WindowManagerService;

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/WmsExecutor;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 42
    return-void
.end method

.method public isTopPackage(Lcom/android/server/wm/RootActivityContainer;ILjava/lang/String;)Z
    .registers 11
    .param p1, "rootActivityContainer"  # Lcom/android/server/wm/RootActivityContainer;
    .param p2, "uid"  # I
    .param p3, "pkg"  # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 54
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v1, :cond_2f

    .line 55
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 56
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_2f

    .line 57
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 58
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v3, :cond_2f

    .line 59
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 60
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2f

    .line 61
    if-eqz p3, :cond_2f

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget v5, v3, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v5, v6, :cond_2f

    .line 62
    const/4 v0, 0x1

    return v0

    .line 69
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_2f
    return v0
.end method

.method public removePendingResult(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 5
    .param p1, "activityToken"  # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p2, "pir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 46
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v1, :cond_f

    .line 47
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 49
    :cond_f
    return-void
.end method
