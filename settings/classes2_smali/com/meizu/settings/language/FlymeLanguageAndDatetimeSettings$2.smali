.class Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "FlymeLanguageAndDatetimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;)V
    .registers 2

    .line 680
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$2;->this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 683
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$2;->this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 685
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$2;->this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_d
    return-void
.end method
