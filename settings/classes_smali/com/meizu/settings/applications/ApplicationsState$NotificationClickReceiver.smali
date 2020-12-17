.class Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationClickReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ApplicationsState;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onReceive  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApplicationsState"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 173
    sput p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyCount:I

    .line 174
    sget-object p1, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyMessage:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void
.end method
