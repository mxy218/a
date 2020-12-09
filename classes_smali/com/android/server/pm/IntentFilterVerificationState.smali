.class public Lcom/android/server/pm/IntentFilterVerificationState;
.super Ljava/lang/Object;
.source "IntentFilterVerificationState.java"


# static fields
.field public static final STATE_UNDEFINED:I = 0x0

.field public static final STATE_VERIFICATION_FAILURE:I = 0x3

.field public static final STATE_VERIFICATION_PENDING:I = 0x1

.field public static final STATE_VERIFICATION_SUCCESS:I = 0x2

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHosts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mRequiredVerifierUid:I

.field private mState:I

.field private mUserId:I

.field private mVerificationComplete:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/android/server/pm/IntentFilterVerificationState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/IntentFilterVerificationState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mFilters:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    .line 46
    iput p1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    .line 47
    iput p2, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mUserId:I

    .line 48
    iput-object p3, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mPackageName:Ljava/lang/String;

    .line 49
    iput v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    .line 50
    iput-boolean v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    .line 51
    return-void
.end method


# virtual methods
.method public addFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getHostsList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 129
    return-void
.end method

.method public getFilters()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHostsString()Ljava/lang/String;
    .registers 6

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 95
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_30

    .line 96
    if-lez v2, :cond_15

    .line 97
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_15
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mHosts:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    const-string v4, "*."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 102
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    :cond_2a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 106
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mUserId:I

    return v0
.end method

.method public isVerificationComplete()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    return v0
.end method

.method public isVerified()Z
    .registers 4

    .line 78
    iget-boolean v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 79
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1

    .line 81
    :cond_c
    return v1
.end method

.method public setPendingState()V
    .registers 2

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setState(I)V

    .line 67
    return-void
.end method

.method public setState(I)V
    .registers 3

    .line 54
    const/4 v0, 0x3

    if-gt p1, v0, :cond_9

    if-gez p1, :cond_6

    goto :goto_9

    .line 57
    :cond_6
    iput p1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    goto :goto_c

    .line 55
    :cond_9
    :goto_9
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mState:I

    .line 59
    :goto_c
    return-void
.end method

.method public setVerifierResponse(II)Z
    .registers 7

    .line 110
    iget v0, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_15

    .line 111
    nop

    .line 112
    const/4 p1, 0x1

    if-ne p2, p1, :cond_b

    .line 113
    const/4 v1, 0x2

    goto :goto_f

    .line 114
    :cond_b
    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    .line 115
    const/4 v1, 0x3

    .line 117
    :cond_f
    :goto_f
    iput-boolean p1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mVerificationComplete:Z

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/server/pm/IntentFilterVerificationState;->setState(I)V

    .line 119
    return p1

    .line 121
    :cond_15
    sget-object v0, Lcom/android/server/pm/IntentFilterVerificationState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set verifier response with callerUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and code:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as required verifierUid is:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/pm/IntentFilterVerificationState;->mRequiredVerifierUid:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v1
.end method