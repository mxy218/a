.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private mExtendedTimeout:Z

.field private final mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method constructor <init>(ILcom/android/server/pm/PackageManagerService$InstallParams;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    .line 58
    iput-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 59
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 60
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 61
    return-void
.end method


# virtual methods
.method addSufficientVerifier(I)V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 74
    return-void
.end method

.method extendTimeout()V
    .registers 2

    .line 157
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_7

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 160
    :cond_7
    return-void
.end method

.method getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

    return-object v0
.end method

.method isInstallAllowed()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v0, :cond_6

    .line 143
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_d

    .line 147
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    return v0

    .line 150
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method isVerificationComplete()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_6

    .line 125
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 129
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    return v0
.end method

.method setVerifierResponse(II)Z
    .registers 6

    .line 84
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_19

    .line 85
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 86
    if-eq p2, v2, :cond_15

    const/4 p1, 0x2

    if-eq p2, p1, :cond_10

    .line 94
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_18

    .line 88
    :cond_10
    iget-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 91
    :cond_15
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 92
    nop

    .line 96
    :goto_18
    return v2

    .line 98
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 99
    if-ne p2, v2, :cond_27

    .line 100
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 104
    :cond_27
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 105
    iget-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_36

    .line 106
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 109
    :cond_36
    return v2

    .line 113
    :cond_37
    return v1
.end method

.method timeoutExtended()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return v0
.end method
