.class public Lcom/android/server/biometrics/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricUtils;


# static fields
.field private static sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/fingerprint/FingerprintUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;
    .registers 2

    .line 42
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    invoke-direct {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    .line 46
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 47
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    return-object v0

    .line 46
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    .registers 5
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "userId"  # I

    .line 86
    invoke-static {p2}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    const/4 p2, 0x0

    .line 90
    :cond_7
    monitor-enter p0

    .line 92
    :try_start_8
    invoke-static {p2}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 93
    const/4 p2, 0x0

    .line 96
    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    .line 97
    .local v0, "state":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    if-nez v0, :cond_24

    .line 98
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 99
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    :cond_24
    monitor-exit p0

    return-object v0

    .line 102
    .end local v0  # "state":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v0
.end method


# virtual methods
.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "userId"  # I
    .param p3, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 62
    return-void
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->getBiometrics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "userId"  # I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "userId"  # I
    .param p3, "fingerId"  # I

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->removeBiometric(I)V

    .line 67
    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "userId"  # I
    .param p3, "fingerId"  # I
    .param p4, "name"  # Ljava/lang/CharSequence;

    .line 72
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    return-void

    .line 76
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    .line 77
    return-void
.end method
