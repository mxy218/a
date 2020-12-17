.class public Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
.super Ljava/lang/Object;
.source "VisualStabilityManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mAddedChildren:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedReorderViews:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsTemporaryReorderingAllowed:Z

.field private mLowPriorityReorderingViews:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTemporaryReorderingExpired:Ljava/lang/Runnable;

.field private mPanelExpanded:Z

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private mPulsing:Z

.field private mReorderingAllowed:Z

.field private mScreenOn:Z

.field private mTemporaryReorderingStart:J

.field private mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/os/Handler;)V
    .registers 4
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    .line 61
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    .line 62
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    .line 215
    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$VisualStabilityManager$6rf_6W4K3PrMdhwP_O1LDBveJ6k;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$VisualStabilityManager$6rf_6W4K3PrMdhwP_O1LDBveJ6k;-><init>(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mOnTemporaryReorderingExpired:Ljava/lang/Runnable;

    .line 70
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance p2, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;-><init>(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)Landroidx/collection/ArraySet;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    return-object p0
.end method

.method private notifyCallbacks()V
    .registers 3

    const/4 v0, 0x0

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

    .line 147
    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;->onReorderingAllowed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private updateReorderingAllowed()V
    .registers 5

    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    if-eqz v0, :cond_14

    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    if-eqz v0, :cond_1c

    .line 137
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-nez v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    .line 138
    :goto_1d
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-eqz v1, :cond_24

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyCallbacks()V

    :cond_24
    return-void
.end method


# virtual methods
.method public addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 104
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canReorderNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .registers 5

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 171
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 174
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    .line 175
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;->isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_31

    return v1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "VisualStabilityManager state:"

    .line 230
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mIsTemporaryReorderingAllowed="

    .line 231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTemporaryReorderingStart="

    .line 232
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mTemporaryReorderingStart:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p1, "    Temporary reordering window has been open for "

    .line 235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    if-eqz p1, :cond_29

    iget-wide p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mTemporaryReorderingStart:J

    goto :goto_2a

    :cond_29
    move-wide p0, v0

    :goto_2a
    sub-long/2addr v0, p0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p0, "ms"

    .line 237
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public isReorderingAllowed()Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    return p0
.end method

.method public synthetic lambda$new$0$VisualStabilityManager()V
    .registers 2

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    return-void
.end method

.method public notifyViewAddition(Landroid/view/View;)V
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 3

    if-eqz p2, :cond_b

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public onReorderingFinished()V
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .registers 2

    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    return-void
.end method

.method public setPulsing(Z)V
    .registers 3

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 130
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    return-void
.end method

.method public setScreenOn(Z)V
    .registers 2

    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    return-void
.end method

.method public setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    return-void
.end method

.method public temporarilyAllowReordering()V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mOnTemporaryReorderingExpired:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mOnTemporaryReorderingExpired:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    if-nez v0, :cond_1a

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mTemporaryReorderingStart:J

    :cond_1a
    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    return-void
.end method
