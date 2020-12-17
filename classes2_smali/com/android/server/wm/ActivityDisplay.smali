.class Lcom/android/server/wm/ActivityDisplay;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityDisplay.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/ConfigurationContainer<",
        "Lcom/android/server/wm/ActivityStack;",
        ">;",
        "Lcom/android/server/wm/WindowContainerListener;"
    }
.end annotation


# static fields
.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z

.field private static sNextFreeStackId:I


# instance fields
.field final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field private mDisplayAccessUIDs:Landroid/util/IntArray;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDisplayId:I

.field private mHomeStack:Lcom/android/server/wm/ActivityStack;

.field private mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

.field mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field private mPinnedStack:Lcom/android/server/wm/ActivityStack;

.field private mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

.field private mRecentsStack:Lcom/android/server/wm/ActivityStack;

.field private mRemoved:Z

.field private mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSingleTaskInstance:Z

.field private mSleeping:Z

.field private mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

.field private mStackOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpDisplaySize:Landroid/graphics/Point;

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

.field public mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    .line 92
    sput-boolean v0, Lcom/android/server/wm/ActivityDisplay;->mIsPerfBoostAcquired:Z

    .line 93
    const/4 v1, -0x1

    sput v1, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    .line 100
    sput v0, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V
    .registers 5
    .param p1, "root"  # Lcom/android/server/wm/RootActivityContainer;
    .param p2, "display"  # Landroid/view/Display;

    .line 170
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    .line 95
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mUxPerf:Landroid/util/BoostFramework;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 160
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    .line 161
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    .line 162
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    .line 163
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 166
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 168
    new-instance v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 171
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 172
    iget-object v0, p1, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 173
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 174
    iput-object p2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    .line 175
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->createDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 176
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->updateBounds()V

    .line 177
    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .registers 9
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 765
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v0

    .line 766
    .local v0, "activityType":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 768
    .local v1, "windowingMode":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, " stack="

    const-string v5, " already exist on display="

    if-ne v0, v3, :cond_3f

    .line 769
    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_3c

    if-ne v6, p1, :cond_17

    goto :goto_3c

    .line 770
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 773
    :cond_3c
    :goto_3c
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_6f

    .line 774
    :cond_3f
    if-ne v0, v2, :cond_6f

    .line 775
    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_6d

    if-ne v6, p1, :cond_48

    goto :goto_6d

    .line 776
    :cond_48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 779
    :cond_6d
    :goto_6d
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    .line 781
    :cond_6f
    :goto_6f
    if-ne v1, v3, :cond_a0

    .line 782
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_9d

    if-ne v2, p1, :cond_78

    goto :goto_9d

    .line 783
    :cond_78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 787
    :cond_9d
    :goto_9d
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_d3

    .line 788
    :cond_a0
    if-ne v1, v2, :cond_d3

    .line 789
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_ce

    if-ne v2, p1, :cond_a9

    goto :goto_ce

    .line 790
    :cond_a9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 794
    :cond_ce
    :goto_ce
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 795
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->onSplitScreenModeActivated()V

    .line 797
    :cond_d3
    :goto_d3
    return-void
.end method

