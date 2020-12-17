.class public Lcom/meizu/settings/utils/StatusbarColorUtils;
.super Ljava/lang/Object;
.source "StatusbarColorUtils.java"


# direct methods
.method public static setStatusBarDarkIcon(Landroid/app/Activity;Z)V
    .registers 3

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_11

    or-int/lit16 p1, v0, 0x2000

    goto :goto_13

    :cond_11
    and-int/lit16 p1, v0, -0x2001

    :goto_13
    if-eq p1, v0, :cond_18

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_18
    return-void
.end method
