.class public final Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;
.super Ljava/lang/Object;
.source "AODNotificationController.java"


# static fields
.field private static sInstance:Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemuitools/aod/view/INotificationCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;
    .registers 2

    const-class v0, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;

    monitor-enter v0

    .line 14
    :try_start_3
    sget-object v1, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->sInstance:Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;

    if-nez v1, :cond_e

    .line 15
    new-instance v1, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;

    invoke-direct {v1}, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;-><init>()V

    sput-object v1, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->sInstance:Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;

    .line 17
    :cond_e
    sget-object v1, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->sInstance:Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemuitools/aod/view/INotificationCallback;)V
    .registers 2

    .line 25
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 49
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/INotificationCallback;

    if-eqz v0, :cond_6

    .line 51
    invoke-interface {v0, p1}, Lcom/flyme/systemuitools/aod/view/INotificationCallback;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 41
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/INotificationCallback;

    if-eqz v0, :cond_6

    .line 43
    invoke-interface {v0, p1}, Lcom/flyme/systemuitools/aod/view/INotificationCallback;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public updateNotifications([Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 33
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/INotificationCallback;

    if-eqz v0, :cond_6

    .line 35
    invoke-interface {v0, p1}, Lcom/flyme/systemuitools/aod/view/INotificationCallback;->updateNotifications([Landroid/service/notification/StatusBarNotification;)V

    goto :goto_6

    :cond_18
    return-void
.end method
