.class Lcom/meizu/settings/MzSettingsActivity$2;
.super Landroid/database/ContentObserver;
.source "MzSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/MzSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/MzSettingsActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/MzSettingsActivity;Landroid/os/Handler;)V
    .registers 3

    .line 268
    iput-object p1, p0, Lcom/meizu/settings/MzSettingsActivity$2;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 272
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "mz_current_power_mode"

    .line 274
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 275
    iget-object p1, p0, Lcom/meizu/settings/MzSettingsActivity$2;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    invoke-static {p1}, Lcom/meizu/settings/MzSettingsActivity;->access$000(Lcom/meizu/settings/MzSettingsActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/MzSettingsActivity;->initFilterDashboardTileList(Landroid/content/Context;)V

    .line 276
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity$2;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    invoke-static {p0}, Lcom/meizu/settings/MzSettingsActivity;->access$000(Lcom/meizu/settings/MzSettingsActivity;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->updateCategories()V

    :cond_23
    return-void
.end method
