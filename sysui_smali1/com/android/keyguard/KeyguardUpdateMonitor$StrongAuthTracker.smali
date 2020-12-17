.class public Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field private final mStrongAuthRequiredChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1518
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 1519
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->mStrongAuthRequiredChangedCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public hasUserAuthenticatedSinceBoot()Z
    .registers 2

    .line 1528
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1529
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public isUnlockingWithBiometricAllowed()Z
    .registers 2

    .line 1523
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1524
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(I)Z

    move-result p0

    return p0
.end method

.method public onStrongAuthRequiredChanged(I)V
    .registers 2

    .line 1535
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->mStrongAuthRequiredChangedCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
