.class Lcom/meizu/settings/MzSettingsActivity$3;
.super Ljava/lang/Object;
.source "MzSettingsActivity.java"

# interfaces
.implements Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/MzSettingsActivity;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/MzSettingsActivity;

.field final synthetic val$shared:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/meizu/settings/MzSettingsActivity;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 304
    iput-object p1, p0, Lcom/meizu/settings/MzSettingsActivity$3;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    iput-object p2, p0, Lcom/meizu/settings/MzSettingsActivity$3;->val$shared:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionClick(Landroid/content/DialogInterface;ZZ)V
    .registers 4

    const/4 p1, 0x0

    if-nez p3, :cond_18

    .line 308
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity$3;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    invoke-static {p0}, Lcom/meizu/settings/MzSettingsActivity;->access$000(Lcom/meizu/settings/MzSettingsActivity;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 309
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isCTA()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 310
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_17
    return-void

    :cond_18
    if-nez p2, :cond_39

    .line 315
    iget-object p2, p0, Lcom/meizu/settings/MzSettingsActivity$3;->val$shared:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo p3, "show_permission_dialog"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity$3;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    invoke-static {p0}, Lcom/meizu/settings/MzSettingsActivity;->access$000(Lcom/meizu/settings/MzSettingsActivity;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->init(Landroid/app/Application;)V

    :cond_39
    return-void
.end method
