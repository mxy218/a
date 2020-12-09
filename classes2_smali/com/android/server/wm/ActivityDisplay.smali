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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V
    .registers 4

    .line 161
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    .line 152
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    .line 153
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    .line 154
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 157
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 159
    new-instance v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 162
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 163
    iget-object p1, p1, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 164
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 165
    iput-object p2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    .line 166
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->createDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 167
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->updateBounds()V

    .line 168
    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .registers 8

    .line 694
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v0

    .line 695
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 697
    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, " stack="

    const-string v5, " already exist on display="

    if-ne v0, v3, :cond_3f

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_3c

    if-ne v0, p1, :cond_17

    goto :goto_3c

    .line 699
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_3c
    :goto_3c
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_6f

    .line 703
    :cond_3f
    if-ne v0, v2, :cond_6f

    .line 704
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_6d

    if-ne v0, p1, :cond_48

    goto :goto_6d

    .line 705
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_6d
    :goto_6d
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    .line 710
    :cond_6f
    :goto_6f
    if-ne v1, v3, :cond_a0

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_9d

    if-ne v0, p1, :cond_78

    goto :goto_9d

    .line 712
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_9d
    :goto_9d
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_d3

    .line 717
    :cond_a0
    if-ne v1, v2, :cond_d3

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_ce

    if-ne v0, p1, :cond_a9

    goto :goto_ce

    .line 719
    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_ce
    :goto_ce
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 724
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->onSplitScreenModeActivated()V

    .line 726
    :cond_d3
    :goto_d3
    return-void
.end method

.method private alwaysCreateStack(II)Z
    .registers 4

    .line 363
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    if-eq p1, v0, :cond_b

    const/4 p2, 0x5

    if-eq p1, p2, :cond_b

    const/4 p2, 0x4

    if-ne p1, p2, :cond_c

    :cond_b
    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private getTopInsertPosition(Lcom/android/server/wm/ActivityStack;I)I
    .registers 6

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 304
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 307
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 309
    :cond_11
    :goto_11
    if-lez v0, :cond_34

    .line 310
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 311
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-nez v2, :cond_24

    .line 313
    goto :goto_34

    .line 315
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_31

    .line 317
    goto :goto_34

    .line 319
    :cond_31
    add-int/lit8 v0, v0, -0x1

    .line 320
    goto :goto_11

    .line 321
    :cond_34
    :goto_34
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .registers 11

    .line 806
    const/4 v0, 0x1

    if-eqz p1, :cond_2f

    if-ne p1, v0, :cond_6

    goto :goto_2f

    .line 810
    :cond_6
    const/4 v1, 0x0

    if-nez p2, :cond_a

    .line 811
    return v1

    .line 814
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result p2

    .line 815
    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eq p1, v2, :cond_22

    const/4 v2, 0x4

    if-ne p1, v2, :cond_16

    goto :goto_22

    .line 824
    :cond_16
    if-nez p4, :cond_1b

    if-ne p1, v3, :cond_1b

    .line 825
    return v1

    .line 828
    :cond_1b
    if-nez p5, :cond_21

    const/4 p2, 0x2

    if-ne p1, p2, :cond_21

    .line 829
    return v1

    .line 831
    :cond_21
    return v0

    .line 817
    :cond_22
    :goto_22
    if-eqz p3, :cond_2d

    .line 818
    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result p1

    if-eqz p1, :cond_2d

    if-eq p2, v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    .line 817
    :goto_2e
    return v0

    .line 808
    :cond_2f
    :goto_2f
    return v0
.end method

.method private onSplitScreenModeActivated()V
    .registers 10

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 776
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_31

    .line 777
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    .line 778
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eq v2, v1, :cond_2e

    .line 779
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v1

    if-nez v1, :cond_25

    .line 780
    goto :goto_2e

    .line 782
    :cond_25
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_3a

    .line 776
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 788
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 789
    nop

    .line 790
    return-void

    .line 788
    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private onSplitScreenModeDismissed()V
    .registers 12

    .line 744
    const-string v0, "onSplitScreenModeDismissed"

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 747
    const/4 v1, 0x1

    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_11
    if-ltz v2, :cond_2f

    .line 748
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 749
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-nez v3, :cond_23

    .line 750
    goto :goto_2c

    .line 752
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

    .line 747
    :goto_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 757
    :cond_2f
    nop

    .line 758
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 759
    if-eqz v1, :cond_48

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_48

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 765
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 768
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 769
    nop

    .line 770
    return-void

    .line 757
    :catchall_51
    move-exception v2

    .line 758
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 759
    if-eqz v1, :cond_6a

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v3, :cond_6a

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 765
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 768
    :cond_6a
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 769
    throw v2