.method private alwaysCreateStack(II)Z
    .registers 5
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I

    .line 381
    const/4 v0, 0x1

    if-ne p2, v0, :cond_f

    if-eq p1, v0, :cond_e

    const/4 v1, 0x5

    if-eq p1, v1, :cond_e

    const/4 v1, 0x6

    if-eq p1, v1, :cond_e

    const/4 v1, 0x4

    if-ne p1, v1, :cond_f

    :cond_e
    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private getTopInsertPosition(Lcom/android/server/wm/ActivityStack;I)I
    .registers 6
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "candidatePosition"  # I

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 322
    .local v0, "position":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 325
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 327
    :cond_11
    :goto_11
    if-lez v0, :cond_35

    .line 328
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 329
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-nez v2, :cond_24

    .line 331
    goto :goto_35

    .line 333
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_31

    .line 335
    goto :goto_35

    .line 337
    :cond_31
    nop

    .end local v1  # "targetStack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    .line 338
    goto :goto_11

    .line 339
    :cond_35
    :goto_35
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .registers 12
    .param p1, "windowingMode"  # I
    .param p2, "supportsMultiWindow"  # Z
    .param p3, "supportsSplitScreen"  # Z
    .param p4, "supportsFreeform"  # Z
    .param p5, "supportsPip"  # Z
    .param p6, "activityType"  # I

    .line 877
    const/4 v0, 0x1

    if-eqz p1, :cond_43

    if-ne p1, v0, :cond_6

    goto :goto_43

    .line 882
    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1a

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 883
    invoke-virtual {v1, v0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isFeatureOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 884
    return v0

    .line 887
    :cond_1a
    const/4 v1, 0x0

    if-nez p2, :cond_1e

    .line 888
    return v1

    .line 891
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v2

    .line 892
    .local v2, "displayWindowingMode":I
    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eq p1, v3, :cond_36

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2a

    goto :goto_36

    .line 901
    :cond_2a
    if-nez p4, :cond_2f

    if-ne p1, v4, :cond_2f

    .line 902
    return v1

    .line 905
    :cond_2f
    if-nez p5, :cond_35

    const/4 v3, 0x2

    if-ne p1, v3, :cond_35

    .line 906
    return v1

    .line 908
    :cond_35
    return v0

    .line 894
    :cond_36
    :goto_36
    if-eqz p3, :cond_41

    .line 895
    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v3

    if-eqz v3, :cond_41

    if-eq v2, v4, :cond_41

    goto :goto_42

    :cond_41
    move v0, v1

    .line 894
    :goto_42
    return v0

    .line 879
    .end local v2  # "displayWindowingMode":I
    :cond_43
    :goto_43
    return v0
.end method

.method private onSplitScreenModeActivated()V
    .registers 10

    .line 844
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 847
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_31

    .line 848
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 849
    .local v1, "otherStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eq v1, v2, :cond_2e

    .line 850
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v2

    if-nez v2, :cond_24

    .line 851
    goto :goto_2e

    .line 853
    :cond_24
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_3a

    .line 847
    .end local v1  # "otherStack":Lcom/android/server/wm/ActivityStack;
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 859
    .end local v0  # "i":I
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 860
    nop

    .line 861
    return-void

    .line 859
    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private onSplitScreenModeDismissed()V
    .registers 12

    .line 815
    const-string v0, "onSplitScreenModeDismissed"

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 818
    const/4 v1, 0x1

    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_2f

    .line 819
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 820
    .local v4, "otherStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-nez v3, :cond_23

    .line 821
    goto :goto_2c

    .line 823
    :cond_23
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_51

    .line 818
    .end local v4  # "otherStack":Lcom/android/server/wm/ActivityStack;
    :goto_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 828
    .end local v2  # "i":I
    :cond_2f
    nop

    .line 829
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 830
    .local v1, "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_48

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_48

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 836
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 839
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 840
    .end local v1  # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    nop

    .line 841
    return-void

    .line 828
    :catchall_51
    move-exception v2

    .line 829
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 830
    .restart local v1  # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_6a

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v3, :cond_6a

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 836
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 839
    :cond_6a
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 840
    .end local v1  # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    throw v2
.end method

.method private onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1482
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1483
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 1482
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1485
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityStack;I)V
    .registers 5
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"  # I

    .line 257
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 259
    return-void
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .registers 14
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"  # I
    .param p3, "includingParents"  # Z
    .param p4, "updateLastFocusedStackReason"  # Ljava/lang/String;

    .line 265
    const/4 v0, 0x0

    if-eqz p4, :cond_8

    .line 266
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 267
    .local v1, "prevFocusedStack":Lcom/android/server/wm/ActivityStack;
    :goto_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 268
    .local v2, "wasContained":Z
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1a

    goto :goto_31

    .line 269
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positionChildAt: Can only have one child on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_31
    :goto_31
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getTopInsertPosition(Lcom/android/server/wm/ActivityStack;I)I

    move-result v3

    .line 273
    .local v3, "insertPosition":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 280
    if-eqz v2, :cond_4f

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p2, v4, :cond_4f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 281
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_55

    .line 282
    :cond_4f
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v4, p1, :cond_55

    .line 283
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 286
    :cond_55
    :goto_55
    if-eqz p4, :cond_7a

    .line 287
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 288
    .local v0, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eq v0, v1, :cond_7a

    .line 289
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 290
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v4, v4, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    iget v5, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 291
    const/4 v6, -0x1

    if-nez v0, :cond_6a

    move v7, v6

    goto :goto_6e

    :cond_6a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v7

    .line 292
    :goto_6e
    iget-object v8, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-nez v8, :cond_73

    goto :goto_77

    :cond_73
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v6

    .line 290
    :goto_77
    invoke-static {v4, v5, v7, v6, p4}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIIILjava/lang/String;)V

    .line 301
    .end local v0  # "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_7a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_ac

    .line 305
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_9a

    const v4, 0x7fffffff

    goto :goto_9b

    :cond_9a
    move v4, v3

    .line 307
    :goto_9b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 306
    invoke-virtual {v0, v4, v5, p3}, Lcom/android/server/wm/DisplayContent;->positionStackAt(ILcom/android/server/wm/TaskStack;Z)V

    goto :goto_ac

    .line 309
    :cond_a3
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 310
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 309
    invoke-virtual {v0, v3, v4, p3}, Lcom/android/server/wm/DisplayContent;->positionStackAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 314
    :cond_ac
    :goto_ac
    if-nez v2, :cond_b1

    .line 315
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStack;->setParent(Lcom/android/server/wm/ActivityDisplay;)V

    .line 317
    :cond_b1
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 318
    return-void
