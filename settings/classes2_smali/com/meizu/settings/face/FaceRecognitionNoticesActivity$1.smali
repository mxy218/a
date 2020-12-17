.class Lcom/meizu/settings/face/FaceRecognitionNoticesActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FaceRecognitionNoticesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_13

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 83
    iget-object p0, p0, Lcom/meizu/settings/face/FaceRecognitionNoticesActivity$1;->this$0:Lcom/meizu/settings/face/FaceRecognitionNoticesActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_13
    return-void
.end method
