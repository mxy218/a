.class public Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;
.super Landroid/preference/ListPreference;
.source "FlymeRootPermissionSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppItemPreference"
.end annotation


# instance fields
.field mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;Landroid/content/Context;)V
    .registers 3

    .line 429
    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;->this$0:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;

    .line 430
    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 431
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f0d02d6

    .line 440
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    const v0, 0x7f0d028f

    .line 441
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4

    .line 446
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const v0, 0x1020006

    .line 451
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_28

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;->this$0:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;

    iget-object v1, v0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAppIconFetcher:Lcom/meizu/settings/utils/cache/AppIconFetcher;

    if-eqz v1, :cond_28

    .line 455
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;->mPkgName:Ljava/lang/String;

    iget-object v0, v0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 456
    invoke-virtual {v1, p0, p1, v0}, Lcom/meizu/settings/utils/cache/ImageWorker;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_28
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .registers 2

    .line 466
    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;->mPkgName:Ljava/lang/String;

    return-void
.end method