.end method

.method private releaseSelfIfNeeded()V
    .registers 4

    .line 1253
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_9

    goto :goto_56

    .line 1257
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    goto :goto_1e

    :cond_1d
    move-object v0, v2

    .line 1258
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_1e
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1262
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->remove()V

    goto :goto_55

    .line 1263
    :cond_34
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1264
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    .line 1265
    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1266
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RootActivityContainer;->removeChild(Lcom/android/server/wm/ActivityDisplay;)V

    .line 1267
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1268
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->onDisplayRemoved(I)V

    .line 1270
    :cond_55
    :goto_55
    return-void

    .line 1254
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_56
    :goto_56
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 800
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 801
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_1f

    .line 802
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_f

    .line 803
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_1f

    .line 804
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_16

    .line 805
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_1f

    .line 806
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_1f

    .line 807
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 810
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->onSplitScreenModeDismissed()V

    .line 812
    :cond_1f
    :goto_1f
    return-void
.end method

.method private updateBounds()V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->setBounds(IIII)I

    .line 186
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_b

    .line 621
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    .line 623
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_6f

    .line 624
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 625
    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_3a

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    goto :goto_45

    .line 632
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    .line 634
    :goto_45
    sget v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    if-lez v0, :cond_4b

    .line 635
    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mIsPerfBoostAcquired:Z

    .line 637
    :cond_4b
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6f

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_6f

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 639
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-virtual {v0, v4, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_6f
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .registers 5
    .param p1, "opcode"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 645
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mUxPerf:Landroid/util/BoostFramework;

    .line 646
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_f

    .line 647
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 649
    :cond_f
    return-void
.end method

.method addChild(Lcom/android/server/wm/ActivityStack;I)V
    .registers 5
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"  # I

    .line 214
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_6

    .line 215
    const/4 p2, 0x0

    goto :goto_11

    .line 216
    :cond_6
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_11

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 219
    :cond_11
    :goto_11
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_3d
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 224
    return-void
.end method

.method allResumedActivitiesComplete()Z
    .registers 5

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "stackNdx":I
    :goto_8
    if-ltz v0, :cond_25

    .line 575
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 576
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_22

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 577
    const/4 v1, 0x0

    return v1

    .line 574
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 580
    .end local v0  # "stackNdx":I
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 581
    .local v0, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_4d

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allResumedActivitiesComplete: mLastFocusedStack changing from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_4d
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 586
    return v1
.end method

.method public continueUpdateImeTarget()V
    .registers 2

    .line 1500
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7

    .line 1501
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 1503
    :cond_7
    return-void
.end method

.method protected createDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method createStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .registers 11
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I
    .param p3, "onTop"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 443
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    .line 447
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 451
    :cond_15
    if-nez p2, :cond_18

    .line 454
    const/4 p2, 0x1

    .line 457
    :cond_18
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4f

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 461
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-nez v0, :cond_23

    goto :goto_4f

    .line 462
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 475
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getNextStackId()I

    move-result v0

    .line 476
    .local v0, "stackId":I
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/ActivityDisplay;->createStackUnchecked(IIIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 471
    .end local v0  # "stackId":I
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createStackUnchecked(IIIZ)Lcom/android/server/wm/ActivityStack;
    .registers 14
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I
    .param p3, "stackId"  # I
    .param p4, "onTop"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIIZ)TT;"
        }
    .end annotation

    .line 482
    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    goto :goto_f

    .line 483
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stack with windowing mode cannot with non standard activity type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_f
    :goto_f
    new-instance v0, Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v5, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move v6, p1

    move v7, p2

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityDisplay;ILcom/android/server/wm/ActivityStackSupervisor;IIZ)V

    return-object v0
.end method

