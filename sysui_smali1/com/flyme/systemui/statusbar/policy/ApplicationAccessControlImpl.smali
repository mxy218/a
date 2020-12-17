.class public Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationAccessControlImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private acm:Lmeizu/security/AccessControlManager;

.field private final mAccessChangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl$OnAccessChange;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsAppLockEnabled:Z

.field private mPackagesAccessState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagesMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mAccessChangeList:Ljava/util/List;

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesMap:Landroid/util/ArrayMap;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesAccessState:Landroid/util/ArrayMap;

    .line 46
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mContext:Landroid/content/Context;

    .line 47
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mContext:Landroid/content/Context;

    const-string v1, "access_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->acm:Lmeizu/security/AccessControlManager;

    const-string v0, "flyme.intent.action.APP_LOCKER_MSG_SWITCH_CHANGED"

    .line 49
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "flyme.intent.action.APP_LOCKER_MSG_STATUS_CHANGED"

    .line 50
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "flyme.intent.action.APP_LOCKER_MSG_APPLST_CHANGED"

    .line 51
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 53
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->acm:Lmeizu/security/AccessControlManager;

    invoke-virtual {p1}, Lmeizu/security/AccessControlManager;->getSwitchStatus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mIsAppLockEnabled:Z

    .line 54
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesMap:Landroid/util/ArrayMap;

    const-string v0, "com.android.dialer"

    const-string v1, "com.android.phone"

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesMap:Landroid/util/ArrayMap;

    const-string p1, "com.android.server.telecom"

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addOnAccessChange(Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl$OnAccessChange;)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mAccessChangeList:Ljava/util/List;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mAccessChangeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 62
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mAccessChangeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public isEncrypt(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    .line 78
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mIsAppLockEnabled:Z

    if-eqz v1, :cond_45

    .line 79
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 80
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 82
    :cond_17
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesAccessState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 83
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesAccessState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 86
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->acm:Lmeizu/security/AccessControlManager;

    invoke-virtual {v1, p1}, Lmeizu/security/AccessControlManager;->isAppUnlocked(Ljava/lang/String;)B

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    move v1, v0

    .line 87
    :goto_37
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesAccessState:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_41

    return v1

    :catchall_41
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_45
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 99
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->acm:Lmeizu/security/AccessControlManager;

    invoke-virtual {p1}, Lmeizu/security/AccessControlManager;->getSwitchStatus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mIsAppLockEnabled:Z

    .line 100
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mPackagesAccessState:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 101
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mAccessChangeList:Ljava/util/List;

    monitor-enter p1

    .line 102
    :try_start_10
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mAccessChangeList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl$OnAccessChange;

    const/4 v1, 0x0

    .line 103
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;->mIsAppLockEnabled:Z

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl$OnAccessChange;->onChange(Ljava/lang/String;ZZ)V

    goto :goto_16

    .line 105
    :cond_2a
    monitor-exit p1

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw p0
.end method
