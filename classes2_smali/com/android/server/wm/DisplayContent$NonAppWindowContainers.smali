.class Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonAppWindowContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<",
        "Lcom/android/server/wm/WindowToken;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mGetOrientingWindow:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 4696
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4697
    invoke-direct {p0, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 4673
    new-instance p1, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc;-><init>(Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWindowComparator:Ljava/util/Comparator;

    .line 4680
    sget-object p1, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mGetOrientingWindow:Ljava/util/function/Predicate;

    .line 4693
    new-instance p1, Lcom/android/server/wm/Dimmer;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 4694
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 4698
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mName:Ljava/lang/String;

    .line 4699
    return-void
.end method

.method static synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 4681
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-nez v0, :cond_c

    goto :goto_1d

    .line 4684
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4685
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/4 v0, -0x2

    if-ne p0, v0, :cond_1a

    goto :goto_1c

    .line 4689
    :cond_1a
    const/4 p0, 0x1

    return p0

    .line 4687
    :cond_1c
    :goto_1c
    return v1

    .line 4682
    :cond_1d
    :goto_1d
    return v1
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    .line 4702
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 4703
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 4747
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 4742
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation()I
    .registers 6

    .line 4707
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4709
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mGetOrientingWindow:Ljava/util/function/Predicate;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4711
    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v1, :cond_32

    .line 4712
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4713
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4714
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v4}, Lcom/android/server/wm/DisplayContent;->access$502(Lcom/android/server/wm/DisplayContent;I)I

    .line 4715
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_2b

    .line 4717
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayContent;->access$602(Lcom/android/server/wm/DisplayContent;I)I

    .line 4718
    return v2

    .line 4723
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v4}, Lcom/android/server/wm/DisplayContent;->access$602(Lcom/android/server/wm/DisplayContent;I)I

    move-result v0

    return v0

    .line 4726
    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1, v3}, Lcom/android/server/wm/DisplayContent;->access$602(Lcom/android/server/wm/DisplayContent;I)I

    .line 4730
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4731
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    const/16 v3, 0x17

    if-ne v1, v3, :cond_4f

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 4732
    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    .line 4733
    :goto_50
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_5a

    if-eqz v1, :cond_59

    goto :goto_5a

    .line 4737
    :cond_59
    return v2

    .line 4734
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$500(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$DisplayContent$NonAppWindowContainers(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I
    .registers 5

    .line 4677
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean p1, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 4675
    invoke-interface {v0, v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean p2, p2, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 4677
    invoke-interface {v0, v1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p2

    if-ge p1, p2, :cond_1c

    .line 4678
    const/4 p1, -0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x1

    .line 4675
    :goto_1d
    return p1
.end method

.method prepareSurfaces()V
    .registers 4

    .line 4752
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 4753
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->prepareSurfaces()V

    .line 4754
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getBounds(Landroid/graphics/Rect;)V

    .line 4756
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4757
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->scheduleAnimation()V

    .line 4759
    :cond_1e
    return-void
.end method