.method public deferUpdateImeTarget()V
    .registers 2

    .line 1491
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7

    .line 1492
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 1494
    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1529
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v1, :cond_27

    const-string v1, " mSingleTaskInstance"

    goto :goto_29

    :cond_27
    const-string v1, ""

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1528
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1531
    .local v0, "myPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_61

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mHomeStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    :cond_61
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_7e

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRecentsStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    :cond_7e
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_9b

    .line 1538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mPinnedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    :cond_9b
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_b8

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSplitScreenPrimaryStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    :cond_b8
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_d5

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mPreferredTopFocusableStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    :cond_d5
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_f2

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLastFocusedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    :cond_f2
    return-void
.end method

.method public dumpStacks(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1552
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_21

    .line 1553
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget v1, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1554
    if-lez v0, :cond_1e

    .line 1555
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1558
    .end local v0  # "i":I
    :cond_21
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"  # I
    .param p3, "preserveWindows"  # Z
    .param p4, "notifyClients"  # Z

    .line 1390
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_6
    if-ltz v0, :cond_12

    .line 1391
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1392
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1390
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1395
    .end local v0  # "stackNdx":I
    :cond_12
    return-void
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "isPreferredDisplay"  # Z
    .param p3, "result"  # Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->clear()V

    .line 657
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_b
    if-ltz v0, :cond_74

    .line 658
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 659
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 660
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_71

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping stack: (mismatch activity/stack) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 666
    :cond_32
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityStack;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 672
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_71

    .line 673
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v2, :cond_6a

    .line 674
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_52

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 679
    :cond_52
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_64

    .line 681
    const/4 v2, 0x6

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityDisplay;->acquireUxPerfLock(ILjava/lang/String;)V

    .line 683
    :cond_64
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {p3, v2}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 684
    return-void

    .line 685
    :cond_6a
    if-eqz p2, :cond_71

    .line 689
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {p3, v2}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 657
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_71
    :goto_71
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 695
    .end local v0  # "stackNdx":I
    :cond_74
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_89

    .line 696
    :cond_86
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 698
    :cond_89
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ActivityStack;
    .registers 3
    .param p1, "index"  # I

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 4

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_5

    .line 496
    return-object v0

    .line 499
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_21

    .line 500
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 501
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 502
    return-object v1

    .line 499
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 506
    .end local v0  # "i":I
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .registers 10
    .param p1, "userId"  # I

    .line 1428
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1429
    return-object v1

    .line 1432
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1433
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_10
    if-ltz v2, :cond_43

    .line 1434
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 1435
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1436
    goto :goto_40

    .line 1439
    :cond_1f
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1440
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_27
    if-ltz v5, :cond_40

    .line 1441
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1442
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_3d

    const/4 v7, -0x1

    if-eq p1, v7, :cond_3c

    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v7, p1, :cond_3d

    .line 1444
    :cond_3c
    return-object v6

    .line 1440
    .end local v6  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3d
    add-int/lit8 v5, v5, -0x1

    goto :goto_27

    .line 1433
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v5  # "activityNdx":I
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 1448
    .end local v2  # "taskNdx":I
    :cond_43
    return-object v1
.end method

.method getHomeStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 1418
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getIndexOf(Lcom/android/server/wm/ActivityStack;)I
    .registers 3
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getLastFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getNextFocusableStack()Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 510
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .registers 8
    .param p1, "currentFocus"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "ignoreCurrent"  # Z

    .line 514
    if-eqz p1, :cond_7

    .line 515
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 517
    .local v0, "currentWindowingMode":I
    :goto_8
    const/4 v1, 0x0

    .line 518
    .local v1, "candidate":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_41

    .line 519
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 520
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_20

    if-ne v3, p1, :cond_20

    .line 521
    goto :goto_34

    .line 523
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-nez v4, :cond_27

    .line 524
    goto :goto_34

    .line 527
    :cond_27
    const/4 v4, 0x4

    if-ne v0, v4, :cond_37

    if-nez v1, :cond_37

    .line 528
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 536
    move-object v1, v3

    .line 537
    nop

    .line 518
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 539
    .restart local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_37
    if-eqz v1, :cond_40

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 541
    return-object v1

    .line 543
    :cond_40
    return-object v3

    .line 545
    .end local v2  # "i":I
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_41
    return-object v1
.end method

.method getNextStackId()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 427
    sget v0, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    return v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I
    .param p3, "onTop"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 400
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v0, :cond_d

    .line 401
    return-object v0

    .line 404
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"  # Lcom/android/server/wm/TaskRecord;
    .param p4, "activityType"  # I
    .param p5, "onTop"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/wm/TaskRecord;",
            "IZ)TT;"
        }
    .end annotation

    .line 416
    if-eqz p2, :cond_7

    .line 417
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 421
    .local v0, "windowingMode":I
    :goto_8
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    .line 422
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 1174
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getPresentUIDs()Landroid/util/IntArray;
    .registers 4

    .line 1274
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1275
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1276
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getPresentUIDs(Landroid/util/IntArray;)V

    .line 1277
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_b

    .line 1278
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 549
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 550
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_8

    .line 551
    const/4 v1, 0x0

    return-object v1

    .line 555
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 556
    .local v1, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_1f

    .line 559
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 560
    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_1f

    .line 563
    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 566
    :cond_1f
    return-object v1
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 1142
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .param p1, "stackId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 345
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    if-ne v2, p1, :cond_17

    .line 346
    return-object v1

    .line 343
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 349
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .registers 6
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 358
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 360
    :cond_6
    const/4 v1, 0x3

    if-ne p2, v1, :cond_c

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 363
    :cond_c
    if-ne p1, v0, :cond_11

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 365
    :cond_11
    if-ne p1, v1, :cond_16

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 369
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1e
    if-ltz v0, :cond_32

    .line 370
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 371
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 372
    return-object v1

    .line 369
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 375
    .end local v0  # "i":I
    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1332
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1333
    .local v0, "stackIndex":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1
