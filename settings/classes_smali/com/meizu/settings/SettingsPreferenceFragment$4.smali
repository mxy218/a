.class Lcom/meizu/settings/SettingsPreferenceFragment$4;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/SettingsPreferenceFragment;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$4;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 340
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$4;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-static {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$500(Lcom/meizu/settings/SettingsPreferenceFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->access$600(Lcom/meizu/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    return-void
.end method