.end method

.method private onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 4

    .line 1405
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1406
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 1405
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1408
    :cond_18
    return-void
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityStack;I)V
    .registers 5

    .line 248
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 250
    return-void
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .registers 11

    .line 256
    const/4 v0, 0x0

    if-eqz p4, :cond_8

    .line 257
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 258
    :goto_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 259
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1a

    goto :goto_31

    .line 260
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "positionChildAt: Can only have one child on display="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    :cond_31
    :goto_31
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getTopInsertPosition(Lcom/android/server/wm/ActivityStack;I)I

    move-result v3

    .line 264
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 271
    if-eqz v2, :cond_4f

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p2, v4, :cond_4f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 272
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_55

    .line 273
    :cond_4f
    iget-object p2, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne p2, p1, :cond_55

    .line 274
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 277
    :cond_55
    :goto_55
    if-eqz p4, :cond_7a

    .line 278
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 279
    if-eq p2, v1, :cond_7a

    .line 280
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 282
    const/4 v4, -0x1

    if-nez p2, :cond_6a

    move p2, v4

    goto :goto_6e

    :cond_6a
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result p2

    .line 283
    :goto_6e
    iget-object v5, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-nez v5, :cond_73

    goto :goto_77

    :cond_73
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v4

    .line 281
    :goto_77
    invoke-static {v0, v1, p2, v4, p4}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIIILjava/lang/String;)V

    .line 292
    :cond_7a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object p2

    if-eqz p2, :cond_8c

    iget-object p2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p2, :cond_8c

    .line 293
    nop

    .line 294
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object p4

    .line 293
    invoke-virtual {p2, v3, p4, p3}, Lcom/android/server/wm/DisplayContent;->positionStackAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 296
    :cond_8c
    if-nez v2, :cond_91

    .line 297
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStack;->setParent(Lcom/android/server/wm/ActivityDisplay;)V

    .line 299
    :cond_91
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 300
    return-void
.end method

.method private releaseSelfIfNeeded()V
    .registers 4

    .line 1176
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_9

    goto :goto_56

    .line 1180
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

    .line 1181
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

    .line 1185
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->remove()V

    goto :goto_55

    .line 1186
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1187
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    .line 1188
    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootActivityContainer;->removeChild(Lcom/android/server/wm/ActivityDisplay;)V

    .line 1190
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1191
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->onDisplayRemoved(I)V

    .line 1193
    :cond_55
    :goto_55
    return-void

    .line 1177
    :cond_56
    :goto_56
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .registers 4

    .line 729
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 730
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_1f

    .line 731
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_f

    .line 732
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_1f

    .line 733
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_16

    .line 734
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_1f

    .line 735
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_1f

    .line 736
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 739
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->onSplitScreenModeDismissed()V

    .line 741
    :cond_1f
    :goto_1f
    return-void
.end method

.method private updateBounds()V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->setBounds(IIII)I

    .line 177
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityStack;I)V
    .registers 4

    .line 205
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_6

    .line 206
    const/4 p2, 0x0

    goto :goto_11

    .line 207
    :cond_6
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_11

    .line 208
    iget-object p2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 212
    :cond_11
    :goto_11
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 214
    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 215
    return-void
.end method

.method allResumedActivitiesComplete()Z
    .registers 5

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_25

    .line 554
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 555
    if-eqz v2, :cond_22

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 556
    const/4 v0, 0x0

    return v0

    .line 553
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 559
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 564
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 565
    return v1
.end method

.method public continueUpdateImeTarget()V
    .registers 2

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7

    .line 1424
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 1426
    :cond_7
    return-void
.end method

