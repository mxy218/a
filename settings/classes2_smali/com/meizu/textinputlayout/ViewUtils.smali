.class Lcom/meizu/textinputlayout/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImplLollipop;,
        Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImplBase;,
        Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImpl;
    }
.end annotation


# static fields
.field static final DEFAULT_ANIMATOR_CREATOR:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Creator;

.field private static final IMPL:Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/meizu/textinputlayout/ViewUtils$1;

    invoke-direct {v0}, Lcom/meizu/textinputlayout/ViewUtils$1;-><init>()V

    sput-object v0, Lcom/meizu/textinputlayout/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Creator;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_16

    .line 57
    new-instance v0, Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImplLollipop;

    invoke-direct {v0, v1}, Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImplLollipop;-><init>(Lcom/meizu/textinputlayout/ViewUtils$1;)V

    sput-object v0, Lcom/meizu/textinputlayout/ViewUtils;->IMPL:Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImpl;

    goto :goto_1d

    .line 59
    :cond_16
    new-instance v0, Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImplBase;

    invoke-direct {v0, v1}, Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImplBase;-><init>(Lcom/meizu/textinputlayout/ViewUtils$1;)V

    sput-object v0, Lcom/meizu/textinputlayout/ViewUtils;->IMPL:Lcom/meizu/textinputlayout/ViewUtils$ViewUtilsImpl;

    :goto_1d
    return-void
.end method

.method static createAnimator()Lcom/meizu/textinputlayout/ValueAnimatorCompat;
    .registers 1

    .line 68
    sget-object v0, Lcom/meizu/textinputlayout/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Creator;

    invoke-interface {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Creator;->createAnimator()Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    move-result-object v0

    return-object v0
.end method
