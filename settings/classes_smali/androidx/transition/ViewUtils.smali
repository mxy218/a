.class Landroidx/transition/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final CLIP_BOUNDS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPL:Landroidx/transition/ViewUtilsBase;

.field static final TRANSITION_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_d

    .line 42
    invoke-static {}, Landroidx/transition/ViewUtils;->createViewUtilsApi29()Landroidx/transition/ViewUtilsApi29;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    goto :goto_44

    :cond_d
    const/16 v1, 0x17

    if-lt v0, v1, :cond_19

    .line 44
    new-instance v0, Landroidx/transition/ViewUtilsApi23;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi23;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    goto :goto_44

    :cond_19
    const/16 v1, 0x16

    if-lt v0, v1, :cond_25

    .line 46
    new-instance v0, Landroidx/transition/ViewUtilsApi22;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi22;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    goto :goto_44

    :cond_25
    const/16 v1, 0x15

    if-lt v0, v1, :cond_31

    .line 48
    new-instance v0, Landroidx/transition/ViewUtilsApi21;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi21;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    goto :goto_44

    :cond_31
    const/16 v1, 0x13

    if-lt v0, v1, :cond_3d

    .line 50
    new-instance v0, Landroidx/transition/ViewUtilsApi19;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi19;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    goto :goto_44

    .line 52
    :cond_3d
    new-instance v0, Landroidx/transition/ViewUtilsBase;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsBase;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    .line 59
    :goto_44
    new-instance v0, Landroidx/transition/ViewUtils$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    .line 74
    new-instance v0, Landroidx/transition/ViewUtils$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ViewUtils$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    return-void
.end method

.method static clearNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroidx/transition/ViewUtilsBase;->clearNonTransitionAlpha(Landroid/view/View;)V

    return-void
.end method

.method private static createViewUtilsApi29()Landroidx/transition/ViewUtilsApi29;
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 208
    new-instance v0, Landroidx/transition/ViewUtilsApi29;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi29;-><init>()V

    return-object v0
.end method

.method static getOverlay(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 94
    new-instance v0, Landroidx/transition/ViewOverlayApi18;

    invoke-direct {v0, p0}, Landroidx/transition/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    return-object v0

    .line 96
    :cond_c
    invoke-static {p0}, Landroidx/transition/ViewOverlayApi14;->createFrom(Landroid/view/View;)Landroidx/transition/ViewOverlayApi14;

    move-result-object p0

    return-object p0
.end method

.method static getTransitionAlpha(Landroid/view/View;)F
    .registers 2
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroidx/transition/ViewUtilsBase;->getTransitionAlpha(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 104
    new-instance v0, Landroidx/transition/WindowIdApi18;

    invoke-direct {v0, p0}, Landroidx/transition/WindowIdApi18;-><init>(Landroid/view/View;)V

    return-object v0

    .line 106
    :cond_c
    new-instance v0, Landroidx/transition/WindowIdApi14;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/transition/WindowIdApi14;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static saveNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroidx/transition/ViewUtilsBase;->saveNonTransitionAlpha(Landroid/view/View;)V

    return-void
.end method

.method static setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 190
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsBase;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .registers 11
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/ViewUtilsBase;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method static setTransitionAlpha(Landroid/view/View;F)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsBase;->setTransitionAlpha(Landroid/view/View;F)V

    return-void
.end method

.method static setTransitionVisibility(Landroid/view/View;I)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsBase;->setTransitionVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 180
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
