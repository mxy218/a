.class public Lcom/android/server/biometrics/face/FaceUtils;
.super Ljava/lang/Object;
.source "FaceUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricUtils;


# static fields
.field private static sInstance:Lcom/android/server/biometrics/face/FaceUtils;

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
            "Lcom/android/server/biometrics/face/FaceUserState;",
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

    sput-object v0, Lcom/android/server/biometrics/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceUtils;->mUsers:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/face/FaceUtils;
    .registers 2

    .line 42
    sget-object v0, Lcom/android/server/biometrics/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/face/FaceUtils;->sInstance:Lcom/android/server/biometrics/face/FaceUtils;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Lcom/android/server/biometrics/face/FaceUtils;

    invoke-direct {v1}, Lcom/android/server/biometrics/face/FaceUtils;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/face/FaceUtils;->sInstance:Lcom/android/server/biometrics/face/FaceUtils;

    .line 46
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 47
    sget-object v0, Lcom/android/server/biometrics/face/FaceUtils;->sInstance:Lcom/android/server/biometrics/face/FaceUtils;

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

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;
    .registers 4

    .line 84
    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/face/FaceUserState;

    .line 86
    if-nez v0, :cond_15

    .line 87
    new-instance v0, Lcom/android/server/biometrics/face/FaceUserState;

    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/face/FaceUserState;-><init>(Landroid/content/Context;I)V

    .line 88
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    :cond_15
    monitor-exit p0

    return-object v0

    .line 91
    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method


# virtual methods
.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/face/FaceUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 62
    return-void
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/face/FaceUserState;->getBiometrics()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/face/FaceUserState;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/face/FaceUserState;->removeBiometric(I)V

    .line 67
    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .registers 6

    .line 71
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    return-void

    .line 75
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/android/server/biometrics/face/FaceUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    .line 76
    return-void
.end method
