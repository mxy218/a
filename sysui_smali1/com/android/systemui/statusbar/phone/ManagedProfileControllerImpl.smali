.class public Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;
.super Ljava/lang/Object;
.source "ManagedProfileControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mListening:Z

.field private final mProfiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    .line 52
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 53
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)Ljava/util/List;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method private reloadManagedProfiles()V
    .registers 7

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 85
    :goto_e
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 86
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 88
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 89
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 90
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 93
    :cond_39
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_5d

    if-eqz v1, :cond_5d

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCurrentUser:I

    if-ne v2, v1, :cond_5d

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 95
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileRemoved()V

    goto :goto_4d

    .line 98
    :cond_5d
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCurrentUser:I

    .line 99
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw p0
.end method

.method private setListening(Z)V
    .registers 8

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-eqz p1, :cond_31

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    .line 126
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 127
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 128
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 129
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 130
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 131
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_38

    .line 134
    :cond_31
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_38
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 59
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->setListening(Z)V

    .line 61
    :cond_11
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 36
    check-cast p1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    return-void
.end method

.method public hasActiveProfile()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v0

    .line 105
    :try_start_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 106
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw p0
.end method

.method public isWorkModeEnabled()Z
    .registers 3

    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v0

    .line 112
    :try_start_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 113
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x0

    .line 114
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 117
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 118
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->setListening(Z)V

    :cond_14
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 36
    check-cast p1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    return-void
.end method

.method public setWorkModeEnabled(Z)V
    .registers 7

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 73
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    if-nez p1, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 74
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    .line 75
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 76
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto :goto_9

    .line 79
    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method