.end method

.method getTopStack()Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 1002
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_18

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    :goto_18
    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .param p1, "windowingMode"  # I

    .line 1020
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1021
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1022
    .local v1, "current":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 1023
    return-object v1

    .line 1020
    .end local v1  # "current":Lcom/android/server/wm/ActivityStack;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1026
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1121
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    goto :goto_3e

    .line 1125
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1126
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1127
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 1128
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 1130
    :cond_26
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1131
    return-void

    .line 1133
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_2e

    .line 1134
    return-void

    .line 1136
    :cond_2e
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1137
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 1138
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 1139
    return-void

    .line 1123
    :cond_3e
    :goto_3e
    return-void
.end method

.method hasPinnedStack()Z
    .registers 2

    .line 1154
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasSplitScreenPrimaryStack()Z
    .registers 2

    .line 1146
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isPrivate()Z
    .registers 2

    .line 1178
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isRemoved()Z
    .registers 2

    .line 1194
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    return v0
.end method

.method isSingleTaskInstance()Z
    .registers 2

    .line 1524
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    return v0
.end method

.method isSleeping()Z
    .registers 2

    .line 1452
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSleeping:Z

    return v0
.end method

.method isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z
    .registers 7
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1010
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_21

    .line 1011
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 1012
    .local v3, "current":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1013
    if-ne v3, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1

    .line 1010
    .end local v3  # "current":Lcom/android/server/wm/ActivityStack;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1016
    .end local v0  # "i":I
    :cond_21
    return v2
.end method

