.class Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# instance fields
.field private final mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

.field private final mLowRefreshRateId:I

.field private final mNonHighRefreshRatePackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    .line 35
    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    .line 36
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 37
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 38
    return-void
.end method

.method private findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I
    .registers 7

    .line 45
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 48
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_f
    if-ltz v2, :cond_24

    .line 49
    aget v3, v1, v2

    const/high16 v4, 0x42700000  # 60.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_21

    aget v3, v1, v2

    cmpg-float v3, v3, v0

    if-gez v3, :cond_21

    .line 50
    aget v0, v1, v2

    .line 48
    :cond_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 53
    :cond_24
    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result p1

    return p1
.end method


# virtual methods
.method addNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 59
    return-void
.end method

.method getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .registers 5

    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 71
    return v1

    .line 75
    :cond_8
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_33

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v0, :cond_18

    goto :goto_33

    .line 79
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 83
    iget p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return p1

    .line 87
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/HighRefreshRateBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 88
    iget p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return p1

    .line 90
    :cond_32
    return v1

    .line 76
    :cond_33
    :goto_33
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    return p1
.end method

.method removeNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 64
    return-void
.end method
