.class public Lcom/android/systemui/screenshot/NotifyShareScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyShareScreenshotReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_SHARE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotifyShareScreenshotReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.systemui.action.SHARE_SCREENSHOT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_cd

    if-nez p2, :cond_2f

    const-string/jumbo p0, "share intent is empty"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    const/4 p0, 0x1

    const-string v0, "screenshot_showcheck"

    .line 30
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "screenshot_config"

    .line 31
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "delete_after_shared"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 32
    const-class v3, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startShareView : isCheck "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "file_path"

    .line 40
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    .line 41
    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "intent"

    .line 45
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 50
    new-instance v4, Lcom/meizu/share/ShareActivityStarter$Builder;

    invoke-direct {v4}, Lcom/meizu/share/ShareActivityStarter$Builder;-><init>()V

    sget v5, Lcom/android/systemui/R$string;->screenshot_share_title:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/share/ShareActivityStarter$Builder;->setTitle(Ljava/lang/String;)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v4

    .line 51
    invoke-virtual {v4, v0}, Lcom/meizu/share/ShareActivityStarter$Builder;->setShowCheckBox(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Lcom/meizu/share/ShareActivityStarter$Builder;->setCheckBoxChecked(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->screenshot_share_check_text:I

    .line 53
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/share/ShareActivityStarter$Builder;->setCheckBoxText(Ljava/lang/String;)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Lcom/meizu/share/ShareActivityStarter$Builder;->setForceKeepNightMode(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Lcom/meizu/share/ShareActivityStarter$Builder;->setHideStatusBarLandscape(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Lcom/meizu/share/ShareActivityStarter$Builder;->setHideStatusBarPortrait(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/share/ShareActivityStarter$Builder;->setIntentSender(Landroid/content/IntentSender;)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Lcom/meizu/share/ShareActivityStarter$Builder;->setDismissKeyguard(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lcom/meizu/share/ShareActivityStarter$Builder;->setShowWhenLocked(Z)Lcom/meizu/share/ShareActivityStarter$Builder;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/meizu/share/ShareActivityStarter$Builder;->build()Lcom/meizu/share/ShareActivityStarter;

    move-result-object p0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/meizu/share/ShareActivityStarter;->start(Landroid/content/Context;Landroid/content/Intent;)V

    const-string/jumbo p0, "statusbar"

    .line 64
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_cd
    return-void
.end method
