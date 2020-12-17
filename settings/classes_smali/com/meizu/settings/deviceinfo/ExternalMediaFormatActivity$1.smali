.class Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ExternalMediaFormatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$1;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "got action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ExternalMediaFormatActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.MEDIA_REMOVED"

    if-eq p1, p2, :cond_2a

    const-string p2, "android.intent.action.MEDIA_CHECKING"

    if-eq p1, p2, :cond_2a

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    if-eq p1, p2, :cond_2a

    const-string p2, "android.intent.action.MEDIA_SHARED"

    if-ne p1, p2, :cond_2f

    .line 68
    :cond_2a
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$1;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2f
    return-void
.end method
