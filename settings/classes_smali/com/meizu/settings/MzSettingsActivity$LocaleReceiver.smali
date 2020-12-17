.class Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MzSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/MzSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/MzSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/MzSettingsActivity;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/MzSettingsActivity;Lcom/meizu/settings/MzSettingsActivity$1;)V
    .registers 3

    .line 464
    invoke-direct {p0, p1}, Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;-><init>(Lcom/meizu/settings/MzSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 467
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    invoke-static {p0}, Lcom/meizu/settings/MzSettingsActivity;->access$000(Lcom/meizu/settings/MzSettingsActivity;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->updateCategories()V

    return-void
.end method
