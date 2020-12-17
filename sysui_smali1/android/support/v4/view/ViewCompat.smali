.class public Landroid/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewCompat$ScrollIndicators;,
        Landroid/support/v4/view/ViewCompat$NestedScrollType;,
        Landroid/support/v4/view/ViewCompat$ScrollAxis;,
        Landroid/support/v4/view/ViewCompat$FocusRelativeDirection;,
        Landroid/support/v4/view/ViewCompat$FocusRealDirection;,
        Landroid/support/v4/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field private static sAccessibilityDelegateCheckFailed:Z

.field private static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 453
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 465
    sput-object v0, Landroid/support/v4/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 469
    sput-boolean v0, Landroid/support/v4/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    return-void
.end method

.method public static animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1752
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 1753
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1755
    :cond_b
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-nez v0, :cond_1f

    .line 1757
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 1758
    sget-object v1, Landroid/support/v4/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 497
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method private static compatOffsetLeftAndRight(Landroid/view/View;I)V
    .registers 2

    .line 2994
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2995
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_19

    .line 2996
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2998
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 2999
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_19

    .line 3000
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method private static compatOffsetTopAndBottom(Landroid/view/View;I)V
    .registers 2

    .line 2946
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2947
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_19

    .line 2948
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2950
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 2951
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_19

    .line 2952
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    .line 2259
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    .line 2260
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    if-eq p0, p1, :cond_17

    .line 2262
    new-instance p1, Landroid/view/WindowInsets;

    invoke-direct {p1, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 2264
    :cond_17
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    :cond_1c
    return-object p1
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1150
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2355
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 2357
    :cond_b
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_16

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 2358
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2400
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    .line 2402
    :cond_b
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_16

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 2403
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 3159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 3160
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 3162
    :cond_b
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3163
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3165
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2036
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2037
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 474
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_b

    .line 475
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 477
    :cond_b
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1f

    .line 479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 480
    sget-object v1, Landroid/support/v4/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 482
    :cond_1f
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-object v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 2163
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1001
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getImportantForAutofill(Landroid/view/View;)I
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 731
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 732
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAutofill()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 1299
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1673
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1445
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result p0

    return p0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1718
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1719
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    return p0

    .line 1722
    :cond_b
    sget-boolean v0, Landroid/support/v4/view/ViewCompat;->sMinHeightFieldFetched:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 1724
    :try_start_10
    const-class v1, Landroid/view/View;

    const-string v2, "mMinHeight"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 1725
    sget-object v1, Landroid/support/v4/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1f} :catch_1f

    .line 1729
    :catch_1f
    sput-boolean v0, Landroid/support/v4/view/ViewCompat;->sMinHeightFieldFetched:Z

    .line 1732
    :cond_21
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    .line 1734
    :try_start_25
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30

    return p0

    :catch_30
    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1684
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1685
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p0

    return p0

    .line 1688
    :cond_b
    sget-boolean v0, Landroid/support/v4/view/ViewCompat;->sMinWidthFieldFetched:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 1690
    :try_start_10
    const-class v1, Landroid/view/View;

    const-string v2, "mMinWidth"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 1691
    sget-object v1, Landroid/support/v4/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1f} :catch_1f

    .line 1695
    :catch_1f
    sput-boolean v0, Landroid/support/v4/view/ViewCompat;->sMinWidthFieldFetched:Z

    .line 1698
    :cond_21
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    .line 1700
    :try_start_25
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30

    return p0

    :catch_30
    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p0

    return p0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1336
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1337
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object p0

    return-object p0

    .line 1339
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2093
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2094
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2096
    :cond_b
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 2099
    :cond_11
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1637
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1651
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 2107
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2885
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2886
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 5
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 857
    sget-boolean v0, Landroid/support/v4/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 860
    :cond_6
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    .line 862
    :try_start_b
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 863
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 864
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    goto :goto_1e

    .line 866
    :catchall_1b
    sput-boolean v2, Landroid/support/v4/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    return v1

    .line 871
    :cond_1e
    :goto_1e
    :try_start_1e
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_28

    if-eqz p0, :cond_27

    move v1, v2

    :cond_27
    return v1

    .line 873
    :catchall_28
    sput-boolean v2, Landroid/support/v4/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    return v1
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 2315
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 887
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3048
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 3049
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0

    .line 3051
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2854
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 2855
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result p0

    return p0

    .line 2857
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2478
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2479
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p0

    return p0

    .line 2481
    :cond_b
    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_16

    .line 2482
    check-cast p0, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p0}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2192
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 8
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2963
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 2964
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_6b

    :cond_a
    const/16 v1, 0x15

    if-lt v0, v1, :cond_68

    .line 2966
    invoke-static {}, Landroid/support/v4/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 2969
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2970
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_47

    .line 2971
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 2972
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2975
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2976
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2975
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2980
    :cond_47
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->compatOffsetLeftAndRight(Landroid/view/View;I)V

    if-eqz v1, :cond_6b

    .line 2984
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2985
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 2984
    invoke-virtual {v0, p1, v1, v3, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 2986
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_6b

    .line 2989
    :cond_68
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->compatOffsetLeftAndRight(Landroid/view/View;I)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 8
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2915
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 2916
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6b

    :cond_a
    const/16 v1, 0x15

    if-lt v0, v1, :cond_68

    .line 2918
    invoke-static {}, Landroid/support/v4/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 2921
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2922
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_47

    .line 2923
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 2924
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2927
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2928
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2927
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2932
    :cond_47
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->compatOffsetTopAndBottom(Landroid/view/View;I)V

    if-eqz v1, :cond_6b

    .line 2936
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2937
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 2936
    invoke-virtual {v0, p1, v1, v3, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 2938
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_6b

    .line 2941
    :cond_68
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->compatOffsetTopAndBottom(Landroid/view/View;I)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    .line 2234
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    .line 2235
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    if-eq p0, p1, :cond_17

    .line 2237
    new-instance p1, Landroid/view/WindowInsets;

    invoke-direct {p1, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 2239
    :cond_17
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    :cond_1c
    return-object p1
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 651
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1101
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 916
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 917
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_d

    .line 919
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_d
    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 7
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 938
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 939
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    goto :goto_d

    .line 941
    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    :goto_d
    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 956
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 957
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_11

    .line 959
    :cond_a
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_11
    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 978
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 979
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_12

    .line 981
    :cond_a
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_12
    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_a

    .line 2118
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_11

    :cond_a
    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 2120
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    :cond_11
    :goto_11
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1397
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    return p0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 2
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 677
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .registers 2
    .param p1  # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1809
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 2341
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 2343
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_d
    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_36

    .line 2371
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2373
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_3f

    .line 2376
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2377
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_20

    .line 2378
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    if-eqz p1, :cond_3f

    if-eqz v0, :cond_3f

    .line 2380
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2381
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2383
    :cond_32
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3f

    .line 2386
    :cond_36
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_3f

    .line 2387
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_36

    .line 2418
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2420
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_3f

    .line 2423
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2424
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_20

    .line 2425
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    if-eqz p1, :cond_3f

    if-eqz v0, :cond_3f

    .line 2427
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2428
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2430
    :cond_32
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3f

    .line 2433
    :cond_36
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_3f

    .line 2434
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2025
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 2026
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_9
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1027
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    .line 1028
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_15

    :cond_a
    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    const/4 p1, 0x2

    .line 1037
    :cond_12
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method public static setImportantForAutofill(Landroid/view/View;I)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 775
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 776
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    :cond_9
    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 1276
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    goto :goto_14

    .line 1280
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1282
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_14
    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1189
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    if-nez p1, :cond_d

    const/4 p1, 0x0

    .line 2203
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    .line 2207
    :cond_d
    new-instance v0, Landroid/support/v4/view/ViewCompat$1;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewCompat$1;-><init>(Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_15
    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1852
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .registers 5
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 3113
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    :cond_9
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2071
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 2072
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_1a

    .line 2074
    :cond_a
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_15

    .line 2075
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    .line 2077
    :cond_15
    sget-object v0, Landroid/support/v4/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1775
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1792
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 2520
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    goto :goto_13

    .line 2521
    :cond_a
    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_13

    .line 2522
    check-cast p0, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p0}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    :cond_13
    :goto_13
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .registers 3

    .line 3006
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v1, v0

    .line 3007
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3008
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
