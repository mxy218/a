.class public Lcom/meizu/settings/FlymeSettingsBaseActivity;
.super Lflyme/support/v7/app/AppCompatActivity;
.source "FlymeSettingsBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 20
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 22
    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->setNavigationBarDarIcon(Landroid/app/Activity;Z)V

    return-void
.end method

.method protected setHasWhiteNavigationbar(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarColor(Landroid/view/Window;I)V

    :cond_a
    return-void
.end method
