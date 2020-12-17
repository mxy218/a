.class public abstract Landroid/support/v4/widget/ExploreByTouchHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$CollectionAdapter<",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field private mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 333
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$1;

    invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    .line 345
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$2;

    invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$2;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 107
    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    const/high16 v0, -0x80000000

    .line 119
    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 122
    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 125
    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-eqz p1, :cond_45

    .line 138
    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 p0, 0x1

    .line 145
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 146
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_44

    .line 148
    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_44
    return-void

    .line 135
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Landroid/support/v4/widget/ExploreByTouchHelper;)I
    .registers 1

    .line 89
    iget p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return p0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/ExploreByTouchHelper;)I
    .registers 1

    .line 89
    iget p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return p0
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3

    .line 996
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_14

    const/high16 v0, -0x80000000

    .line 997
    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 998
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 999
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .registers 4

    .line 479
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 639
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    return-object p0

    .line 637
    :cond_8
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    return-object p0
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6

    .line 675
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 676
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 679
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 681
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 682
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 683
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 684
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 687
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 690
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4a

    goto :goto_52

    .line 691
    :cond_4a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 696
    :cond_52
    :goto_52
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {p2, v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 698
    iget-object p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 2

    .line 651
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 652
    iget-object p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 789
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    const/4 v1, 0x1

    .line 792
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 793
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    const-string v2, "android.view.View"

    .line 794
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 795
    sget-object v2, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 796
    sget-object v2, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 797
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 800
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 803
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_37

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2f

    goto :goto_37

    .line 804
    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 808
    :cond_37
    :goto_37
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 809
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_149

    .line 814
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_141

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_139

    .line 825
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 829
    iget v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/4 v4, 0x0

    if-ne v2, p1, :cond_71

    .line 830
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 831
    invoke-virtual {v0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_79

    .line 833
    :cond_71
    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    const/16 v2, 0x40

    .line 834
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 838
    :goto_79
    iget v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v2, p1, :cond_7f

    move p1, v1

    goto :goto_80

    :cond_7f
    move p1, v4

    :goto_80
    if-eqz p1, :cond_87

    const/4 v2, 0x2

    .line 840
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_90

    .line 841
    :cond_87
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 842
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 844
    :cond_90
    :goto_90
    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 846
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 850
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 851
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    .line 852
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 855
    iget p1, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_de

    .line 856
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 858
    iget v3, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    :goto_b9
    if-eq v3, v2, :cond_db

    .line 862
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p1, v5, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    .line 863
    sget-object v5, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 865
    invoke-virtual {p0, v3, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 866
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 867
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 860
    iget v3, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    goto :goto_b9

    .line 869
    :cond_db
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 872
    :cond_de
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v3, v3, v1

    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 873
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v3, v5

    .line 872
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 876
    :cond_f9
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_138

    .line 877
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 878
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 877
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 879
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_138

    .line 881
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 883
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_138

    .line 884
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    :cond_138
    return-object v0

    .line 820
    :cond_139
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 816
    :cond_141
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 810
    :cond_149
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 732
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 733
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 736
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 737
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 739
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_28

    .line 740
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_20

    goto :goto_28

    .line 741
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Views cannot have both real and virtual children"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    :goto_28
    const/4 v2, 0x0

    .line 744
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2d
    if-ge v2, v3, :cond_41

    .line 745
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_41
    return-object v0
.end method

.method private getAllNodes()Landroid/support/v4/util/SparseArrayCompat;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 428
    new-instance v1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    const/4 v2, 0x0

    .line 429
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 430
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 431
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v1
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .registers 3

    .line 326
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    .line 327
    invoke-virtual {p0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2e

    const/16 v1, 0x21

    if-eq p1, v1, :cond_2a

    const/16 v1, 0x42

    const/4 v3, -0x1

    if-eq p1, v1, :cond_26

    const/16 p0, 0x82

    if-ne p1, p0, :cond_1e

    .line 462
    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    .line 465
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 459
    :cond_26
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    .line 456
    :cond_2a
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    .line 453
    :cond_2e
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_31
    return-object p2
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    .line 930
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_38

    .line 935
    :cond_a
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_13

    return v0

    .line 940
    :cond_13
    iget-object p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 941
    :goto_19
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_35

    .line 942
    check-cast p0, Landroid/view/View;

    .line 943
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-lez p1, :cond_34

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_34

    .line 946
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_19

    :cond_34
    :goto_34
    return v0

    :cond_35
    if-eqz p0, :cond_38

    const/4 v0, 0x1

    :cond_38
    :goto_38
    return v0
.end method

.method private static keyToDirection(I)I
    .registers 2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_15

    const/16 v0, 0x15

    if-eq p0, v0, :cond_12

    const/16 v0, 0x16

    if-eq p0, v0, :cond_f

    const/16 p0, 0x82

    return p0

    :cond_f
    const/16 p0, 0x42

    return p0

    :cond_12
    const/16 p0, 0x11

    return p0

    :cond_15
    const/16 p0, 0x21

    return p0
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .registers 12
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 370
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAllNodes()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v7

    .line 372
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v8, -0x80000000

    if-ne v0, v8, :cond_c

    const/4 v0, 0x0

    goto :goto_12

    .line 374
    :cond_c
    invoke-virtual {v7, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    :goto_12
    move-object v3, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_57

    const/4 v1, 0x2

    if-eq p1, v1, :cond_57

    const/16 v0, 0x11

    if-eq p1, v0, :cond_32

    const/16 v0, 0x21

    if-eq p1, v0, :cond_32

    const/16 v0, 0x42

    if-eq p1, v0, :cond_32

    const/16 v0, 0x82

    if-ne p1, v0, :cond_2a

    goto :goto_32

    .line 408
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_32
    :goto_32
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 391
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, v8, :cond_3f

    .line 393
    invoke-direct {p0, v0, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    goto :goto_4a

    :cond_3f
    if-eqz p2, :cond_45

    .line 396
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4a

    .line 402
    :cond_45
    iget-object p2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {p2, p1, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 404
    :goto_4a
    sget-object v1, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v2, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    move-object v0, v7

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_70

    .line 380
    :cond_57
    iget-object p2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 381
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p2

    if-ne p2, v0, :cond_61

    move v5, v0

    goto :goto_63

    :cond_61
    const/4 p2, 0x0

    move v5, p2

    .line 382
    :goto_63
    sget-object v1, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v2, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    const/4 v6, 0x0

    move-object v0, v7

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    :goto_70
    if-nez p1, :cond_73

    goto :goto_7b

    .line 417
    :cond_73
    invoke-virtual {v7, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    .line 418
    invoke-virtual {v7, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v8

    .line 421
    :goto_7b
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result p0

    return p0
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1d

    const/16 v0, 0x40

    if-eq p2, v0, :cond_18

    const/16 v0, 0x80

    if-eq p2, v0, :cond_13

    .line 916
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 910
    :cond_13
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result p0

    return p0

    .line 908
    :cond_18
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result p0

    return p0

    .line 914
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result p0

    return p0

    .line 912
    :cond_22
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result p0

    return p0
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 3

    .line 902
    iget-object p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {p0, p1, p2}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4

    .line 966
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2c

    .line 970
    :cond_12
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2c

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1d

    .line 973
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    .line 977
    :cond_1d
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 980
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    .line 981
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 p0, 0x1

    return p0

    :cond_2c
    :goto_2c
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4

    .line 610
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    return-void

    .line 615
    :cond_5
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    const/16 v1, 0x80

    .line 619
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/16 p1, 0x100

    .line 620
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .registers 4

    .line 1044
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_6

    return v1

    :cond_6
    const/high16 v0, -0x80000000

    .line 1049
    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1051
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    .line 1052
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1  # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 180
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_40

    .line 184
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_2e

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2e

    const/16 p1, 0xa

    if-eq v0, p1, :cond_25

    return v1

    .line 191
    :cond_25
    iget p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-eq p1, v4, :cond_2d

    .line 192
    invoke-direct {p0, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    return v3

    :cond_2d
    return v1

    .line 187
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result p1

    .line 188
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    if-eq p1, v4, :cond_40

    move v1, v3

    :cond_40
    :goto_40
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1  # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 216
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5e

    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_48

    const/16 v3, 0x42

    if-eq v0, v3, :cond_37

    packed-switch v0, :pswitch_data_60

    goto :goto_5e

    .line 224
    :pswitch_19  #0x13, 0x14, 0x15, 0x16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 225
    invoke-static {v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v0

    .line 226
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    move v3, v1

    :goto_29
    if-ge v1, p1, :cond_35

    .line 228
    invoke-direct {p0, v0, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_35

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_29

    :cond_35
    move v1, v3

    goto :goto_5e

    .line 238
    :cond_37
    :pswitch_37  #0x17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 239
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_5e

    .line 240
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    move v1, v2

    goto :goto_5e

    .line 246
    :cond_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 p1, 0x2

    .line 247
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_5e

    .line 248
    :cond_54
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 249
    invoke-direct {p0, v2, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_5e
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x13
        :pswitch_19  #00000013
        :pswitch_19  #00000014
        :pswitch_19  #00000015
        :pswitch_19  #00000016
        :pswitch_37  #00000017
    .end packed-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .registers 1

    .line 288
    iget p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return p0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 2

    .line 155
    iget-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez p1, :cond_b

    .line 156
    new-instance p1, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V

    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 158
    :cond_b
    iget-object p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object p0
.end method

.method public getFocusedVirtualView()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    invoke-virtual {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result p0

    return p0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .registers 1

    .line 296
    iget p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return p0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 524
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(I)V
    .registers 3

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(II)V
    .registers 5

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_22

    .line 564
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 565
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v1, 0x800

    .line 568
    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 570
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 571
    iget-object p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, p0, p1}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_22
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 718
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0

    .line 721
    :cond_8
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 273
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 274
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    :cond_9
    if-eqz p1, :cond_e

    .line 278
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    :cond_e
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 658
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 661
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    .line 753
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 756
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1  # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .param p2  # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2
    .param p1  # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .param p2  # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .registers 3

    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 897
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 895
    :cond_8
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .registers 4

    .line 1014
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 1019
    :cond_12
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_17

    return v1

    :cond_17
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1e

    .line 1025
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 1028
    :cond_1e
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/4 v0, 0x1

    .line 1030
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v1, 0x8

    .line 1031
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_22

    .line 503
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_22

    .line 507
    :cond_e
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_17

    return v0

    .line 512
    :cond_17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 513
    iget-object p0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, p0, p1}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    return v0
.end method
