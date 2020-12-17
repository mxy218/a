.class final Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppRequestObserver"
.end annotation


# instance fields
.field private mAppRequestedModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/DisplayModeDirector;

    .line 550
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    .line 552
    return-void
.end method

.method private findModeByIdLocked(II)Landroid/view/Display$Mode;
    .registers 9
    .param p1, "displayId"  # I
    .param p2, "modeId"  # I

    .line 585
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 586
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 587
    return-object v1

    .line 589
    :cond_10
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    .line 590
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    if-ne v5, p2, :cond_1d

    .line 591
    return-object v4

    .line 589
    .end local v4  # "mode":Landroid/view/Display$Mode;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 594
    :cond_20
    return-object v1
.end method

.method private setAppRequestedModeLocked(II)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "modeId"  # I

    .line 561
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->findModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object v0

    .line 562
    .local v0, "requestedMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 563
    return-void

    .line 568
    :cond_11
    if-eqz v0, :cond_2d

    .line 569
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 571
    .local v1, "refreshRate":F
    invoke-static {v1, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    .line 572
    .local v2, "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    .line 573
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    .line 572
    invoke-static {v3, v4}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 574
    .local v1, "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_34

    .line 575
    .end local v1  # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    .end local v2  # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_2d
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 576
    const/4 v2, 0x0

    .line 577
    .restart local v2  # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const/4 v1, 0x0

    .line 579
    .restart local v1  # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_34
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4, v2}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 580
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x2

    invoke-static {v3, p1, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 581
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 598
    const-string v0, "  AppRequestObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const-string v0, "    mAppRequestedModeByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 601
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 602
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display$Mode;

    .line 603
    .local v2, "mode":Landroid/view/Display$Mode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    .end local v1  # "id":I
    .end local v2  # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 605
    .end local v0  # "i":I
    :cond_40
    return-void
.end method

.method public setAppRequestedMode(II)V
    .registers 5
    .param p1, "displayId"  # I
    .param p2, "modeId"  # I

    .line 555
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 556
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedModeLocked(II)V

    .line 557
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method