.method isTopStack(Lcom/android/server/wm/ActivityStack;)Z
    .registers 3
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isUidPresent(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 1182
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1183
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->isUidPresent(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1184
    const/4 v0, 0x1

    return v0

    .line 1186
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1a
    goto :goto_6

    .line 1187
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1409
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_a

    .line 1410
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1411
    return-void

    .line 1413
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1414
    return-void
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 1398
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_7

    .line 1399
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1401
    :cond_7
    return-void
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 10
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1341
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1343
    return-void

    .line 1347
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V

    .line 1350
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1351
    .local v1, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_12
    if-ge v2, v1, :cond_41

    .line 1352
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 1353
    .local v3, "s":Lcom/android/server/wm/ActivityStack;
    if-ne v3, p1, :cond_1f

    .line 1354
    goto :goto_3e

    .line 1356
    :cond_1f
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    .line 1357
    .local v4, "winMode":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2c

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2b

    goto :goto_2c

    :cond_2b
    move v6, v5

    .line 1359
    .local v6, "isValidWindowingMode":Z
    :cond_2c
    :goto_2c
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_3e

    if-eqz v6, :cond_3e

    .line 1361
    add-int/lit8 v0, v2, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 1362
    goto :goto_41

    .line 1351
    .end local v3  # "s":Lcom/android/server/wm/ActivityStack;
    .end local v4  # "winMode":I
    .end local v6  # "isValidWindowingMode":Z
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1365
    .end local v2  # "stackNdx":I
    :cond_41
    :goto_41
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V
    .registers 7
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "behindStack"  # Lcom/android/server/wm/ActivityStack;

    .line 1373
    if-eqz p2, :cond_20

    if-ne p2, p1, :cond_5

    goto :goto_20

    .line 1381
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1382
    .local v0, "stackIndex":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1383
    .local v1, "behindStackIndex":I
    if-gt v0, v1, :cond_16

    .line 1384
    add-int/lit8 v2, v1, -0x1

    goto :goto_17

    :cond_16
    move v2, v1

    .line 1385
    .local v2, "insertIndex":I
    :goto_17
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 1386
    return-void

    .line 1374
    .end local v0  # "stackIndex":I
    .end local v1  # "behindStackIndex":I
    .end local v2  # "insertIndex":I
    :cond_20
    :goto_20
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 1099
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7

    .line 1100
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->preOnConfigurationChanged()V

    .line 1102
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1103
    return-void
.end method

.method onDisplayChanged()V
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 191
    .local v0, "displayId":I
    if-eqz v0, :cond_2d

    .line 192
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 193
    .local v1, "displayState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v2, :cond_20

    .line 194
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v3, "Display-off"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_2d

    .line 195
    :cond_20
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v2, :cond_2d

    .line 196
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 197
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 201
    .end local v1  # "displayState":I
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->updateBounds()V

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_3e

    .line 203
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 204
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 206
    :cond_3e
    return-void
.end method

.method onExitingSplitScreenMode()V
    .registers 2

    .line 1116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 1117
    return-void
.end method

.method public onInitializeOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 210
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 211
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .registers 3

    .line 1106
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1107
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->onLockTaskPackagesUpdated()V

    .line 1106
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1109
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "overrideConfiguration"  # Landroid/content/res/Configuration;

    .line 1081
    nop

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 1083
    .local v0, "currRotation":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1084
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_23

    .line 1086
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1087
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 1086
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DisplayContent;->applyRotationLocked(II)V

    .line 1089
    :cond_23
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1090
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_33

    .line 1091
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V

    .line 1094
    :cond_33
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 3
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 757
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 758
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onActivityStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 762
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;Z)Z
    .registers 10
    .param p1, "userLeaving"  # Z
    .param p2, "resuming"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "dontWait"  # Z

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "someActivityPaused":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_9
    if-ltz v1, :cond_50

    .line 604
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    .line 605
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 606
    .local v3, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_4d

    .line 607
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-nez v4, :cond_25

    .line 608
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 609
    :cond_25
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_47

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pauseBackStacks: stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mResumedActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_47
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2, p3}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v4

    or-int/2addr v0, v4

    .line 603
    .end local v2  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3  # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 615
    .end local v1  # "stackNdx":I
    :cond_50
    return v0
.end method

.method positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V
    .registers 3
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "updateLastFocusedStackReason"  # Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 254
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"  # Z

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 241
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V
    .registers 5
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"  # Z
    .param p3, "updateLastFocusedStackReason"  # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 246
    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;

    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1466
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    :cond_d
    return-void
.end method

.method remove()V
    .registers 9

    .line 1198
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->shouldDestroyContentOnRemove()Z

    move-result v0

    .line 1199
    .local v0, "destroyContentOnRemoval":Z
    const/4 v1, 0x0

    .line 1200
    .local v1, "lastReparentedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 1207
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 1208
    .local v2, "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 1210
    :try_start_15
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1212
    .local v3, "numStacks":I
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_1c
    const/4 v5, 0x1

    if-ge v4, v3, :cond_57

    .line 1213
    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    .line 1215
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_42

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v7

    if-nez v7, :cond_30

    goto :goto_42

    .line 1221
    :cond_30
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1222
    const/4 v7, 0x4

    goto :goto_39

    .line 1223
    :cond_38
    const/4 v7, 0x0

    :goto_39
    nop

    .line 1224
    .local v7, "windowingMode":I
    invoke-virtual {v6, v2, v5, v5}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V

    .line 1225
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1226
    move-object v1, v6

    goto :goto_45

    .line 1216
    .end local v7  # "windowingMode":I
    :cond_42
    :goto_42
    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 1230
    :goto_45
    iget-object v7, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v7, v3, v7

    sub-int/2addr v4, v7

    .line 1231
    iget-object v7, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_54
    .catchall {:try_start_15 .. :try_end_54} :catchall_85

    move v3, v7

    .line 1212
    .end local v6  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/2addr v4, v5

    goto :goto_1c

    .line 1234
    .end local v3  # "numStacks":I
    .end local v4  # "stackNdx":I
    :cond_57
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 1235
    nop

    .line 1236
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    .line 1240
    if-eqz v1, :cond_66

    .line 1241
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    .line 1243
    :cond_66
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->releaseSelfIfNeeded()V

    .line 1245
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_84

    .line 1246
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1247
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1248
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 1250
    :cond_84
    return-void

    .line 1234
    :catchall_85
    move-exception v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    throw v3