.method protected createDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method createStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 422
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1

    .line 430
    :cond_15
    const/4 v0, 0x1

    if-nez p2, :cond_19

    .line 433
    move p2, v0

    .line 436
    :cond_19
    if-eq p2, v0, :cond_4f

    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 440
    if-nez v0, :cond_23

    goto :goto_4f

    .line 441
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " of activityType="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already on display="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Can\'t have multiple."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    move-object v1, p0

    move v2, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 454
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getNextStackId()I

    move-result v0

    .line 455
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/ActivityDisplay;->createStackUnchecked(IIIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1

    .line 450
    :cond_71
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method createStackUnchecked(IIIZ)Lcom/android/server/wm/ActivityStack;
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIIZ)TT;"
        }
    .end annotation

    .line 461
    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    goto :goto_f

    .line 462
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stack with windowing mode cannot with non standard activity type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_f
    :goto_f
    new-instance v7, Lcom/android/server/wm/ActivityStack;

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object v0, v7

    move-object v1, p0

    move v2, p3

    move v4, p1

    move v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityDisplay;ILcom/android/server/wm/ActivityStackSupervisor;IIZ)V

    return-object v7
.end method

.method public deferUpdateImeTarget()V
    .registers 2

    .line 1414
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7

    .line 1415
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 1417
    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1451
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

    .line 1452
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

    .line 1451
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1454
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_61

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHomeStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    :cond_61
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_7e

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRecentsStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    :cond_7e
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_9b

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPinnedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    :cond_9b
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_b8

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSplitScreenPrimaryStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    :cond_b8
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_d5

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPreferredTopFocusableStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    :cond_d5
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_f2

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mLastFocusedStack="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    :cond_f2
    return-void
.end method

