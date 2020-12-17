.class public Lcom/android/systemui/ForegroundServiceController;
.super Ljava/lang/Object;
.source "ForegroundServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mMutex:Ljava/lang/Object;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/ForegroundServicesUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAppOps(ILjava/lang/String;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ForegroundServicesUserState;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 86
    monitor-exit v0

    return-object p0

    .line 88
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/systemui/ForegroundServicesUserState;->getFeatures(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 89
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getStandardLayoutKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ForegroundServicesUserState;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 73
    monitor-exit v0

    return-object p0

    .line 74
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/systemui/ForegroundServicesUserState;->getStandardLayoutKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isDisclosureNeededForUser(I)Z
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ForegroundServicesUserState;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 48
    monitor-exit v0

    return p0

    .line 49
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesUserState;->isDisclosureNeeded()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    .line 142
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p0

    const/16 v0, 0x28

    if-ne p0, v0, :cond_1c

    .line 143
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1c

    .line 144
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public isSystemAlertNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    .line 151
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 152
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 153
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlertWindowNotification"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public isSystemAlertWarningNeeded(ILjava/lang/String;)Z
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ForegroundServicesUserState;

    const/4 p1, 0x0

    if-nez p0, :cond_10

    .line 60
    monitor-exit v0

    return p1

    .line 61
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/systemui/ForegroundServicesUserState;->getStandardLayoutKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_17

    const/4 p1, 0x1

    :cond_17
    monitor-exit v0

    return p1

    :catchall_19
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onAppOpChanged(IILjava/lang/String;Z)V
    .registers 7

    .line 97
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 98
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServicesUserState;

    if-nez v1, :cond_1b

    .line 101
    new-instance v1, Lcom/android/systemui/ForegroundServicesUserState;

    invoke-direct {v1}, Lcom/android/systemui/ForegroundServicesUserState;-><init>()V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    if-eqz p4, :cond_21

    .line 105
    invoke-virtual {v1, p3, p1}, Lcom/android/systemui/ForegroundServicesUserState;->addOp(Ljava/lang/String;I)V

    goto :goto_24

    .line 107
    :cond_21
    invoke-virtual {v1, p3, p1}, Lcom/android/systemui/ForegroundServicesUserState;->removeOp(Ljava/lang/String;I)Z

    .line 109
    :goto_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw p0
.end method

.method updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)Z
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServicesUserState;

    if-nez v1, :cond_1d

    if-eqz p3, :cond_1a

    .line 127
    new-instance v1, Lcom/android/systemui/ForegroundServicesUserState;

    invoke-direct {v1}, Lcom/android/systemui/ForegroundServicesUserState;-><init>()V

    .line 128
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1d

    :cond_1a
    const/4 p0, 0x0

    .line 130
    monitor-exit v0

    return p0

    .line 133
    :cond_1d
    :goto_1d
    invoke-interface {p2, v1}, Lcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;->updateUserState(Lcom/android/systemui/ForegroundServicesUserState;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_23
    move-exception p0

    .line 134
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method
