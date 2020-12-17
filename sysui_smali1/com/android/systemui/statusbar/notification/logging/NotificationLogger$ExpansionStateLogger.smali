.class public Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;
.super Ljava/lang/Object;
.source "NotificationLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpansionStateLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;
    }
.end annotation


# instance fields
.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mExpansionStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoggedExpansionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public constructor <init>(Lcom/android/systemui/UiOffloadThread;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mExpansionStates:Ljava/util/Map;

    .line 432
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mLoggedExpansionState:Ljava/util/Map;

    .line 439
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    const-string/jumbo p1, "statusbar"

    .line 442
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 441
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private getState(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;
    .registers 4

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mExpansionStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    if-nez v0, :cond_15

    .line 492
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;)V

    .line 493
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mExpansionStates:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method private maybeNotifyOnNotificationExpansionChanged(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V
    .registers 5

    .line 499
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->access$1100(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 502
    :cond_7
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 505
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mLoggedExpansionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_23

    .line 508
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_23

    return-void

    :cond_23
    if-eqz v0, :cond_2a

    .line 511
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    if-ne v1, v0, :cond_2a

    return-void

    .line 515
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mLoggedExpansionState:Ljava/util/Map;

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;)V

    .line 517
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$ExpansionStateLogger$2Eiyi73G6QB8CNmBwaixENnG5Co;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$ExpansionStateLogger$2Eiyi73G6QB8CNmBwaixENnG5Co;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V

    invoke-virtual {p2, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public synthetic lambda$maybeNotifyOnNotificationExpansionChanged$0$NotificationLogger$ExpansionStateLogger(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V
    .registers 5

    .line 519
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 520
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-virtual {p2}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->ordinal()I

    move-result p2

    .line 519
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception p0

    const-string p1, "NotificationLogger"

    const-string p2, "Failed to call onNotificationExpansionChanged: "

    .line 522
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method onEntryReinflated(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 486
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mLoggedExpansionState:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method onEntryRemoved(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mExpansionStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mLoggedExpansionState:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method onExpansionChanged(Ljava/lang/String;ZZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 448
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->getState(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    move-result-object v0

    .line 449
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    .line 450
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 451
    iput-object p4, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 452
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->maybeNotifyOnNotificationExpansionChanged(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V

    return-void
.end method

.method onVisibilityChanged(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .line 460
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$900(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p1

    .line 462
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$900(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p2

    .line 464
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_28

    aget-object v3, p1, v2

    .line 465
    iget-object v4, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->getState(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    move-result-object v4

    const/4 v5, 0x1

    .line 466
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    .line 467
    iget-object v5, v3, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 468
    iget-object v3, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->maybeNotifyOnNotificationExpansionChanged(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 470
    :cond_28
    array-length p1, p2

    move v0, v1

    :goto_2a
    if-ge v0, p1, :cond_3d

    aget-object v2, p2, v0

    .line 471
    iget-object v2, v2, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->getState(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    move-result-object v2

    .line 472
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3d
    return-void
.end method