.end method

.method removeChild(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 227
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: detaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, p1, :cond_30

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 233
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 234
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->releaseSelfIfNeeded()V

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 237
    return-void
.end method

.method removeEmptyActivityStackIfNeed()V
    .registers 6

    .line 1592
    const/4 v0, 0x0

    .line 1593
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 1594
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1595
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eq v1, v2, :cond_3b

    .line 1596
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v2

    .line 1597
    .local v2, "numActivities":I
    if-nez v2, :cond_3b

    .line 1598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove empty stack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 1600
    goto :goto_1

    .line 1603
    .end local v2  # "numActivities":I
    :cond_3b
    nop

    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, 0x1

    .line 1604
    goto :goto_1

    .line 1605
    :cond_3f
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .registers 8
    .param p1, "windowingModes"  # [I

    .line 705
    if-eqz p1, :cond_54

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_54

    .line 712
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_e
    if-ltz v1, :cond_3b

    .line 714
    aget v2, p1, v1

    .line 715
    .local v2, "windowingMode":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1a
    if-ltz v3, :cond_38

    .line 716
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 717
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 718
    goto :goto_35

    .line 720
    :cond_2b
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v2, :cond_32

    .line 721
    goto :goto_35

    .line 723
    :cond_32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 713
    .end local v2  # "windowingMode":I
    .end local v3  # "i":I
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 727
    .end local v1  # "j":I
    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_41
    if-ltz v1, :cond_53

    .line 728
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 727
    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    .line 730
    .end local v1  # "i":I
    :cond_53
    return-void

    .line 706
    .end local v0  # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_54
    :goto_54
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .registers 8
    .param p1, "activityTypes"  # [I

    .line 733
    if-eqz p1, :cond_4c

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_4c

    .line 740
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_e
    if-ltz v1, :cond_33

    .line 742
    aget v2, p1, v1

    .line 743
    .local v2, "activityType":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1a
    if-ltz v3, :cond_30

    .line 744
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 745
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_2d

    .line 746
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 741
    .end local v2  # "activityType":I
    .end local v3  # "i":I
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 751
    .end local v1  # "j":I
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_39
    if-ltz v1, :cond_4b

    .line 752
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 751
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 754
    .end local v1  # "i":I
    :cond_4b
    return-void

    .line 734
    .end local v0  # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_4c
    :goto_4c
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;I)I
    .registers 7
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p4, "activityType"  # I

    .line 925
    if-eqz p2, :cond_7

    .line 926
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 930
    .local v0, "windowingMode":I
    :goto_8
    if-nez v0, :cond_1e

    .line 931
    if-eqz p3, :cond_10

    .line 932
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 934
    :cond_10
    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    .line 935
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 937
    :cond_18
    if-nez v0, :cond_1e

    .line 939
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v0

    .line 942
    :cond_1e
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    .line 943
    if-eqz v0, :cond_26

    .line 944
    move v1, v0

    goto :goto_27

    :cond_26
    const/4 v1, 0x1

    .line 943
    :goto_27
    return v1
.end method

