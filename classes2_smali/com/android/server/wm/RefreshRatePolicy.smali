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
    .param p1, "wmService"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayInfo"  # Landroid/view/DisplayInfo;
    .param p3, "blacklist"  # Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    .line 40
    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    .line 41
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    return-void
.end method

.method private findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I
    .registers 8
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 50
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 51
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 52
    .local v1, "refreshRates":[F
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 53
    .local v2, "bestRefreshRate":F
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_f
    if-ltz v3, :cond_24

    .line 54
    aget v4, v1, v3

    const/high16 v5, 0x42700000  # 60.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_21

    aget v4, v1, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_21

    .line 55
    aget v2, v1, v3

    .line 53
    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 58
    .end local v3  # "i":I
    :cond_24
    invoke-virtual {p1, v2}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result v3

    return v3
.end method


# virtual methods
.method addNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 64
    return-void
.end method

.method clearNonHighRefreshRatePackage()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 74
    return-void
.end method

.method getNonHighRefreshRatePackages()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .registers 9
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 84
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 85
    return v1

    .line 89
    :cond_8
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_86

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v0, :cond_19

    goto/16 :goto_86

    .line 93
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v2

    .line 97
    .local v2, "controllerRefresh":Z
    if-nez v2, :cond_6c

    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    .line 99
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_3b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, v5, :cond_3b

    goto :goto_3c

    :cond_3b
    move v4, v1

    :goto_3c
    move v2, v4

    goto :goto_6c

    .line 101
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v3

    .line 102
    .local v3, "windowingMode":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_51

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_51

    const/4 v5, 0x5

    if-ne v3, v5, :cond_4f

    goto :goto_51

    :cond_4f
    move v5, v1

    goto :goto_52

    :cond_51
    :goto_51
    move v5, v4

    :goto_52
    move v2, v5

    .line 103
    if-eqz v2, :cond_6a

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_6a

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, v6, :cond_6a

    goto :goto_6b

    :cond_6a
    move v4, v1

    :goto_6b
    move v2, v4

    .line 106
    .end local v3  # "windowingMode":I
    :cond_6c
    :goto_6c
    if-nez v2, :cond_6f

    .line 107
    return v1

    .line 112
    :cond_6f
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 113
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    .line 117
    :cond_7a
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/HighRefreshRateBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 118
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    .line 120
    :cond_85
    return v1

    .line 90
    .end local v0  # "packageName":Ljava/lang/String;
    .end local v2  # "controllerRefresh":Z
    :cond_86
    :goto_86
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    return v0
.end method

.method removeNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 69
    return-void
.end method
