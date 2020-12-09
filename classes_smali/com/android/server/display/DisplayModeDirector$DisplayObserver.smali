.class final Lcom/android/server/display/DisplayModeDirector$DisplayObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 724
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    .line 726
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 727
    return-void
.end method

.method private updateDisplayModes(I)V
    .registers 8

    .line 773
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 774
    if-nez v0, :cond_11

    .line 778
    return-void

    .line 780
    :cond_11
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 781
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 782
    const/4 v0, 0x0

    .line 783
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 784
    :try_start_21
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_42

    .line 785
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v3, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 786
    move v0, v4

    .line 788
    :cond_42
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 789
    nop

    .line 790
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v4

    .line 792
    :cond_65
    if-eqz v0, :cond_6c

    .line 793
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$800(Lcom/android/server/display/DisplayModeDirector;)V

    .line 795
    :cond_6c
    monitor-exit v2

    .line 796
    return-void

    .line 795
    :catchall_6e
    move-exception p1

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_21 .. :try_end_70} :catchall_6e

    throw p1
.end method


# virtual methods
.method public observe()V
    .registers 10

    .line 730
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 731
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 734
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 735
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 736
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 737
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 738
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_25
    if-ge v6, v4, :cond_3f

    aget-object v7, v0, v6

    .line 739
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    .line 740
    invoke-virtual {v7, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 741
    iget-object v7, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 742
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 738
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 744
    :cond_3f
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 745
    :try_start_46
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 746
    nop

    :goto_4b
    if-ge v5, v3, :cond_76

    .line 747
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/Display$Mode;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 748
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Display$Mode;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 746
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 750
    :cond_76
    monitor-exit v0

    .line 751
    return-void

    .line 750
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_46 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public onDisplayAdded(I)V
    .registers 2

    .line 755
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->updateDisplayModes(I)V

    .line 756
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    .line 768
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->updateDisplayModes(I)V

    .line 769
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDisplayChanged(I)V

    .line 770
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 760
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 761
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 762
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 763
    monitor-exit v0

    .line 764
    return-void

    .line 763
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p1
.end method
