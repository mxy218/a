.class Lcom/meizu/settings/SettingsPreferenceFragment$1;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/SettingsPreferenceFragment;
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

    .line 96
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$1;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$1;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onInvalidated()V
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$1;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method