.method public dumpStacks(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1475
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    .line 1476
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget v1, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1477
    if-lez v0, :cond_1e

    .line 1478
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1481
    :cond_21
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 1314
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1315
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1313
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1318
    :cond_12
    return-void
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V
    .registers 7

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->clear()V

    .line 603
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_39

    .line 604
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 605
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 609
    goto :goto_36

    .line 612
    :cond_18
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityStack;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 618
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_36

    .line 619
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v1, v1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v1, :cond_2f

    .line 620
    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 621
    return-void

    .line 622
    :cond_2f
    if-eqz p2, :cond_36

    .line 626
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 603
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 630
    :cond_39
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 1092
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityStack;

    return-object p1
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 4

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_5

    .line 475
    return-object v0

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_21

    .line 479
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 480
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 481
    return-object v1

    .line 478
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 485
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1346
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .registers 9

    .line 1351
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1352
    return-object v1

    .line 1355
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10
    if-ltz v2, :cond_43

    .line 1357
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 1358
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1359
    goto :goto_40

    .line 1362
    :cond_1f
    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1363
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_27
    if-ltz v4, :cond_40

    .line 1364
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1365
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v6, -0x1

    if-eq p1, v6, :cond_3c

    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v6, p1, :cond_3d

    .line 1367
    :cond_3c
    return-object v5

    .line 1363
    :cond_3d
    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    .line 1356
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 1371
    :cond_43
    return-object v1
.end method

.method getHomeStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 1341
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getIndexOf(Lcom/android/server/wm/ActivityStack;)I
    .registers 3

    .line 999
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method getLastFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getNextFocusableStack()Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 489
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .registers 8

    .line 493
    if-eqz p1, :cond_7

    .line 494
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 496
    :goto_8
    const/4 v1, 0x0

    .line 497
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_11
    if-ltz v2, :cond_41

    .line 498
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 499
    if-eqz p2, :cond_20

    if-ne v3, p1, :cond_20

    .line 500
    goto :goto_34

    .line 502
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-nez v4, :cond_27

    .line 503
    goto :goto_34

    .line 506
    :cond_27
    const/4 v4, 0x4

    if-ne v0, v4, :cond_37

    if-nez v1, :cond_37

    .line 507
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 515
    nop

    .line 516
    move-object v1, v3

    .line 497
    :goto_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 518
    :cond_37
    if-eqz v1, :cond_40

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 520
    return-object v1

    .line 522
    :cond_40
    return-object v3

    .line 524
    :cond_41
    return-object v1
.end method

.method getNextStackId()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 406
    sget v0, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    return v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_d

    .line 380
    return-object v0

    .line 383
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;
    .registers 6
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

    .line 395
    if-eqz p2, :cond_7

    .line 396
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 400
    :goto_8
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result p1

    .line 401
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 1097
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 1073
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getPresentUIDs()Landroid/util/IntArray;
    .registers 4

    .line 1197
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1198
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

    .line 1199
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getPresentUIDs(Landroid/util/IntArray;)V

    .line 1200
    goto :goto_b

    .line 1201
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 528
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 529
    if-nez v0, :cond_8

    .line 530
    const/4 v0, 0x0

    return-object v0

    .line 534
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 535
    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_1f

    .line 538
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 539
    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_1f

    .line 542
    :cond_1a
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 545
    :cond_1f
    return-object v1
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 1065
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 326
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 327
    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    if-ne v2, p1, :cond_17

    .line 328
    return-object v1

    .line 325
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 331
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 340
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 341
    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    return-object p1

    .line 342
    :cond_6
    const/4 v1, 0x3

    if-ne p2, v1, :cond_c

    .line 343
    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    return-object p1

    .line 345
    :cond_c
    if-ne p1, v0, :cond_11

    .line 346
    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    return-object p1

    .line 347
    :cond_11
    if-ne p1, v1, :cond_16

    .line 348
    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    return-object p1

    .line 351
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_32

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 353
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 354
    return-object v1

    .line 351
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 357
    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method

.method getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 1255
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1256
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityStack;

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return-object p1
.end method

.method getTopStack()Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 925
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

    .line 943
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 944
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 945
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 946
    return-object v1

    .line 943
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 949
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 1044
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    goto :goto_3e

    .line 1048
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1049
    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 1050
    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 1051
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 1053
    :cond_26
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1054
    return-void

    .line 1056
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_2e

    .line 1057
    return-void

    .line 1059
    :cond_2e
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1060
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 1061
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 1062
    return-void

    .line 1046
    :cond_3e
    :goto_3e
    return-void
.end method

.method hasPinnedStack()Z
    .registers 2

    .line 1077
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

    .line 1069
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

    .line 1101
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

    .line 1117
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    return v0
.end method

.method isSingleTaskInstance()Z
    .registers 2

    .line 1447
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    return v0
.end method

.method isSleeping()Z
    .registers 2

    .line 1375
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSleeping:Z

    return v0
.end method

.method isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z
    .registers 7

    .line 933
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_21

    .line 934
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 935
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 936
    if-ne v3, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1

    .line 933
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 939
    :cond_21
    return v2
.end method

.method isTopStack(Lcom/android/server/wm/ActivityStack;)Z
    .registers 3

    .line 929
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method isUidPresent(I)Z
    .registers 4

    .line 1105
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

    .line 1106
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->isUidPresent(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1107
    const/4 p1, 0x1

    return p1

    .line 1109
    :cond_1a
    goto :goto_6

    .line 1110
    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .registers 3

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1332
    if-nez v0, :cond_a

    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1334
    return-void

    .line 1336
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1337
    return-void
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .registers 3

    .line 1321
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_7

    .line 1322
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1324
    :cond_7
    return-void
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 10

    .line 1264
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1266
    return-void

    .line 1270
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V

    .line 1273
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1274
    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_42

    .line 1275
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 1276
    if-ne v4, p1, :cond_20

    .line 1277
    goto :goto_3f

    .line 1279
    :cond_20
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    .line 1280
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2d

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2b

    goto :goto_2d

    :cond_2b
    move v5, v2

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v5, v6

    .line 1282
    :goto_2e
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_3f

    if-eqz v5, :cond_3f

    .line 1284
    sub-int/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 1285
    goto :goto_42

    .line 1274
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1288
    :cond_42
    :goto_42
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V
    .registers 5

    .line 1296
    if-eqz p2, :cond_20

    if-ne p2, p1, :cond_5

    goto :goto_20

    .line 1304
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1305
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1306
    if-gt v0, p2, :cond_16

    .line 1307
    add-int/lit8 p2, p2, -0x1

    goto :goto_17

    :cond_16
    nop

    .line 1308
    :goto_17
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 1309
    return-void

    .line 1297
    :cond_20
    :goto_20
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1022
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7

    .line 1023
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->preOnConfigurationChanged()V

    .line 1025
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1026
    return-void
.end method

.method onDisplayChanged()V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 182
    if-eqz v0, :cond_2d

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 184
    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v2, :cond_20

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v2, "Display-off"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_2d

    .line 186
    :cond_20
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_2d

    .line 187
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 192
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->updateBounds()V

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_3e

    .line 194
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 197
    :cond_3e
    return-void
.end method

.method onExitingSplitScreenMode()V
    .registers 2

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 1040
    return-void
.end method

.method public onInitializeOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 201
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 202
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .registers 3

    .line 1029
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1030
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->onLockTaskPackagesUpdated()V

    .line 1029
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1032
    :cond_18
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1004
    nop

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 1006
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1007
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_23

    .line 1009
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1010
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 1009
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DisplayContent;->applyRotationLocked(II)V

    .line 1012
    :cond_23
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1013
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_33

    .line 1014
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V

    .line 1017
    :cond_33
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 2

    .line 689
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 690
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 691
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;Z)Z
    .registers 9

    .line 581
    nop

    .line 582
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ltz v0, :cond_2f

    .line 583
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 584
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 585
    if-eqz v4, :cond_2c

    .line 586
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-nez v4, :cond_27

    .line 587
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 590
    :cond_27
    invoke-virtual {v3, p1, v1, p2, p3}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 582
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 594
    :cond_2f
    return v2
.end method

.method positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V
    .registers 3

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .registers 4

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 245
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V
    .registers 4

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 232
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 237
    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    .registers 3

    .line 1388
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1389
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    :cond_d
    return-void
.end method

.method remove()V
    .registers 10

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->shouldDestroyContentOnRemove()Z

    move-result v0

    .line 1122
    nop

    .line 1123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 1130
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 1131
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 1133
    :try_start_15
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1135
    const/4 v4, 0x0

    move-object v5, v1

    move v1, v4

    :goto_1e
    const/4 v6, 0x1

    if-ge v1, v3, :cond_56

    .line 1136
    iget-object v7, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityStack;

    .line 1138
    if-nez v0, :cond_43

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v8

    if-nez v8, :cond_32

    goto :goto_43

    .line 1144
    :cond_32
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1145
    const/4 v5, 0x4

    goto :goto_3b

    .line 1146
    :cond_3a
    move v5, v4

    .line 1147
    :goto_3b
    invoke-virtual {v7, v2, v6, v6}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V

    .line 1148
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1149
    move-object v5, v7

    goto :goto_46

    .line 1139
    :cond_43
    :goto_43
    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 1153
    :goto_46
    iget-object v7, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v3, v7

    sub-int/2addr v1, v3

    .line 1154
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_54
    .catchall {:try_start_15 .. :try_end_54} :catchall_84

    .line 1135
    add-int/2addr v1, v6

    goto :goto_1e

    .line 1157
    :cond_56
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 1158
    nop

    .line 1159
    iput-boolean v6, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    .line 1163
    if-eqz v5, :cond_65

    .line 1164
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    .line 1166
    :cond_65
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->releaseSelfIfNeeded()V

    .line 1168
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1170
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1171
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 1173
    :cond_83
    return-void

    .line 1157
    :catchall_84
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    throw v0
.end method

.method removeChild(Lcom/android/server/wm/ActivityStack;)V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, p1, :cond_c

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 224
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 225
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->releaseSelfIfNeeded()V

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 228
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .registers 8

    .line 637
    if-eqz p1, :cond_54

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_54

    .line 644
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_3b

    .line 646
    aget v2, p1, v1

    .line 647
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1a
    if-ltz v3, :cond_38

    .line 648
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 649
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 650
    goto :goto_35

    .line 652
    :cond_2b
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v2, :cond_32

    .line 653
    goto :goto_35

    .line 655
    :cond_32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :goto_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 645
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 659
    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_41
    if-ltz p1, :cond_53

    .line 660
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 659
    add-int/lit8 p1, p1, -0x1

    goto :goto_41

    .line 662
    :cond_53
    return-void

    .line 638
    :cond_54
    :goto_54
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .registers 8

    .line 665
    if-eqz p1, :cond_4c

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_4c

    .line 672
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_33

    .line 674
    aget v2, p1, v1

    .line 675
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1a
    if-ltz v3, :cond_30

    .line 676
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 677
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_2d

    .line 678
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 673
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 683
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_39
    if-ltz p1, :cond_4b

    .line 684
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 683
    add-int/lit8 p1, p1, -0x1

    goto :goto_39

    .line 686
    :cond_4b
    return-void

    .line 666
    :cond_4c
    :goto_4c
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;I)I
    .registers 5

    .line 848
    if-eqz p2, :cond_7

    .line 849
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 853
    :goto_8
    if-nez p2, :cond_1e

    .line 854
    if-eqz p3, :cond_10

    .line 855
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result p2

    .line 857
    :cond_10
    if-nez p2, :cond_18

    if-eqz p1, :cond_18

    .line 858
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result p2

    .line 860
    :cond_18
    if-nez p2, :cond_1e

    .line 862
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result p2

    .line 865
    :cond_1e
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result p1

    .line 866
    if-eqz p1, :cond_25

    .line 867
    goto :goto_26

    :cond_25
    const/4 p1, 0x1

    .line 866
    :goto_26
    return p1