.method setDisplayToSingleTaskInstance()V
    .registers 6

    .line 1506
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    .line 1507
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_37

    .line 1511
    if-lez v0, :cond_34

    .line 1512
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1513
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v3

    if-gt v3, v1, :cond_15

    goto :goto_34

    .line 1514
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display stack already has multiple tasks. display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1519
    .end local v2  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_34
    :goto_34
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    .line 1520
    return-void

    .line 1508
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display already has multiple stacks. display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setFocusedApp(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "moveFocusNow"  # Z

    .line 1301
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_5

    .line 1302
    return-void

    .line 1305
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 1306
    .local v0, "token":Landroid/os/IBinder;
    const-string v1, "WindowManager"

    if-nez v0, :cond_27

    .line 1307
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing focused app, displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_25
    const/4 v1, 0x0

    .local v1, "newFocus":Lcom/android/server/wm/AppWindowToken;
    goto :goto_7c

    .line 1311
    .end local v1  # "newFocus":Lcom/android/server/wm/AppWindowToken;
    :cond_27
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1312
    .local v2, "newFocus":Lcom/android/server/wm/AppWindowToken;
    if-nez v2, :cond_51

    .line 1313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_51
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_7b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set focused app to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " moveFocusNow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_7b
    move-object v1, v2

    .end local v2  # "newFocus":Lcom/android/server/wm/AppWindowToken;
    .restart local v1  # "newFocus":Lcom/android/server/wm/AppWindowToken;
    :goto_7c
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    .line 1321
    .local v2, "changed":Z
    if-eqz p2, :cond_8f

    if-eqz v2, :cond_8f

    .line 1322
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1325
    :cond_8f
    return-void
.end method

.method setIsSleeping(Z)V
    .registers 2
    .param p1, "asleep"  # Z

    .line 1456
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityDisplay;->mSleeping:Z

    .line 1457
    return-void
.end method

.method shouldDestroyContentOnRemove()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1292
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRemoveMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method shouldSleep()Z
    .registers 2

    .line 1296
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method supportsSystemDecorations()Z
    .registers 2

    .line 1287
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1030
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .param p1, "considerKeyguardState"  # Z

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "topRunning":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1045
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_b

    .line 1046
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1050
    :cond_b
    if-nez v0, :cond_32

    .line 1051
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_32

    .line 1052
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 1054
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eq v3, v1, :cond_2f

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1055
    goto :goto_2f

    .line 1057
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_2f

    .line 1059
    goto :goto_32

    .line 1051
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 1066
    .end local v2  # "i":I
    :cond_32
    :goto_32
    if-eqz v0, :cond_4c

    if-eqz p1, :cond_4c

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1067
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1068
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1069
    const/4 v2, 0x0

    return-object v2

    .line 1072
    :cond_4c
    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;

    .line 1474
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1475
    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I
    .registers 19
    .param p1, "windowingMode"  # I
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p4, "activityType"  # I

    .line 960
    move-object v7, p0

    move v0, p1

    iget-object v1, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 961
    .local v1, "supportsMultiWindow":Z
    iget-object v2, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 962
    .local v2, "supportsSplitScreen":Z
    iget-object v3, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 963
    .local v3, "supportsFreeform":Z
    iget-object v4, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 964
    .local v4, "supportsPip":Z
    if-eqz v1, :cond_3a

    .line 965
    if-eqz p3, :cond_23

    .line 966
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v1

    .line 967
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    move v11, v1

    move v8, v2

    move v9, v3

    move v10, v4

    goto :goto_3e

    .line 969
    :cond_23
    if-eqz p2, :cond_3a

    .line 970
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    .line 971
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    .line 972
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v3

    .line 973
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    move v11, v1

    move v8, v2

    move v9, v3

    move v10, v4

    goto :goto_3e

    .line 977
    :cond_3a
    move v11, v1

    move v8, v2

    move v9, v3

    move v10, v4

    .end local v1  # "supportsMultiWindow":Z
    .end local v2  # "supportsSplitScreen":Z
    .end local v3  # "supportsFreeform":Z
    .end local v4  # "supportsPip":Z
    .local v8, "supportsSplitScreen":Z
    .local v9, "supportsFreeform":Z
    .local v10, "supportsPip":Z
    .local v11, "supportsMultiWindow":Z
    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v12

    .line 978
    .local v12, "inSplitScreenMode":Z
    if-nez v12, :cond_4a

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4a

    .line 982
    const/4 v0, 0x0

    move v13, v0

    .end local p1  # "windowingMode":I
    .local v0, "windowingMode":I
    goto :goto_57

    .line 983
    .end local v0  # "windowingMode":I
    .restart local p1  # "windowingMode":I
    :cond_4a
    if-eqz v12, :cond_56

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    if-nez v0, :cond_56

    :cond_51
    if-eqz v8, :cond_56

    .line 986
    const/4 v0, 0x4

    move v13, v0

    .end local p1  # "windowingMode":I
    .restart local v0  # "windowingMode":I
    goto :goto_57

    .line 989
    .end local v0  # "windowingMode":I
    .restart local p1  # "windowingMode":I
    :cond_56
    move v13, v0

    .end local p1  # "windowingMode":I
    .local v13, "windowingMode":I
    :goto_57
    if-eqz v13, :cond_68

    .line 990
    move-object v0, p0

    move v1, v13

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v10

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 992
    return v13

    .line 994
    :cond_68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 12
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 1562
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1563
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1564
    iget v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1565
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1566
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1567
    .local v2, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_43

    .line 1568
    iget v5, v2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1569
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1570
    .local v3, "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_42

    .line 1571
    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1573
    .end local v3  # "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_42
    goto :goto_47

    .line 1574
    :cond_43
    const/4 v5, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1576
    :goto_47
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_4f
    if-ltz v3, :cond_64

    .line 1577
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 1578
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    const-wide v5, 0x20b00000003L

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/ActivityStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1576
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_4f

    .line 1580
    .end local v3  # "stackNdx":I
    :cond_64
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1581
    return-void
.end method
