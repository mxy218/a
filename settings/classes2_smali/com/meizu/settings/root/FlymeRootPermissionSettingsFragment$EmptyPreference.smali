.class Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$EmptyPreference;
.super Landroid/preference/Preference;
.source "FlymeRootPermissionSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmptyPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;Landroid/content/Context;)V
    .registers 3

    .line 471
    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$EmptyPreference;->this$0:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;

    .line 472
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d0290

    .line 473
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method
