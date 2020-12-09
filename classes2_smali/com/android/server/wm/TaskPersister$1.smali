.class Lcom/android/server/wm/TaskPersister$1;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/wm/TaskRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskPersister;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$1;->this$0:Lcom/android/server/wm/TaskPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)I
    .registers 5

    .line 386
    iget-wide v0, p2, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    iget-wide p1, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    sub-long/2addr v0, p1

    .line 387
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_d

    .line 388
    const/4 p1, -0x1

    return p1

    .line 389
    :cond_d
    if-lez p1, :cond_11

    .line 390
    const/4 p1, 0x1

    return p1

    .line 392
    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 383
    check-cast p1, Lcom/android/server/wm/TaskRecord;

    check-cast p2, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPersister$1;->compare(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;)I

    move-result p1

    return p1
.end method
