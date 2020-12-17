.class Lcom/meizu/settings/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/RestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/RestrictedSettingsFragment;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment$1;->this$0:Lcom/meizu/settings/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 81
    iget-object p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment$1;->this$0:Lcom/meizu/settings/RestrictedSettingsFragment;

    invoke-static {p1}, Lcom/meizu/settings/RestrictedSettingsFragment;->access$000(Lcom/meizu/settings/RestrictedSettingsFragment;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 82
    iget-object p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment$1;->this$0:Lcom/meizu/settings/RestrictedSettingsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meizu/settings/RestrictedSettingsFragment;->access$102(Lcom/meizu/settings/RestrictedSettingsFragment;Z)Z

    .line 83
    iget-object p0, p0, Lcom/meizu/settings/RestrictedSettingsFragment$1;->this$0:Lcom/meizu/settings/RestrictedSettingsFragment;

    invoke-static {p0, p2}, Lcom/meizu/settings/RestrictedSettingsFragment;->access$002(Lcom/meizu/settings/RestrictedSettingsFragment;Z)Z

    :cond_13
    return-void
.end method
