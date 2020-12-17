.class public Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.super Ljava/lang/Object;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCanSkipBouncer:Z

.field private mDebugUnlocked:Z

.field private mFaceAuthEnabled:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecure:Z

.field private mTrustManaged:Z

.field private mTrusted:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mDebugUnlocked:Z

    .line 157
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;-><init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 58
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 59
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 60
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 p1, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    .line 62
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .registers 2

    .line 79
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 82
    :cond_b
    sget-object p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object p0
.end method

.method private notifyListeners()V
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .line 143
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;->onUnlockMethodStateChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private update(Z)V
    .registers 9

    const-string v0, "UnlockMethodCache#update"

    .line 119
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 122
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    if-nez v4, :cond_1f

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    move v4, v2

    goto :goto_20

    :cond_1f
    move v4, v3

    .line 124
    :goto_20
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    .line 125
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 127
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    if-ne v1, v6, :cond_38

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    if-ne v4, v6, :cond_38

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    if-eq v5, v6, :cond_39

    :cond_38
    move v2, v3

    :cond_39
    if-nez v2, :cond_3d

    if-eqz p1, :cond_48

    .line 131
    :cond_3d
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    .line 132
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrusted:Z

    .line 134
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->notifyListeners()V

    .line 138
    :cond_48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canSkipBouncer()Z
    .registers 1

    .line 100
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "UnlockMethodCache"

    .line 148
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSecure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCanSkipBouncer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTrustManaged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTrusted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebugUnlocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mDebugUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFaceAuthEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceAuthEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isFaceAuthEnabled()Z
    .registers 1

    .line 115
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceAuthEnabled:Z

    return p0
.end method

.method public isMethodSecure()Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    return p0
.end method

.method public removeListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V
    .registers 2

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateForFaceUnlock(Z)V
    .registers 2

    .line 227
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    return-void
.end method
