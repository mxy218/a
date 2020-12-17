.class Lflyme/support/v7/app/FlymeAlertController$PaddingRule;
.super Ljava/lang/Object;
.source "FlymeAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/FlymeAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddingRule"
.end annotation


# instance fields
.field private mask:I

.field private space1:I

.field private space2:I

.field private space3:I

.field private space4:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1346
    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->mask:I

    .line 1347
    iput p2, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->space1:I

    .line 1348
    iput p3, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->space2:I

    .line 1349
    iput p4, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->space3:I

    .line 1350
    iput p5, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->space4:I

    return-void
.end method

.method static synthetic access$300(Lflyme/support/v7/app/FlymeAlertController$PaddingRule;)I
    .registers 1

    .line 1337
    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->mask:I

    return p0
.end method

.method static synthetic access$400(Lflyme/support/v7/app/FlymeAlertController$PaddingRule;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 1337
    invoke-direct/range {p0 .. p5}, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->applyRule(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private applyRule(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 7

    if-eqz p2, :cond_f

    .line 1355
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->space1:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lflyme/support/v7/app/FlymeAlertController;->access$500(Landroid/content/Context;F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_f
    if-eqz p3, :cond_1e

    .line 1358
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->space2:I

    int-to-float p3, p3

    invoke-static {p1, p3}, Lflyme/support/v7/app/FlymeAlertController;->access$500(Landroid/content/Context;F)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1e
    if-eqz p4, :cond_2d

    .line 1361
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->space3:I

    int-to-float p3, p3

    invoke-static {p1, p3}, Lflyme/support/v7/app/FlymeAlertController;->access$500(Landroid/content/Context;F)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2d
    if-eqz p5, :cond_3c

    .line 1364
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p0, p0, Lflyme/support/v7/app/FlymeAlertController$PaddingRule;->space4:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Lflyme/support/v7/app/FlymeAlertController;->access$500(Landroid/content/Context;F)I

    move-result p0

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3c
    return-void
.end method
