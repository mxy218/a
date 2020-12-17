.class public Lcom/meizu/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/meizu/settings/applications/RunningProcessesView$TimeTicker;,
        Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;,
        Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mCurHighRam:J

.field mCurLowRam:J

.field mCurMedRam:J

.field mCurSelected:Lcom/meizu/settings/applications/RunningState$BaseItem;

.field mCurShowCached:Z

.field mCurTotalRam:J

.field mDataAvail:Ljava/lang/Runnable;

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/meizu/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 564
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    const-wide/16 p1, -0x1

    .line 82
    iput-wide p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurTotalRam:J

    .line 83
    iput-wide p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurHighRam:J

    .line 84
    iput-wide p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurMedRam:J

    .line 85
    iput-wide p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurLowRam:J

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurShowCached:Z

    .line 90
    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 565
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mMyUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/RunningProcessesView;)Landroid/content/Context;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private startServiceDetailsActivity(Lcom/meizu/settings/applications/RunningState$MergedItem;)V
    .registers 11

    .line 543
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v0, :cond_4a

    .line 545
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 546
    iget-object v0, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-eqz v0, :cond_1f

    .line 547
    iget v0, v0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mUid:I

    const-string/jumbo v1, "uid"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    iget-object v0, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const-string/jumbo v1, "process"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_1f
    iget p1, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    const-string/jumbo v0, "user_id"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean p1, p1, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    const-string v0, "background"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 553
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 554
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    const-class p0, Lcom/meizu/settings/applications/RunningServiceDetails;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f12120c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_4a
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 568
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 569
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/RunningState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mState:Lcom/meizu/settings/applications/RunningState;

    .line 570
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d02dc

    .line 572
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x102000a

    .line 573
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 575
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->setListViewHoldPress(Landroid/widget/ListView;)V

    const p1, 0x1020004

    .line 577
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 579
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 581
    :cond_48
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 582
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 583
    new-instance p1, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/meizu/settings/applications/RunningProcessesView;Lcom/meizu/settings/applications/RunningState;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 584
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 586
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPaddingWithIcon(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 588
    new-instance p1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 589
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 590
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    return-void
.end method

.method public doPause()V
    .registers 2

    .line 593
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/RunningState;->pause()V

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 595
    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .registers 3

    .line 599
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 600
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/applications/RunningState;->resume(Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 601
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/RunningState;->hasData()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    .line 604
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/RunningProcessesView;->refreshUi(Z)V

    return p1

    .line 607
    :cond_14
    iput-object p2, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    const/4 p0, 0x0

    return p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 535
    check-cast p1, Landroid/widget/ListView;

    .line 536
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 537
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurSelected:Lcom/meizu/settings/applications/RunningState$BaseItem;

    .line 538
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/meizu/settings/applications/RunningState$MergedItem;)V

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 2

    .line 560
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRefreshIcon(Ljava/lang/String;)V
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/RunningProcessesView;->updateIcon(Ljava/lang/String;)V

    return-void
.end method

.method public onRefreshUi(I)V
    .registers 4

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    goto :goto_1b

    .line 653
    :cond_9
    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 654
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_1b

    :cond_10
    const/4 p1, 0x0

    .line 649
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 650
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_1b

    .line 646
    :cond_18
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningProcessesView;->updateTimes()V

    :goto_1b
    return-void
.end method

.method refreshUi(Z)V
    .registers 12

    if-eqz p1, :cond_a

    .line 475
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 476
    invoke-virtual {p1}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 477
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 480
    :cond_a
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz p1, :cond_14

    .line 481
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 482
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 485
    :cond_14
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 487
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 488
    :try_start_1e
    iget-boolean v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurShowCached:Z

    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, v1, :cond_2c

    .line 489
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v0, v0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    iput-boolean v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurShowCached:Z

    .line 507
    :cond_2c
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    .line 510
    iget-boolean v2, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v2, :cond_48

    .line 511
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 512
    iget-object v4, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-wide v4, v4, Lcom/meizu/settings/applications/RunningState;->mBackgroundProcessMemory:J

    goto :goto_5e

    .line 514
    :cond_48
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-wide v4, v4, Lcom/meizu/settings/applications/RunningState;->mBackgroundProcessMemory:J

    add-long/2addr v2, v4

    .line 516
    iget-object v4, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-wide v4, v4, Lcom/meizu/settings/applications/RunningState;->mServiceProcessMemory:J

    :goto_5e
    sub-long v6, v0, v4

    sub-long/2addr v6, v2

    .line 521
    iget-wide v8, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurTotalRam:J

    cmp-long v8, v8, v0

    if-nez v8, :cond_79

    iget-wide v8, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurHighRam:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_79

    iget-wide v8, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurMedRam:J

    cmp-long v8, v8, v4

    if-nez v8, :cond_79

    iget-wide v8, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurLowRam:J

    cmp-long v8, v8, v2

    if-eqz v8, :cond_90

    .line 523
    :cond_79
    iput-wide v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurTotalRam:J

    .line 524
    iput-wide v6, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurHighRam:J

    .line 525
    iput-wide v4, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurMedRam:J

    .line 526
    iput-wide v2, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mCurLowRam:J

    .line 527
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/meizu/settings/utils/MzUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 528
    invoke-virtual {v0, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    :cond_90
    monitor-exit p1

    return-void

    :catchall_92
    move-exception p0

    monitor-exit p1
    :try_end_94
    .catchall {:try_start_1e .. :try_end_94} :catchall_92

    throw p0
.end method

.method updateIcon(Ljava/lang/String;)V
    .registers 4

    .line 630
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 631
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 632
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    .line 633
    iget-object v1, v0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_22

    .line 635
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 638
    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->updateIcon(Landroid/content/Context;)V

    goto :goto_a

    :cond_2a
    return-void
.end method

.method updateTimes()V
    .registers 5

    .line 613
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-static {v0}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->access$100(Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 617
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 618
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 619
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    .line 620
    iget-object v2, v1, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 622
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 625
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_13

    :cond_35
    return-void
.end method
