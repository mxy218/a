.class Lcom/android/systemui/pip/tv/PipNotification$4;
.super Landroid/content/BroadcastReceiver;
.source "PipNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipNotification;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$4;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 132
    invoke-static {}, Lcom/android/systemui/pip/tv/PipNotification;->access$700()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from the notification UI"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PipNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x539222f4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_44

    const v1, 0x47a4e3cb

    if-eq v0, v1, :cond_3a

    goto :goto_4d

    :cond_3a
    const-string v0, "PipNotification.menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    const/4 p2, 0x0

    goto :goto_4d

    :cond_44
    const-string v0, "PipNotification.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    move p2, v2

    :cond_4d
    :goto_4d
    if-eqz p2, :cond_5c

    if-eq p2, v2, :cond_52

    goto :goto_65

    .line 140
    :cond_52
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification$4;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipNotification;->access$400(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    goto :goto_65

    .line 137
    :cond_5c
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification$4;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipNotification;->access$400(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager;->showPictureInPictureMenu()V

    :goto_65
    return-void
.end method
