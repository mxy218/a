.class Lcom/meizu/settings/SettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;


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

    .line 122
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment$2;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment$2;->this$0:Lcom/meizu/settings/SettingsPreferenceFragment;

    if-eqz p0, :cond_9

    .line 127
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onBackPressed()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
