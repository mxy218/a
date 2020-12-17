.class final Lcom/meizu/textinputlayout/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lcom/meizu/textinputlayout/ValueAnimatorCompat$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/textinputlayout/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnimator()Lcom/meizu/textinputlayout/ValueAnimatorCompat;
    .registers 3

    .line 28
    new-instance p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_e

    new-instance v0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplHoneycombMr1;

    invoke-direct {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplHoneycombMr1;-><init>()V

    goto :goto_13

    :cond_e
    new-instance v0, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;

    invoke-direct {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompatImplEclairMr1;-><init>()V

    :goto_13
    invoke-direct {p0, v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;-><init>(Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;)V

    return-object p0
.end method
