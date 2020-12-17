.class public Lcom/android/systemui/screenshot/ScreenshotShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotShareReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenshotShareReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotShareReceiver;)Landroid/content/Context;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/ScreenshotShareReceiver;Ljava/lang/String;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->startSelectActivity(Ljava/lang/String;)V

    return-void
.end method

.method private startSelectActivity(Ljava/lang/String;)V
    .registers 5

    .line 73
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShareClick : startSelectActivity filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 77
    :try_start_1c
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mIntent:Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->TAG:Ljava/lang/String;

    const-string p1, "onShareClick : startSelectActivity success "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_41} :catch_42

    goto :goto_65

    :catch_42
    move-exception p0

    .line 82
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShareClick : startSelectActivity Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 85
    :cond_5e
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->TAG:Ljava/lang/String;

    const-string p1, "onShareClick : filePath is empty "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return-void
.end method

.method private startShare(Z)V
    .registers 7

    .line 37
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mIntent:Landroid/content/Intent;

    const-string v1, "file_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "temp_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareClick : orginPath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tempPath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3c

    .line 41
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotShareReceiver;Ljava/lang/String;)V

    const-string p0, ""

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/AsyncTaskUtil;->doAsync(Ljava/lang/String;Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;)V

    goto :goto_3f

    .line 68
    :cond_3c
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->startSelectActivity(Ljava/lang/String;)V

    :goto_3f
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 27
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mContext:Landroid/content/Context;

    const-string p1, "android.intent.extra.INTENT"

    .line 28
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mIntent:Landroid/content/Intent;

    const-string p1, "KEY_IS_CHECK_BOX_CHECKED"

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 31
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShareClick : intent222 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " isCheckBoxChecked "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->mContext:Landroid/content/Context;

    const-string v0, "screenshot_config"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "delete_after_shared"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->startShare(Z)V

    return-void
.end method