.end method

.method setDisplayToSingleTaskInstance()V
    .registers 5

    .line 1429
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    .line 1430
    const/4 v1, 0x1

    if-gt v0, v1, :cond_37

    .line 1434
    if-lez v0, :cond_34

    .line 1435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1436
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v2

    if-gt v2, v1, :cond_15

    goto :goto_34

    .line 1437
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display stack already has multiple tasks. display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1442
    :cond_34
    :goto_34
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    .line 1443
    return-void

    .line 1431
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display already has multiple stacks. display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFocusedApp(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 6

    .line 1224
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_5

    .line 1225
    return-void

    .line 1228
    :cond_5
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 1229
    if-nez p1, :cond_b

    .line 1232
    const/4 p1, 0x0

    goto :goto_38

    .line 1234
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1235
    if-nez v0, :cond_37

    .line 1236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", displayId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WindowManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_37
    move-object p1, v0

    :goto_38
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    .line 1244
    if-eqz p2, :cond_4b

    if-eqz p1, :cond_4b

    .line 1245
    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1248
    :cond_4b
    return-void
.end method

.method setIsSleeping(Z)V
    .registers 2

    .line 1379
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityDisplay;->mSleeping:Z

    .line 1380
    return-void
.end method

.method shouldDestroyContentOnRemove()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1215
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

    .line 1219
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

    .line 1210
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1082
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

    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 8

    .line 966
    nop

    .line 967
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 968
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 969
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_e

    .line 968
    :cond_d
    move-object v2, v1

    .line 973
    :goto_e
    if-nez v2, :cond_35

    .line 974
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_18
    if-ltz v3, :cond_35

    .line 975
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 977
    if-eq v4, v0, :cond_32

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 978
    goto :goto_32

    .line 980
    :cond_2b
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 981
    if-eqz v2, :cond_32

    .line 982
    goto :goto_35

    .line 974
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 989
    :cond_35
    :goto_35
    if-eqz v2, :cond_4e

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 990
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 991
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p1

    if-nez p1, :cond_4e

    .line 992
    return-object v1

    .line 995
    :cond_4e
    return-object v2
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    .registers 3

    .line 1397
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1398
    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I
    .registers 16

    .line 883
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 884
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 885
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 886
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 887
    if-eqz v0, :cond_38

    .line 888
    if-eqz p3, :cond_21

    .line 889
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    .line 890
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    goto :goto_3c

    .line 892
    :cond_21
    if-eqz p2, :cond_38

    .line 893
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    .line 894
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 895
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v2

    .line 896
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v3

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    goto :goto_3c

    .line 900
    :cond_38
    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    :goto_3c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result p2

    .line 901
    const/4 p3, 0x0

    const/4 v0, 0x4

    if-nez p2, :cond_48

    if-ne p1, v0, :cond_48

    .line 905
    move p1, p3

    goto :goto_52

    .line 906
    :cond_48
    if-eqz p2, :cond_52

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4f

    if-nez p1, :cond_52

    :cond_4f
    if-eqz v7, :cond_52

    .line 909
    move p1, v0

    .line 912
    :cond_52
    :goto_52
    if-eqz p1, :cond_5e

    .line 913
    move-object v4, p0

    move v5, p1

    move v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 915
    return p1

    .line 917
    :cond_5e
    return p3
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 9

    .line 1485
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1486
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1487
    iget v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1488
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1490
    const-wide v1, 0x10500000004L

    if-eqz v0, :cond_43

    .line 1491
    iget v3, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1492
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1493
    if-eqz v0, :cond_42

    .line 1494
    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1496
    :cond_42
    goto :goto_47

    .line 1497
    :cond_43
    const/4 v0, -0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1499
    :goto_47
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4f
    if-ltz v0, :cond_64

    .line 1500
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1501
    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/ActivityStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1499
    add-int/lit8 v0, v0, -0x1

    goto :goto_4f

    .line 1503
    :cond_64
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1504
    return-void
.end method
