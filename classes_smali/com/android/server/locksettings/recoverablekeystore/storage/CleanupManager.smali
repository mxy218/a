.class public Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
.super Ljava/lang/Object;
.source "CleanupManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CleanupManager"


# instance fields
.field private final mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private mSerialNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Landroid/os/UserManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 73
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 74
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mUserManager:Landroid/os/UserManager;

    .line 75
    iput-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 76
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
    .registers 11

    .line 56
    new-instance v6, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 60
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Landroid/os/UserManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)V

    .line 56
    return-object v6
.end method

.method private removeAllKeysForRecoveryAgent(II)V
    .registers 8

    .line 166
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getAllKeys(III)Ljava/util/Map;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    :try_start_20
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_25} :catch_26

    .line 175
    goto :goto_45

    .line 172
    :catch_26
    move-exception v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while removing recoverable key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CleanupManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_45
    goto :goto_14

    .line 177
    :cond_46
    return-void
.end method

.method private removeDataForUser(I)V
    .registers 6

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing data for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CleanupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryAgents(I)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 154
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->remove(I)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->removeAllKeysForRecoveryAgent(II)V

    .line 156
    goto :goto_25

    .line 158
    :cond_42
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromAllTables(I)V

    .line 159
    return-void
.end method

.method private storeUserSerialNumber(IJ)V
    .registers 7

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing serial number for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CleanupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setUserSerialNumber(IJ)J

    .line 140
    return-void
.end method


# virtual methods
.method public declared-synchronized registerRecoveryAgent(II)V
    .registers 7

    monitor-enter p0

    .line 82
    :try_start_1
    iget-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    if-nez p2, :cond_8

    .line 84
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->verifyKnownUsers()V

    .line 87
    :cond_8
    iget-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 88
    const-wide/16 v0, -0x1

    if-nez p2, :cond_1c

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 91
    :cond_1c
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_39

    cmp-long p2, v2, v0

    if-eqz p2, :cond_26

    .line 93
    monitor-exit p0

    return-void

    .line 96
    :cond_26
    :try_start_26
    iget-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 97
    cmp-long p2, v2, v0

    if-eqz p2, :cond_37

    .line 98
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->storeUserSerialNumber(IJ)V
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_39

    .line 100
    :cond_37
    monitor-exit p0

    return-void

    .line 81
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized verifyKnownUsers()V
    .registers 11

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getUserSerialNumbers()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    .line 107
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager$1;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V

    .line 108
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 111
    const-wide/16 v4, -0x1

    if-nez v2, :cond_38

    .line 112
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 114
    :cond_38
    iget-object v6, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    .line 115
    cmp-long v8, v6, v4

    if-nez v8, :cond_55

    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->removeDataForUser(I)V

    goto :goto_7e

    .line 119
    :cond_55
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_65

    .line 121
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->storeUserSerialNumber(IJ)V

    goto :goto_7e

    .line 122
    :cond_65
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7e

    .line 124
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->removeDataForUser(I)V

    .line 127
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->storeUserSerialNumber(IJ)V

    .line 129
    :cond_7e
    :goto_7e
    goto :goto_18

    .line 131
    :cond_7f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 132
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_97

    .line 133
    goto :goto_83

    .line 134
    :cond_95
    monitor-exit p0

    return-void

    .line 105
    :catchall_97
    move-exception v0

    monitor-exit p0

    throw v0
.end method
