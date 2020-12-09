.class public Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreSecondaryKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey$Status;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoverableKeyStoreSecondaryKey"


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mSecretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mAlias:Ljava/lang/String;

    .line 50
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/SecretKey;

    iput-object p1, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 51
    return-void
.end method

.method private getStatusInternal(Landroid/content/Context;)I
    .registers 5
    .annotation build Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey$Status;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 84
    invoke-static {p1}, Landroid/security/keystore/recovery/RecoveryController;->getInstance(Landroid/content/Context;)Landroid/security/keystore/recovery/RecoveryController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/security/keystore/recovery/RecoveryController;->getRecoveryStatus(Ljava/lang/String;)I

    move-result p1

    .line 85
    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 87
    return v0

    .line 94
    :cond_13
    new-instance v0, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status from getRecoveryStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2a
    return v0

    .line 89
    :cond_2b
    const/4 p1, 0x2

    return p1
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mSecretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getStatus(Landroid/content/Context;)I
    .registers 4
    .annotation build Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey$Status;
    .end annotation

    .line 74
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->getStatusInternal(Landroid/content/Context;)I

    move-result p1
    :try_end_4
    .catch Landroid/security/keystore/recovery/InternalRecoveryServiceException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 75
    :catch_5
    move-exception p1

    .line 76
    const-string v0, "RecoverableKeyStoreSecondaryKey"

    const-string v1, "Internal error getting recovery status"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    const/4 p1, 0x1

    return p1
.end method
