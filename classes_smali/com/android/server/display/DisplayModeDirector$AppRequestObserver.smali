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
    .registers 2

    .line 658
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    .line 660
    return-void
.end method

.method private findModeByIdLocked(II)Landroid/view/Display$Mode;
    .registers 8

    .line 694
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/Display$Mode;

    .line 695
    const/4 v0, 0x0

    if-nez p1, :cond_10

    .line 696
    return-object v0

    .line 698
    :cond_10
    array-length v1, p1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_20

    aget-object v3, p1, v2

    .line 699
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    if-ne v4, p2, :cond_1d

    .line 700
    return-object v3

    .line 698
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 703
    :cond_20
    return-object v0
.end method

.method private setAppRequestedModeLocked(II)V
    .registers 6

    .line 669
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->findModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object p2

    .line 670
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 671
    return-void

    .line 676
    :cond_11
    const/4 v0, 0x0

    if-eqz p2, :cond_2e

    .line 677
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 679
    invoke-static {v0, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 680
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 681
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p2

    .line 680
    invoke-static {v1, p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p2

    .line 682
    goto :goto_35

    .line 683
    :cond_2e
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 684
    nop

    .line 685
    move-object p2, v0

    .line 688
    :goto_35
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v2, 0x2

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 689
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 690
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7

    .line 707
    const-string v0, "  AppRequestObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    const-string v0, "    mAppRequestedModeByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 710
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 711
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display$Mode;

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 714
    :cond_40
    return-void
.end method

.method public setAppRequestedMode(II)V
    .registers 4

    .line 663
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 664
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedModeLocked(II)V

    .line 665
    monitor-exit v0

    .line 666
    return-void

    .line 665
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p1
.end method
